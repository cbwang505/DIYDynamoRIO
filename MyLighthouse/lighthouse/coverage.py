import logging
import weakref
import collections

import lighthouse.core
from lighthouse.util import *
from lighthouse.palette import compute_color_on_gradiant
from lighthouse.metadata import DatabaseMetadata
from lighthouse.util.disassembler import disassembler
logger = logging.getLogger("Lighthouse.Coverage")

#------------------------------------------------------------------------------
# Coverage Mapping
#------------------------------------------------------------------------------
#
#    When raw runtime data (eg, coverage or trace data) is passed into the
#    director, it is stored internally in DatabaseCoverage objects. A
#    DatabaseCoverage object (as defined below) roughly equates to a single
#    loaded coverage file.
#
#    Besides holding loaded coverage data, the DatabaseCoverage objects are
#    also responsible for mapping the coverage data to the open database using
#    the lifted metadata described in metadata.py.
#
#    The 'mapping' objects detailed in this file exist only as a thin layer on
#    top of the lifted database metadata.
#
#    As mapping objects retain the raw runtime data internally, we are
#    able to rebuild mappings should the database structure (and its metadata)
#    get updated or refreshed by the user.
#

BADADDR = 0xFFFFFFFFFFFFFFFF

#------------------------------------------------------------------------------
# Database Coverage
#------------------------------------------------------------------------------

