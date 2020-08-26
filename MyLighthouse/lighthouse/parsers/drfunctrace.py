#!/usr/bin/python

import os
import sys
import mmap
import struct
import re
from ctypes import *

#------------------------------------------------------------------------------
# drcov log parser
#------------------------------------------------------------------------------

from lighthouse.parsers.drcov import DrcovModule

FUNC_RETVAL = 0,
FUNC_ARG0 = 1,
FUNC_ARG1 = 2,
FUNC_ARG2 = 3,
FUNC_ARG3 = 4,
FUNC_ARG4 = 5,
FUNC_ARG5 = 6,
FUNC_ARG6 = 7,

class DrFuncTraceData(object):
    """
    A drcov log parser.
    """
    def __init__(self, filepath=None):

        # original filepath
        self.filepath = filepath

        # drcov header attributes
        self.version = 0
        self.flavor  = None

        # drcov module table
        self.module_table_count   = 0
        self.module_table_version = 0
        self.modules = []

        # function module table
        self.function_trace_table_count = 0
        self.function_trace_table_version = 0
        self.function_trace_list = []

        # memory module table
        self.memory_trace_table_count = 0
        self.memory_trace_table_version = 0
        self.memory_trace_list = []

        # drcov basic block data
        self.bb_table_count     = 0
        self.bb_table_is_binary = True
        self.basic_blocks = []

        # parse the given filepath
        self._parse_drcov_file(filepath)


    #--------------------------------------------------------------------------
    # Public
    #--------------------------------------------------------------------------

    def get_module(self, module_name, fuzzy=True):
        """
        Get a module by its name.

        Note that this is a 'fuzzy' lookup by default.
        """

        # fuzzy module name lookup
        if fuzzy:

            # attempt lookup using case-insensitive filename
            for module in self.modules:
                if module_name.lower() in module.filename.lower():
                    return module

            #
            # no hits yet... let's cleave the extension from the given module
            # name (if present) and try again
            #

            if "." in module_name:
                module_name = module_name.split(".")[0]

            # attempt lookup using case-insensitive filename without extension
            for module in self.modules:
                if module_name.lower() in module.filename.lower():
                    return module

        # strict lookup
        else:
            for module in self.modules:
                if module_name == module.filename:
                    return module

        # no matching module exists
        return None

    def get_blocks_by_module(self, module_name):
        """
        Extract coverage blocks pertaining to the named module.
        """

        # locate the coverage that matches the given module_name
        module = self.get_module(module_name)

        # if we fail to find a module that matches the given name, bail
        if not module:
            raise ValueError("No coverage for module '%s' in log" % module_name)

        # extract module id for speed
        mod_id = module.id

        # loop through the coverage data and filter out data for only this module
        coverage_blocks = [(bb.start, bb.size) for bb in self.basic_blocks if bb.mod_id == mod_id]

        # return the filtered coverage blocks
        return coverage_blocks


    def get_blocks_by_module_function_trace(self, module_name,funcid_List):
        """
        Extract coverage blocks pertaining to the named module.
        """

        # locate the coverage that matches the given module_name
        module = self.get_module(module_name)

        # if we fail to find a module that matches the given name, bail
        if not module:
            raise ValueError("No coverage for module '%s' in log" % module_name)

        # extract module id for speed
        mod_id = module.id
        if len(funcid_List)>0:
        # loop through the coverage data and filter out data for only this module
            coverage_blocks = [(bb.start, bb.size) for bb in self.basic_blocks if bb.mod_id == mod_id and bb.func_id in funcid_List ]
        else :
            coverage_blocks = [(bb.start, bb.size) for bb in self.basic_blocks if bb.mod_id == mod_id]

        # return the filtered coverage blocks
        return coverage_blocks

    #--------------------------------------------------------------------------
    # Parsing Routines - Top Level
    #--------------------------------------------------------------------------

    def _parse_drcov_file(self, filepath):
        """
        Parse drcov coverage from the given log file.
        """
        with open(filepath, "rb") as f:
            self._parse_drcov_header(f)
            self._parse_module_table(f)
            self._parse_function_trace(f)
            self._parse_memory_trace(f)
            self._parse_bb_table(f)

    def _parse_drcov_data(self, drcov_data):
        """
        Parse drcov coverage from the given data blob.
        """
        pass # TODO/DRCOV

    #--------------------------------------------------------------------------
    # Parsing Routines - Internals
    #--------------------------------------------------------------------------

    def _parse_drcov_header(self, f):
        """
        Parse drcov log header from filestream.
        """

        # parse drcov version from log
        #   eg: DRCOV VERSION: 2
        version_line = f.readline().strip()
        self.version = int(version_line.split(":")[1])

        # parse drcov flavor from log
        #   eg: DRCOV FLAVOR: drcov
        flavor_line = f.readline().strip()
        self.flavor = flavor_line.split(":")[1]



    def _parse_module_table(self, f):
        """
        Parse drcov log module table from filestream.
        """
        self._parse_module_table_header(f)
        self._parse_module_table_columns(f)
        self._parse_module_table_modules(f)

    def _parse_module_table_header(self, f):
        """
        Parse drcov log module table header from filestream.

        -------------------------------------------------------------------

        Format used in DynamoRIO v6.1.1 through 6.2.0
           eg: 'Module Table: 11'

        Format used in DynamoRIO v7.0.0-RC1 (and hopefully above)
           eg: 'Module Table: version X, count 11'

        """

        # parse module table 'header'
        #   eg: Module Table: version 2, count 11
        header_line = f.readline().strip()
        field_name, field_data = header_line.split(": ")
        #assert field_name == "Module Table"

        #
        # NOTE/COMPAT:
        #
        #   DynamoRIO doesn't document their drcov log format, and it has
        #   changed its format at least once during its lifetime.
        #
        #   we just have to try parsing the table header one way to determine
        #   if its the old (say, a 'v1') table, or the new 'v2' table.
        #

        try:

            # seperate 'version X' and 'count Y' from each other ('v2')
            version_data, count_data = field_data.split(", ")

        # failure to unpack indicates this is an 'older, v1' drcov log
        except ValueError:
            self.module_table_count   = int(field_data)
            self.module_table_version = 1
            return

        # parse module table version out of 'version X'
        data_name, version = version_data.split(" ")
        #assert data_name == "version"
        self.module_table_version = int(version)
        if not self.module_table_version in [2, 3, 4]:
            raise ValueError("Unsupported (new?) drcov log format...")

        # parse module count in table from 'count Y'
        data_name, count = count_data.split(" ")
        #assert data_name == "count"
        self.module_table_count = int(count)

    def _parse_module_table_columns(self, f):
        """
        Parse drcov log module table columns from filestream.

        -------------------------------------------------------------------

        DynamoRIO v6.1.1, table version 1:
           eg: (Not present)

        DynamoRIO v7.0.0-RC1, table version 2:
           Windows:
             'Columns: id, base, end, entry, checksum, timestamp, path'
           Mac/Linux:
             'Columns: id, base, end, entry, path'

        DynamoRIO v7.0.17594B, table version 3:
           Windows:
             'Columns: id, containing_id, start, end, entry, checksum, timestamp, path'
           Mac/Linux:
             'Columns: id, containing_id, start, end, entry, path'

        DynamoRIO v7.0.17640, table version 4:
           Windows:
             'Columns: id, containing_id, start, end, entry, offset, checksum, timestamp, path'
           Mac/Linux:
             'Columns: id, containing_id, start, end, entry, offset, path'

        """

        # NOTE/COMPAT: there is no 'Columns' line for the v1 table...
        if self.module_table_version == 1:
            return

        # parse module table 'columns'
        #   eg: Columns: id, base, end, entry, checksum, timestamp, path
        column_line = f.readline().strip()
        field_name, field_data = column_line.split(": ")
        #assert field_name == "Columns"

        # seperate column names
        #   Windows:   id, base, end, entry, checksum, timestamp, path
        #   Mac/Linux: id, base, end, entry, path
        columns = field_data.split(", ")

    def _parse_module_table_modules(self, f):
        """
        Parse drcov log modules in the module table from filestream.
        """

        # loop through each *expected* line in the module table and parse it
        for i in xrange(self.module_table_count):
            module = DrcovModule(f.readline().strip(), self.module_table_version)
            self.modules.append(module)

    def _parse_bb_table(self, f):
        """
        Parse dcov log basic block table from filestream.
        """
        self._parse_bb_table_header(f)
        self._parse_bb_table_entries(f)

    def _parse_bb_table_header(self, f):
        """
        Parse drcov log basic block table header from filestream.
        """

        # parse basic block table 'header'
        #   eg: BB Table: 2792 bbs
        header_line = f.readline().strip()
        field_name, field_data = header_line.split(": ")
        #assert field_name == "BB Table"

        # parse basic block count out of 'X bbs'
        count_data, data_name = field_data.split(" ")
        #assert data_name == "bbs"
        self.bb_table_count = int(count_data)

        # peek at the next few bytes to determine if this is a binary bb table.
        # An ascii bb table will have the line: 'module id, start, size:'
        token = "module id"
        saved_position = f.tell()

        # is this an ascii table?
        if f.read(len(token)) == token:
            self.bb_table_is_binary = False

        # nope! binary table
        else:
            self.bb_table_is_binary = True

        # seek back to the start of the table
        f.seek(saved_position)

    def _parse_bb_table_entries(self, f):
        """
        Parse drcov log basic block table entries from filestream.
        """
        # allocate the ctypes structure array of basic blocks
        self.basic_blocks = (DrcovFuncBasicBlock * self.bb_table_count)()

        if self.bb_table_is_binary:
            # read the basic block entries directly into the newly allocated array
            f.readinto(self.basic_blocks)

        else:  # let's parse the text records
            text_entry = f.readline().strip()

            if text_entry != "module id, start, size:":
                raise ValueError("Invalid BB header: %r" % text_entry)

            pattern = re.compile(r"^module\[\s*(?P<mod>[0-9]+)\]\:\s*(?P<start>0x[0-9a-f]+)\,\s*(?P<size>[0-9]+)\,\s*(?P<func_id>0x[0-9a-f]+)$")
            for basic_block in self.basic_blocks:
                text_entry = f.readline().strip()

                match = pattern.match(text_entry)
                if not match:
                    raise ValueError("Invalid BB entry: %r" % text_entry)

                basic_block.func_id = int(match.group("func_id"), 16)
                basic_block.start = int(match.group("start"), 16)
                basic_block.size = int(match.group("size"), 10)
                basic_block.mod_id = int(match.group("mod"), 10)

    def _parse_function_trace(self, f):
        self._parse_function_trace_header(f)
        self._parse_function_trace_columns(f)
        self._parse_function_trace_modules(f)

    def _parse_function_trace_header(self, f):
        header_line = f.readline().strip()
        field_name, field_data = header_line.split(": ")
        try:

            # seperate 'version X' and 'count Y' from each other ('v2')
            version_data, count_data = field_data.split(", ")

            # failure to unpack indicates this is an 'older, v1' drcov log
        except ValueError:
            self.function_trace_table_count = int(field_data)
            self.function_trace_table_version  = 1
            return

            # parse module table version out of 'version X'
        data_name, version = version_data.split(" ")
        # assert data_name == "version"
        self.function_trace_table_version = int(version)
        if not self.function_trace_table_version in [2, 3, 4]:
            raise ValueError("Unsupported (new?) drcov log format...")

        # parse module count in table from 'count Y'
        data_name, count = count_data.split(" ")
        # assert data_name == "count"
        self.function_trace_table_count = int(count)

    def _parse_function_trace_columns(self, f):
        # parse module table 'columns'
        #   eg: Columns: id, base, end, entry, checksum, timestamp, path
        column_line = f.readline().strip()
        columns = column_line.split(",")


    def _parse_function_trace_modules(self, f):
        for i in xrange(self.function_trace_table_count):
            dt = DrcovFunction(f.readline().strip(), self.function_trace_table_version)
            self.function_trace_list.append(dt)

    def _parse_memory_trace(self, f):
        self._parse_memory_trace_header(f)
        self._parse_memory_trace_columns(f)
        if(self.memory_trace_table_count==0):
            f.readline()
        else:
            self._parse_memory_trace_modules(f)

    def _parse_memory_trace_header(self, f):
        header_line = f.readline().strip()
        field_name, field_data = header_line.split(": ")
        try:

            # seperate 'version X' and 'count Y' from each other ('v2')
            version_data, count_data = field_data.split(", ")

            # failure to unpack indicates this is an 'older, v1' drcov log
        except ValueError:
            self.memory_trace_table_count = int(field_data)
            self.memory_trace_table_version = 1
            return

            # parse module table version out of 'version X'
        data_name, version = version_data.split(" ")
        # assert data_name == "version"
        self.memory_trace_table_version = int(version)
        if not self.memory_trace_table_version in [2, 3, 4]:
            raise ValueError("Unsupported (new?) drcov log format...")

        # parse module count in table from 'count Y'
        data_name, count = count_data.split(" ")
        # assert data_name == "count"
        self.memory_trace_table_count = int(count)

    def _parse_memory_trace_columns(self, f):
        # parse module table 'columns'
        #   eg: Columns: id, base, end, entry, checksum, timestamp, path
        column_line = f.readline().strip()
        columns = column_line.split(",")

    def _parse_memory_trace_modules(self, f):
        for i in xrange(self.memory_trace_table_count):
            dt = DrcovMemory(f, self.memory_trace_table_version)
            self.memory_trace_list.append(dt)