class DatabaseCoverage(object):
    """
    Database level coverage mapping.
    """

    def __init__(self, palette, name="", filepath=None, data=None,orgdata=None):

        # color palette
        self.palette = palette

        # the name of the DatabaseCoverage object
        self.name = name

        # the filepath this coverage data was sourced from
        self.filepath = filepath

        self.orgdata= orgdata
        #
        # this is the coverage mapping's reference to the underlying database
        # metadata. it will use this for all its mapping operations.
        #
        # here we simply populate the DatabaseCoverage object with a stub
        # DatabaseMetadata object, but at runtime we will inject a fully
        # collected DatabaseMetadata object as maintained by the director.
        #

        self._metadata = DatabaseMetadata()

        #
        # the address hitmap is a dictionary that effectively holds the lowest
        # level representation of the original coverage data loaded from disk.
        #
        # as the name implies, the hitmap will track the number of times a
        # given address appeared in the original coverage data.
        #
        #  Eg:
        #      hitmap =
        #      {
        #          0x8040100: 1,
        #          0x8040102: 1,
        #          0x8040105: 3,
        #          0x8040108: 3,  # 0x8040108 was executed 3 times...
        #          0x804010a: 3,
        #          0x804010f: 1,
        #          ...
        #      }
        #
        # the hitmap gives us an interesting degree of flexibility with regard
        # to what data sources we can load coverage data from, and how we
        # choose to consume it (eg, visualize coverage, heatmaps, ...)
        #
        # using hitmap.keys(), we effectively have a coverage bitmap of all
        # the addresses executed in the coverage log
        #

        self._hitmap = build_hitmap(data)

        #
        # the coverage hash is a simple hash of the coverage mask (hitmap keys)
        #
        # it is primarily used by the director as a means of quickly comparing
        # two database coverage objects against each other, and speculating on
        # the output of logical/arithmetic operations of their coverage data.
        #
        # this hash will need to be recomputed via _update_coverage_hash()
        # anytime new coverage data is introduced to this object, or when the
        # hitmap is otherwise modified internally.
        #
        # this is necessary because we cache the coverage hash. computing the
        # hash on demand is expensive, and it really shouldn't changne often.
        #
        # see the usage of 'coverage_hash' in director.py for more info
        #

        self.coverage_hash = 0
        self._update_coverage_hash()

        #
        # unmapped data is a list of addresses that we have coverage for, but
        # could not map to any defined function in the database.
        #
        # a shortcoming of lighthouse (as recently as v0.8) is that it does
        # *not* compute statistics for, or paint, loaded coverage that falls
        # outside of defined functions.
        #
        # under normal circumstances, one can just define a function at the
        # area of interest (assuming it was a disassembler issue) and refresh
        # the lighthouse metadata to 'map' the missing coverage.
        #
        # in cases of obfuscation, abnormal control flow, or self modifying
        # code, lighthouse will probably not perform well. but to be fair,
        # lighthouse was designed for displaying coverage more-so than hit
        # tracing or trace exploration.
        #
        # initially, all loaded coverage data is marked as unmapped
        #

        self._unmapped_data = set(self._hitmap.keys())
        self._unmapped_data.add(BADADDR)
        self._misaligned_data = set()

        #
        # at runtime, the map_coverage() member function of this class is
        # responsible for taking the unmapped_data mapping it on top of the
        # lifted database metadata (self._metadata).
        #
        # the process of mapping the raw coverage data will yield NodeCoverage
        # and FunctionCoverage objects. these are the buckets that the unmapped
        # coverage data is poured into during the mappinng process.
        #
        # NodeCoverage objects represent coverage at the node (basic block)
        # level and are owned by a respective FunctionCoverage object.
        #
        # FunctionCoverage represent coverage at the function level, grouping
        # children NodeCoverage objects and providing higher level statistics.
        #
        # self.nodes: address --> NodeCoverage
        # self.functions: address --> FunctionCoverage
        #

        self.nodes = {}
        self.functions = {}
        self.instruction_percent = 0.0
        self.all_Excute_Function_list=[]
        #
        # we instantiate a single weakref of ourself (the DatbaseCoverage
        # object) such that we can distribute it to the children we create
        # without having to repeatedly instantiate new ones.
        #

        self._weak_self = weakref.proxy(self)

    #--------------------------------------------------------------------------
    # Properties
    #--------------------------------------------------------------------------

    @property
    def data(self):
        """
        Return the backing coverage data (a hitmap).
        """
        return self._hitmap

    @property
    def coverage(self):
        """
        Return the instruction-level coverage bitmap/mask.
        """
        return self._hitmap.viewkeys()

    @property
    def suspicious(self):
        """
        Return a bool indicating if the coverage seems badly mapped.
        """
        bad = 0
        total = len(self.nodes)
        if total ==0:
            return False
        #
        # count the number of nodes (basic blocks) that allegedly were executed
        # (they have coverage data) but don't actually have their first
        # instruction logged as executed.
        #
        # this is considered 'suspicious' and should be a red flag that the
        # provided coverage data is malformed, or for a different binary
        #

        for adddress, node_coverage in self.nodes.iteritems():
            if adddress in node_coverage.executed_instructions:
                continue
            bad += 1

        # compute a percentage of the 'bad nodes'
        percent = (bad/float(total))*100
        logger.debug("SUSPICIOUS: %5.2f%% (%u/%u)" % (percent, bad, total))

        #
        # if the percentage of 'bad' coverage nodes is too high, we consider
        # this database coverage as 'suspicious' or 'badly mapped'
        #
        # this number (2%) may need to be tuned. really any non-zero figure
        # is strange, but we will give some wiggle room for DBI or
        # disassembler fudginess.
        #

        return percent > 2.0

    #--------------------------------------------------------------------------
    # Metadata Population
    #--------------------------------------------------------------------------

    def update_metadata(self, metadata, delta=None):
        """
        Install a new databasee metadata object.
        """
        self._metadata = weakref.proxy(metadata)
        self.unmap_all()
    # --------------------------------------------------------------------------
    # Public
    # --------------------------------------------------------------------------

    def hasParentFunction(self):
        pass
    # --------------------------------------------------------------------------
    # Public
    # --------------------------------------------------------------------------

    def getRootFunction(self):
        return [funcov for funcov in self.all_Excute_Function_list if funcov.parent_coverage is None]


    # --------------------------------------------------------------------------
    # Public
    # --------------------------------------------------------------------------

    def getFuncCaller(self,per_thread_Excute_Function_list,caller_addr,bb_idx,thread_id,mid):

        for funcov in  reversed(per_thread_Excute_Function_list):
            if funcov.bb_idx<bb_idx and funcov.thread_id==thread_id and funcov.to_mod==mid and funcov.to_address<= caller_addr:
                return funcov.parent_coverage
        return None

    # --------------------------------------------------------------------------
    # Public
    # --------------------------------------------------------------------------

    def getReturnCaller(self,per_thread_Excute_Function_list,ret_addr,bb_idx,thread_id,ret_mid):

        for funcov in reversed(per_thread_Excute_Function_list):
            if funcov.bb_idx < bb_idx and funcov.thread_id == thread_id and funcov.ret_address==ret_addr and funcov.from_mod==ret_mid:
                funcov.has_return = True
                return funcov.parent_coverage
        return None

    
    # --------------------------------------------------------------------------
    # Public
    # --------------------------------------------------------------------------
    def check_has_self_sub_Excute_Function_list_cache(self,that, per_thread_Excute_Function_list):
        dellist = []
        for idx, funcov in enumerate( per_thread_Excute_Function_list):
            if funcov.bb_idx == that.bb_idx:
                dellist.append(idx)
        if len(dellist) > 0:
            for idx in dellist:
                del per_thread_Excute_Function_list[idx]
        for funcov in per_thread_Excute_Function_list:
            self.check_has_self_sub_Excute_Function_list_cache(that,funcov.sub_func_coverage)
    # --------------------------------------------------------------------------
    # Public
    # --------------------------------------------------------------------------
    def mark_sub_Excute_Function_list_cache(self, per_thread_Excute_Function_list):
        for funcov in per_thread_Excute_Function_list:
            funcov.has_return = True
            self.check_has_self_sub_Excute_Function_list_cache(funcov,funcov.sub_func_coverage)
            self.mark_sub_Excute_Function_list_cache(funcov.sub_func_coverage)
    # --------------------------------------------------------------------------
    # Public
    # --------------------------------------------------------------------------
    def shrink_Excute_Function_list_cache(self, per_thread_Excute_Function_list):
        slice_idx = 0
        if len(per_thread_Excute_Function_list) > 20000:
            for idx,funcov in enumerate(per_thread_Excute_Function_list):
                if len(per_thread_Excute_Function_list)-idx < 10000 and funcov.trace_depth == 0:
                    slice_idx = idx
                    break
        if slice_idx > 0:
            per_thread_Excute_Function_list = per_thread_Excute_Function_list[slice_idx:]
        for funcov in per_thread_Excute_Function_list:
            if funcov.has_return is True:
                self.check_has_self_sub_Excute_Function_list_cache(funcov, funcov.sub_func_coverage)
                self.mark_sub_Excute_Function_list_cache(funcov.sub_func_coverage)

        return filter(lambda x:x.has_return == False, per_thread_Excute_Function_list)
    # --------------------------------------------------------------------------
    # Public
    # --------------------------------------------------------------------------

    def buidExecuteTrace(self):
        dic_bb = {}
        all_len=len(self.orgdata.basic_blocks)
        for  bb in self.orgdata.basic_blocks:
            if not dic_bb.has_key(bb.thread_id):
                dic_bb[bb.thread_id]=[]
            dic_bb[bb.thread_id].append(bb)
        disassembler.replace_wait_box("Building execute trace metadata...")
        len_idx=0
        for ke,ve in   dic_bb.iteritems():
            per_thread_Excute_Function_list=[]
            per_thread_Excute_Function_list_cache=[]
            bb_start = 0
            bb_end = 0
            cur_func = None
            check_bb = False
            if len(ve)>3000000:
                for bb_idx, bb in enumerate(ve):
                    if bb_idx % 200000 ==0:
                       per_thread_Excute_Function_list_cache=self.shrink_Excute_Function_list_cache(per_thread_Excute_Function_list_cache)
                    len_idx = len_idx + 1
                    if len_idx % 30000 == 0:
                        disassembler.replace_wait_box("Building execute trace metadata %u/%u" % (len_idx, all_len))
                    if bb.call_type == lighthouse.core.BASIC_BLOCK:
                        bb_start = bb.start
                        bb_end = bb.start+bb.size
                        check_bb = True
                    if bb.call_type == lighthouse.core.FUNC_DIRECT_CALL or bb.call_type == lighthouse.core.FUNC_INDIRECT_CALL:
                        if cur_func is not None and ((check_bb is True and bb.start <= bb_end and bb.start >= bb_start) or (
                                check_bb is False and bb.start >= bb_end)):
                            sub_cov = ExecuteFunctionCoverage(cur_func, bb_idx, bb.thread_id, bb.mod_id, bb.start,
                                                              bb.mod_id_to, bb.to, bb.ret)
                            cur_func = sub_cov
                        elif cur_func is None:
                            root_cov = ExecuteFunctionCoverage(None, bb_idx, bb.thread_id, bb.mod_id, bb.start,
                                                               bb.mod_id_to, bb.to, bb.ret)
                            cur_func = root_cov
                        else:
                                root_cov = ExecuteFunctionCoverage(None, bb_idx, bb.thread_id, bb.mod_id, bb.start,
                                                                  bb.mod_id_to, bb.to, bb.ret)
                                cur_func = root_cov

                        if cur_func is not None and cur_func.trace_depth < 100:
                            per_thread_Excute_Function_list.append(cur_func)
                            per_thread_Excute_Function_list_cache.append(cur_func)
                        bb_start = bb.start
                        bb_end =bb.to
                        check_bb=False
                    if bb.call_type == lighthouse.core.FUNC_RETURN:
                        ret_cov = self.getReturnCaller(per_thread_Excute_Function_list_cache,bb.to, bb_idx,bb.thread_id,bb.mod_id_to)
                        if ret_cov is not None:
                            cur_func =ret_cov
                        else:
                            cur_func=None
                        bb_start = bb.start
                        bb_end = bb.to
                        check_bb = False
            else:
                for bb_idx, bb in enumerate(ve):
                    len_idx = len_idx + 1
                    if len_idx % 30000 == 0:
                        disassembler.replace_wait_box("Building execute trace metadata %u/%u" % (len_idx, all_len))
                    if bb.call_type == lighthouse.core.BASIC_BLOCK:
                        bb_start = bb.start
                        bb_end = bb.start + bb.size
                        check_bb = True
                    if bb.call_type == lighthouse.core.FUNC_DIRECT_CALL or bb.call_type == lighthouse.core.FUNC_INDIRECT_CALL:
                        if cur_func is not None and (
                                (check_bb is True and bb.start <= bb_end and bb.start >= bb_start) or (
                                check_bb is False and bb.start >= bb_end)):
                            sub_cov = ExecuteFunctionCoverage(cur_func, bb_idx, bb.thread_id, bb.mod_id, bb.start,
                                                              bb.mod_id_to, bb.to, bb.ret)
                            cur_func = sub_cov
                        elif cur_func is None:
                            root_cov = ExecuteFunctionCoverage(None, bb_idx, bb.thread_id, bb.mod_id, bb.start,
                                                               bb.mod_id_to, bb.to, bb.ret)
                            cur_func = root_cov
                        else:
                            tmp_func = self.getFuncCaller(per_thread_Excute_Function_list, bb.start, bb_idx,
                                                          bb.thread_id, bb.mod_id)
                            if tmp_func is not None:
                                sub_cov = ExecuteFunctionCoverage(tmp_func, bb_idx, bb.thread_id, bb.mod_id, bb.start,
                                                                  bb.mod_id_to, bb.to, bb.ret)
                                cur_func = sub_cov
                            else:
                                root_cov = ExecuteFunctionCoverage(None, bb_idx, bb.thread_id, bb.mod_id, bb.start,
                                                                   bb.mod_id_to, bb.to, bb.ret)
                                cur_func = root_cov

                        if cur_func is not None:
                            per_thread_Excute_Function_list.append(cur_func)
                        bb_start = bb.start
                        bb_end = bb.to
                        check_bb = False
                    if bb.call_type == lighthouse.core.FUNC_RETURN:
                        ret_cov = self.getReturnCaller(per_thread_Excute_Function_list, bb.to, bb_idx, bb.thread_id,
                                                       bb.mod_id_to)
                        if ret_cov is not None:
                            cur_func = ret_cov
                        else:
                            cur_func = None
                        bb_start = bb.start
                        bb_end = bb.to
                        check_bb = False
            self.all_Excute_Function_list.extend(per_thread_Excute_Function_list)


    def refresh(self):
        """
        Refresh the mapping of our coverage data to the database metadata.
        """

        # rebuild our coverage mapping
        dirty_nodes, dirty_functions = self._map_coverage()

        # bake our coverage map
        self._finalize(dirty_nodes, dirty_functions)

        # update the coverage hash incase the hitmap changed
        self._update_coverage_hash()

        # dump the unmappable coverage data
        #self.dump_unmapped()

    def _finalize(self, dirty_nodes, dirty_functions):
        """
        Finalize the DatabaseCoverage statistics / data for use.
        """
        self._finalize_nodes(dirty_nodes)
        self._finalize_functions(dirty_functions)
        self._finalize_instruction_percent()

    def _finalize_nodes(self, dirty_nodes):
        """
        Finalize the NodeCoverage objects statistics / data for use.
        """
        for node_coverage in dirty_nodes.itervalues():
            node_coverage.finalize()

    def _finalize_functions(self, dirty_functions):
        """
        Finalize the FunctionCoverage objects statistics / data for use.
        """
        for function_coverage in dirty_functions.itervalues():
            function_coverage.finalize()

    def _finalize_instruction_percent(self):
        """
        Finalize the DatabaseCoverage's coverage % by instructions executed.
        """

        # sum all the instructions in the database metadata
        total = sum(f.instruction_count for f in self._metadata.functions.itervalues())
        if not total:
            self.instruction_percent = 0.0
            return

        # sum the unique instructions executed across all functions
        executed = sum(f.instructions_executed for f in self.functions.itervalues())

        # save the computed percentage of database instructions executed (0 to 1.0)
        self.instruction_percent = float(executed) / total

    #--------------------------------------------------------------------------
    # Data Operations
    #--------------------------------------------------------------------------

    def add_data(self, data, update=True):
        """
        Add an existing instruction hitmap to the coverage mapping.
        """

        # add the given runtime data to our data source
        for address, hit_count in data.iteritems():
            self._hitmap[address] += hit_count

        # do not update other internal structures if requested
        if not update:
            return

        # update the coverage hash in case the hitmap changed
        self._update_coverage_hash()

        # mark these touched addresses as dirty
        self._unmapped_data |= data.viewkeys()

    def add_addresses(self, addresses, update=True):
        """
        Add a list of instruction addresses to the coverage mapping.
        """

        # increment the hit count for an address
        for address in addresses:
            self._hitmap[address] += 1

        # do not update other internal structures if requested
        if not update:
            return

        # update the coverage hash in case the hitmap changed
        self._update_coverage_hash()

        # mark these touched addresses as dirty
        self._unmapped_data |= set(addresses)

    def subtract_data(self, data):
        """
        Subtract an existing instruction hitmap from the coverage mapping.
        """

        # subtract the given hitmap from our existing hitmap
        for address, hit_count in data.iteritems():
            self._hitmap[address] -= hit_count

            #
            # if there is no longer any hits for this address, delete its
            # entry from the hitmap dictionary. we don't want its entry to
            # hang around because we use self._hitmap.viewkeys() as a
            # coverage bitmap/mask
            #

            if not self._hitmap[address]:
                del self._hitmap[address]

        # update the coverage hash as the hitmap has probably changed
        self._update_coverage_hash()

        #
        # unmap everything because a complete re-mapping is easier with the
        # current implementation of things
        #

        self.unmap_all()

    def mask_data(self, coverage_mask):
        """
        Mask the hitmap data against a given coverage mask.

        Returns a new DatabaseCoverage containing the masked hitmap.
        """
        composite_data = collections.defaultdict(int)

        # preserve only hitmap data that matches the coverage mask
        for address in coverage_mask:
            composite_data[address] = self._hitmap[address]

        # done, return a new DatabaseCoverage masked with the given coverage
        return DatabaseCoverage(self.palette, data=composite_data)

    def _update_coverage_hash(self):
        """
        Update the hash of the coverage mask.
        """
        if self._hitmap:
            self.coverage_hash = hash(frozenset(self._hitmap.viewkeys()))
        else:
            self.coverage_hash = 0

    #--------------------------------------------------------------------------
    # Coverage Mapping
    #--------------------------------------------------------------------------

    def _map_coverage(self):
        """
        Map loaded coverage data to the underlying database metadata.
        """
        dirty_nodes = self._map_nodes()
        dirty_functions = self._map_functions(dirty_nodes)
        return (dirty_nodes, dirty_functions)

    def _map_nodes(self):
        """
        Map loaded coverage data to database defined nodes (basic blocks).
        """
        dirty_nodes = {}

        # the coverage data we will attempt to process in this function
        coverage_addresses = collections.deque(sorted(self._unmapped_data))

        #
        # the loop below is the core of our coverage mapping process.
        #
        # operating on whatever coverage data (instruction addresses) reside
        # within unmapped_data, this loop will attempt to bucket the coverage
        # into NodeCoverage objects where possible.
        #
        # the higher level coverage mappings (eg FunctionCoverage,
        # DatabaseCoverage) get built on top of the node mapping that we
        # perform here.
        #
        # since this loop is the most computationally expensive part of the
        # mapping process, it has been carefully profiled & optimized for
        # speed. please be careful if you wish to modify it...
        #

        while coverage_addresses:

            # get the next coverage address to map
            address = coverage_addresses.popleft()

            # get the node (basic block) metadata that this address falls in
            node_metadata = self._metadata.get_node(address)

            #
            # should we fail to locate node metadata for the coverage address
            # that we are trying to map, then the address must not fall inside
            # of a defined function.
            #
            # in this case, the coverage address will remain unmapped...
            #

            if not node_metadata:
                continue

            #
            # we found applicable node metadata for this address, now we will
            # try to find an existing bucket (NodeCoverage) for the address
            #

            if node_metadata.address in self.nodes:
                node_coverage = self.nodes[node_metadata.address]

            #
            # failed to locate an existing NodeCoverage object for this
            # address, it looks like this is the first time we have attempted
            # to bucket coverage for this node.
            #
            # create a new NodeCoverage bucket and use it now
            #

            else:
                node_coverage = NodeCoverage(node_metadata.address, self._weak_self)
                self.nodes[node_metadata.address] = node_coverage

            # compute the end address of the current basic block
            node_end = node_metadata.address + node_metadata.size

            #
            # the loop below is as an inlined fast-path that assumes the next
            # several coverage addresses will likely belong to the same node
            # that we just looked up (or created) in the code above
            #
            # we can simply re-use the current node and its coverage object
            # until the next address to be processed falls outside the node
            #

            while 1:

                #
                # map the hitmap data for the current address (an instruction)
                # to this NodeCoverage and mark the instruction as mapped by
                # discarding its address from the unmapped data list
                #

                if address in node_metadata.instructions:
                    node_coverage.executed_instructions[address] = self._hitmap[address]
                    self._unmapped_data.discard(address)

                #
                # if the given address allegedly falls within this node's
                # address range, but doesn't line up with the known
                # instructions, log it as 'misaligned' / suspicious
                #

                else:
                    self._misaligned_data.add(address)

                # get the next address to attempt mapping on
                try:
                    address = coverage_addresses.popleft()

                # an IndexError implies there is nothing left to map...
                except IndexError:
                    break;

                #
                # if the next address is not in this node, it's time break out
                # of this loop and send it through the full node lookup path
                #

                if not (node_metadata.address <= address < node_end):
                    coverage_addresses.appendleft(address)
                    break

            # the node was updated, so save its coverage as dirty
            dirty_nodes[node_metadata.address] = node_coverage

        # done, return a map of NodeCoverage objects that were modified
        return dirty_nodes

    def _map_functions(self, dirty_nodes):
        """
        Map loaded coverage data to database defined functions.
        """
        dirty_functions = {}

        #
        # thanks to the map_nodes(), we now have a repository of NodeCoverage
        # objects that are considered 'dirty' and can be used precisely to
        # build or update the function level coverage metadata
        #

        for node_coverage in dirty_nodes.itervalues():

            #
            # using a given NodeCoverage object, we retrieve its underlying
            # metadata so that we can perform a reverse lookup of its function
            # (parent) metadata.
            #

            function_metadata = self._metadata.nodes[node_coverage.address].function

            #
            # now we will attempt to retrieve the the FunctionCoverage object
            # that we need to parent the given NodeCoverage object to
            #

            function_coverage = self.functions.get(function_metadata.address, None)

            #
            # if we failed to locate a FunctionCoverage for this node, it means
            # that this is the first time we have seen coverage for this
            # function. create a new coverage function object and use it now.
            #

            if not function_coverage:
                function_coverage = FunctionCoverage(function_metadata.address, self._weak_self)
                self.functions[function_metadata.address] = function_coverage

            # add the NodeCoverage object to its parent FunctionCoverage
            function_coverage.mark_node(node_coverage)
            dirty_functions[function_metadata.address] = function_coverage

        # done, return a map of FunctionCoverage objects that were modified
        return dirty_functions

    def unmap_all(self):
        """
        Unmap all mapped coverage data.
        """
        self._unmapped_data = set(self._hitmap.keys())
        self._unmapped_data.add(BADADDR)
        self._misaligned_data = set()
        self.nodes = {}
        self.functions = {}

    #--------------------------------------------------------------------------
    # Debug
    #--------------------------------------------------------------------------

    def dump_unmapped(self):
        """
        Dump the unmapped coverage data.
        """
        lmsg("Unmapped Coverage:")
        for address in self._unmapped_data:
            lmsg(" * 0x%X" % address)




#------------------------------------------------------------------------------
# Function Coverage
#------------------------------------------------------------------------------

class FunctionCoverage(object):
    """
    Function level coverage mapping.
    """

    def __init__(self, function_address, database=None):
        self.database = database
        self.address = function_address

        # addresses of nodes executed
        self.nodes = {}

        # compute the # of instructions executed by this function's coverage
        self.instruction_percent = 0.0
        self.node_percent = 0.0

        # baked colors
        self.coverage_color = 0

    #--------------------------------------------------------------------------
    # Properties
    #--------------------------------------------------------------------------

    @property
    def hits(self):
        """
        Return the number of instruction executions in this function.
        """
        return sum(x.hits for x in self.nodes.itervalues())

    @property
    def nodes_executed(self):
        """
        Return the number of unique nodes executed in this function.
        """
        return len(self.nodes)

    @property
    def instructions_executed(self):
        """
        Return the number of unique instructions executed in this function.
        """
        return sum(x.instructions_executed for x in self.nodes.itervalues())

    @property
    def instructions(self):
        """
        Return the executed instruction addresses in this function.
        """
        return set([ea for node in self.nodes.itervalues() for ea in node.executed_instructions.keys()])

    #--------------------------------------------------------------------------
    # Controls
    #--------------------------------------------------------------------------

    def mark_node(self, node_coverage):
        """
        Save the given NodeCoverage to this function.
        """
        self.nodes[node_coverage.address] = node_coverage

    def finalize(self):
        """
        Finalize the FunctionCoverage data for use.
        """
        function_metadata = self.database._metadata.functions[self.address]

        # compute the % of nodes executed
        self.node_percent = float(self.nodes_executed) / function_metadata.node_count

        # compute the % of instructions executed
        self.instruction_percent = \
            float(self.instructions_executed) / function_metadata.instruction_count

        # the sum of node executions in this function
        node_sum = sum(x.executions for x in self.nodes.itervalues())

        # the estimated number of executions this function has experienced
        self.executions = float(node_sum) / function_metadata.node_count

        # bake colors
        self.coverage_color = compute_color_on_gradiant(
            self.instruction_percent,
            self.database.palette.coverage_bad,
            self.database.palette.coverage_good
        )