#------------------------------------------------------------------------------
# drcov module parser
#------------------------------------------------------------------------------

class DrcovFunction(object):
    """
    Parser & wrapper for module details as found in a drcov coverage log.

    A 'module' in this context is a .EXE, .DLL, ELF, MachO, etc.
    """
    def __init__(self, func_data, version):
        self.funcid    = 0
        self.timestamp = 0
        self.funcaddr  = 0
        self.retval   = 0
        self.arg0  = 0
        self.arg1  = 0
        self.arg2  = 0
        self.arg3  = 0
        self.arg4  = 0
        self.arg5  = 0
        self.arg6  = 0


        # parse the module
        self._parse_func_trace(func_data, version)

    @property
    def start(self):
        """
        Compatability alias for the module base.

        DrCov table version 2 --> 3 changed this paramter name base --> start.
        """
        return self.base

    def _parse_func_trace(self, func_data, version):
        """
        Parse a module table entry.
        """
        data = func_data.split(", ")
        self._parse_data(data)



    def _parse_data(self, data):
        self.funcid = int(data[0], 16)
        self.timestamp = int(data[1], 16)
        self.funcaddr =  int(data[2], 16)
        self.retval =int(data[3], 16)
        self.arg0   =int(data[4], 16)
        self.arg1   =int(data[5], 16)
        self.arg2   =int(data[6], 16)
        self.arg3   =int(data[7], 16)
        self.arg4   =int(data[8], 16)
        self.arg5   =int(data[9], 16)
        self.arg6   =int(data[10], 16)