#------------------------------------------------------------------------------
# Node Coverage
#------------------------------------------------------------------------------

class NodeCoverage(object):
    """
    Node (basic block) level coverage mapping.
    """

    def __init__(self, node_address, database=None):
        self.database = database
        self.address = node_address
        self.executed_instructions = {}

    #--------------------------------------------------------------------------
    # Properties
    #--------------------------------------------------------------------------

    @property
    def hits(self):
        """
        Return the number of instruction executions in this node.
        """
        return sum(self.executed_instructions.itervalues())

    @property
    def instructions_executed(self):
        """
        Return the number of unique instructions executed in this node.
        """
        return len(self.executed_instructions)

    #--------------------------------------------------------------------------
    # Controls
    #--------------------------------------------------------------------------

    def finalize(self):
        """
        Finalize the coverage metrics for faster access.
        """
        node_metadata = self.database._metadata.nodes[self.address]

        # the estimated number of executions this node has experienced.
        self.executions = float(self.hits) / node_metadata.instruction_count



class ExecuteFunctionCoverage(object):
    def __init__(self,parent_coverage,bb_idx,thread_id,from_mod, from_address,to_mod,to_address,ret_address):
        self.parent_coverage=parent_coverage
        if self.parent_coverage is not None:
            self.parent_coverage.sub_func_coverage.append(self)
            self.trace_depth = self.parent_coverage.trace_depth+1
        else:
            self.trace_depth = 0
        self.bb_idx = bb_idx
        self.thread_id = thread_id
        self.from_mod = from_mod
        self.from_mod_name = None
        self.from_address = from_address
        self.from_func_name = None
        self.to_mod = to_mod
        self.to_mod_name = None
        self.to_address = to_address
        self.to_func_name = None
        self.ret_address = ret_address
        self.sub_func_coverage = []
        self.has_return = False

    def get_from_func_name_full(self):
        if self.from_mod_name and self.from_func_name:
            return self.from_mod_name + "!" + self.from_func_name
        if self.from_mod_name:
            return self.from_mod_name + "!sub_" + self.get_from_address_hex_str()
        return "mod_" + self.to_mod + "!sub_" + self.get_from_address_hex_str()

    def get_from_address_hex_str(self):
        return hex(self.from_address)[2:-1]

    def get_to_address_hex_str(self):
        return hex(self.to_address)[2:-1]

    def get_to_func_name_full(self):
        if self.to_mod_name and  self.to_func_name:
             return self.to_mod_name + "!" + self.to_func_name
        if self.to_mod_name :
            return self.to_mod_name + "!sub_" + self.get_to_address_hex_str()
        return "mod_"+self.to_mod + "!sub_" + self.get_to_address_hex_str()