#------------------------------------------------------------------------------
# drcov basic block parser
#------------------------------------------------------------------------------

class DrcovMemory(object):
    def __init__(self, filesrc, version):
        self.funcid = 0
        self.memorytype=0
        self.memoryvalue=0
        self.memorydata=""
        self._parse_data(filesrc)

    def _parse_data(self, f):
        token = "*Memory Table Item*"
        token_end = "*Memory Table End*"
        if f.readline().strip() != token:
            raise ValueError("Memory Table error format...")
        data = f.readline().strip().split(", ")
        self.funcid = int(data[0], 16)
        self.memorytype = int(data[1], 16)
        self.memoryvalue = int(data[2], 16)
        while 1:
            saved_position = f.tell()
            data = f.readline().strip()
            if  data==token:
                f.seek(saved_position)
                break
            if data==token_end:
                break
            self.memorydata +=data+"\r\n"


#------------------------------------------------------------------------------
# drcov basic block parser
#------------------------------------------------------------------------------

class DrcovFuncBasicBlock(Structure):
    """
    Parser & wrapper for basic block details as found in a drcov coverage log.

    NOTE:

      Based off the C structure as used by drcov -

        /* Data structure for the coverage info itself */
        typedef struct _bb_entry_t {
            uint   start;      /* offset of bb start from the image base */
            ushort size;
            ushort mod_id;
        } bb_entry_t;

    typedef struct _BBEntry {
        ushort thread_id;
        ushort call_type;
        ushort size;
        ushort mod_id_from;
        ushort mod_id_to;
        uint func_id;
        uint start_from;
        uint to;
        uint ret;
        uint tos;
    } BBEntry, *PBBEntry;
    """
    _pack_   = 4
    _fields_ = [
        ('thread_id', c_uint16),
        ('call_type', c_uint16),
        ('size', c_uint16),
        ('mod_id', c_uint16),
        ('mod_id_to', c_uint16),
        ('func_id',  c_uint16),
        ('start',  c_uint32),
        ('to',  c_uint32),
        ('ret',  c_uint32)

    ]
