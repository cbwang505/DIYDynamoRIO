## 引用 ##

>这篇文章的目的是对动态二进制插桩框架DynamoRIO的原理和基本实现过程进行全面的介绍.

[toc]

## 简介 ## 

动态二进制插桩框架DynamoRIO通过将程序代码进行反复插桩(Instrumentation)执行构建了源程序代码与操纵代码之间的桥梁,使DynamoRIO的客户端编写者能够在更高的层面上驾驭原有的程序代码.虽然程序的载体还是被编译成原生的汇编指令集执行,但是不管是原生代码还是程序行为逻辑DynamoRIO为我们提供丰富的API已经把这些封装成了足够友好操作方式暴露给客户端编写者使用,用户可以透明的修改原有的程序代码(HotPatch),执行追踪,Hook,调试,模拟等高级运行时操纵(Runtime Code Manipulation )技术.本文主要分析DynamoRIO插桩的主要流程和实现原理,深入源码片段中几个有意思的小节体现作者构思的巧妙之处,并附加相关demo分析让读者加深对DynamoRIO的认识. 


## DynamoRIO源码流程 ## 

### 入口点分析 ### 

drrun由于执行流控制的原因无法通过对现有进程注入的方式实现插桩,只能通过drrun启动进程挂起获取进程启动的控制权后在入口点实现注入client的dll模块.
drrun调用CreateProcess后调用inject_into_thread加载相关dll,方法还是普通的nt_write_virtual_memory,nt_remote_protect_virtual_memory,nt_get_context,nt_set_context将load_dynamo汇编函数代码注入目标进程,通过之前CONTEXT获取 CXT_XIP等字段即程序的entrypiont写入之后priv_mcontext_t结构中后,
将其作为栈REG_XSP指针作为参数传给auto_setup函数,其中初始化了DynamoRIO中的一个重要结构dcontext_t也就是DynamoRIO全局上下文变量,其中 (dcontext_t*)dcontext->next_tag 来源于之前 (priv_mcontext*)mcontext->pc,,最后调用call_switch_stack不断调用d_r_dispatch这个回调插桩函数实现整个程序的循环.
```
/* void call_switch_stack(void *func_arg,             // 1*ARG_SZ+XAX
 *                        byte *stack,                // 2*ARG_SZ+XAX
 *                        void (*func)(void *arg),    // 3*ARG_SZ+XAX
 *                        void *mutex_to_free,        // 4*ARG_SZ+XAX
 *                        bool return_on_return)      // 5*ARG_SZ+XAX
        /* get all args with same offset(xax) regardless of plaform */
        /* Stack alignment doesn't matter b/c we're swapping. */
        mov      REG_XAX, REG_XSP
        /* we need a callee-saved reg across our call so save it onto stack */
        push     REG_XBX
        mov      REG_XBX, REG_XAX
        /* alignment doesn't matter: swapping stacks */
        push     IF_X64_ELSE(r12, REG_XDI) /* xdi is used for func param in X64 */
        mov      IF_X64_ELSE(r12, REG_XDI), REG_XSP
        /* set up for call */
        mov      REG_XDX, [3*ARG_SZ + REG_XAX] /* func */
        mov      REG_XCX, [1*ARG_SZ + REG_XAX] /* func_arg */
        mov      REG_XSP, [2*ARG_SZ + REG_XAX] /* stack */
        cmp      PTRSZ [4*ARG_SZ + REG_XAX], 0 /* mutex_to_free */
        je       call_dispatch_alt_stack_no_free
        mov      REG_XAX, [4*ARG_SZ + REG_XAX]
        mov      DWORD [REG_XAX], 0
call_dispatch_alt_stack_no_free:
//这里就是循环调用d_r_dispatch
        CALLC1(REG_XDX, REG_XCX)
        mov      REG_XSP, IF_X64_ELSE(r12, REG_XDI)
        mov      REG_XAX, REG_XBX
        cmp      BYTE [5*ARG_SZ + REG_XAX], 0 /* return_on_return */
        je       GLOBAL_REF(unexpected_return)
        pop      IF_X64_ELSE(r12, REG_XDI)
        pop      REG_XBX
        mov      REG_XSP, REG_XAX
        ret      
```
### 插桩循环分析 ### 

d_r_dispatch中的主要逻辑是将当前被插桩程序的当前指令位置xip也就是bb->cur_pc解码decode成一个一个basicblock(基本块),将其中每个指令对应一个指令instruction结构放入instrlist_t容器中,处理每个块对应的分支结构也就是cti(其中包括call(程序集内部调用),indirectcall(通过寄存器计算出的地址进行间接调用),cbr(条件跳转),ubr(非条件跳转),mbr(通过寄存器等的间接跳转或调用分支)),将这个容器中的指令encode后生成一个fragment,链接其中的incoming_stubs对应结构linkstub_t中cti_offset构成了所有块之间的调用顺序,调用dcontext_t中fcache_enter方法跳转到encode到程序运行空间vmarea中的start_pc中执行插桩循环,最后又回到d_r_dispatch,这是DynamoRIO主干流程.
```
void d_r_dispatch(dcontext_t *dcontext){
while(true){
...
//先检测是否生成trace缓存块
fragment_t*  targetf = monitor_cache_enter(dcontext, targetf);
if(targetf==NULL)
{
//直到循环构建fragment_t完成
targetf = build_basic_block_fragment(
                    dcontext, dcontext->next_tag, 0, true /*link*/,
                    true /*visible*/
                    _IF_CLIENT(false /*!for_trace*/) _IF_CLIENT(NULL));
}
if (targetf != NULL) {
//执行当前构建好的fragment_t,见下文路由逻辑分析
dispatch_enter_fcache(dcontext, targetf);
}
fragment_t * build_basic_block_fragment(dcontext_t *dcontext, app_pc start, uint initial_flags,
                           bool link,
                           bool visible _IF_CLIENT(bool for_trace)
                               _IF_CLIENT(instrlist_t **unmangled_ilist))
{
 build_bb_ilist(dcontext, &bb);
 return f = emit_fragment_ex(dcontext, start, bb.ilist, bb.flags, bb.vmlist, link, visible);{
    return emit_fragment_common(dcontext, tag, ilist, flags, vmlist, link, visible,
                                NULL /* not replacing */);
}
}
```
build_basic_block_fragment内部调用了build_bb_ilist用于decode解码当前指令,DynamoRIO内部实现了一套编码与解码对相对于汇编语言的操作库用于将每一条汇编指令翻译成instr_t 结构,其中包含多个源操作数和目的操作数opnd_t结构和当前指令的实际解析地址app_pc translation和操作码opcode等字段,DynamoRIO的api提供了对于instr可以调用opnd_create_xxx创建操作数后将其和操作码opcode作为参数调用instr_create_xxx系列函数创建instr_t 结构,常用基于寄存器类操作数通常可表示为base_reg + index_reg*scale + disp类型通用处理.
build_bb_ilist中循环每个decode后的instr直到确定当前instr存在分支指令,根据分支类型计算出direct_stubs和indirect_stubs的数量,根据这些分支数量在fragment尾部申请若干个linkstub(用于保存分支类型和偏移量),完成fragment的构建初始化.在set_linkstub_fields把linkstub对应分支相对于当前fragment起始地址的偏移量字段赋值,将其中需要退出插桩的linkstub设置出口目标为对应ibl_routine表中的回调项,最后调用默认编码函数instr_encode_arch序列化出程序实际运行的汇编代码和linkstub的分支路由代码完成fragment的构建.
```
static void build_bb_ilist(dcontext_t *dcontext, build_bb_t *bb){
//最终构建好的块起始地址start_pc就是解码出来的第一条指令
bb->cur_pc = bb->start_pc;
//在这里使用2中模式解码
 if (bb->full_decode) {
//默认解码函数decode_with_ldstex
bb->cur_pc = IF_AARCH64_ELSE(decode_with_ldstex,
                             decode)(dcontext, bb->cur_pc, bb->instr);
if (bb->record_translation)
    instr_set_translation(bb->instr, bb->instr_start);
} else {                
//分支结构的解码函数decode_cti_with_ldstex
instr_reset(dcontext, bb->instr);
bb->cur_pc = IF_AARCH64_ELSE(decode_cti_with_ldstex, decode_cti)(dcontext, bb->cur_pc, bb->instr);
}
//笔者简化了分支生成代码方便读者理解
 if (instr_is_cti(bb->instr)) 
 {                       
 //根据最后一个instr的类型确定当前块的分支类型
    bb->ibl_branch_type= instr_branch_type(bb->instr)
  bb->exit_type |= instr_branch_type(bb->instr);
  //处理当前分支结束后需要继续处理的路由,这个由会见对应的fragment加入不同的ibl表中
  bb->exit_target = get_ibl_routine(dcontext, get_ibl_entry_type(bb->exit_type), DEFAULT_IBL_BB(), bb->ibl_branch_type);              
}
//处理当前块解析对应留给DynamoRIO客户端的回调
 if (!client_process_bb(dcontext, bb)) {
      //里面使用这个宏触发回调bb_callbacks,详见插桩API回调分析小节
      call_all_ret(ret, |=, , bb_callbacks, int (*)(void *, void *, instrlist_t *, bool, bool), (void *)dcontext,(void *)tag, bb, for_trace, translating);
}} 
static fragment_t * emit_fragment_common(dcontext_t *dcontext, app_pc tag, instrlist_t *ilist, uint flags,void *vmlist, bool link_fragment, bool add_to_htable,fragment_t *replace_fragment)
{

//根据当前块分支数量在fragment尾部申请若干个linkstub
fragment_t * f = fragment_create(dcontext, tag, offset + extra_jmp_padding_body, num_direct_stubs,
                        num_indirect_stubs, stub_size_total + extra_jmp_padding_stubs,
                        flags);
//编码fragment,链接所有direct_stubs和indirect_stubs		
 cache_pc pc = set_linkstub_fields(dcontext, f, ilist, num_direct_stubs, num_indirect_stubs,
                             true /*encode each instr*/);
for (l = FRAGMENT_EXIT_STUBS(f); l; l = LINKSTUB_NEXT_EXIT(l)) {
  //内联模式直接复制对应ibl_routine表中的回调项代码
  if (indirect && can_inline) {
  ibl_code_t *ibl_code = get_ibl_routine_code(dcontext, extract_branchtype(l->flags), f->flags);
  memcpy(pc, ibl_code->inline_ibl_stub_template, ibl_code->inline_stub_length);
	}else{
	//非内联模式设置跳转
	cache_pc exit_target=get_ibl_routine_ex(dcontext, get_unlinked_type(ibl_type.link_state),
                              ibl_type.source_fragment_type,
                              ibl_type.branch_type _IF_X86_64(mode));
	pc = insert_relative_jump(pc, exit_target, NOT_HOT_PATCHABLE);
	}
}
return f;							 
}
 */
cache_pc
set_linkstub_fields(dcontext_t *dcontext, fragment_t *f, instrlist_t *ilist,
                    uint num_direct_stubs, uint num_indirect_stubs, bool emit)
{
 cache_pc pc=f->start_pc;
  linkstub_t*  l = FRAGMENT_EXIT_STUBS(f);
   for (inst = instrlist_first(ilist); inst; inst = instr_get_next(inst)) {
        if (instr_is_exit_cti(inst)) {
		    // 
		    if (LINKSTUB_CBR_FALLTHROUGH(l->flags)) {
                /* target is indicated via cti_offset */
                ASSERT_TRUNCATE(l->cti_offset, short, target - f->tag);
                l->cti_offset = (ushort) /* really a short */ (target - f->tag);
            } else {
                ASSERT_TRUNCATE(l->cti_offset, ushort, pc - f->start_pc);
                l->cti_offset = (ushort)(pc - f->start_pc);
            }
		    //对于indirect类型分支,里面实际上是调用get_ibl_routine_ex获取ibl表中emit_indirect_branch_lookup,其他类型同理
			 if (!EXIT_HAS_STUB(l->flags, f->flags)) {
               
                instr_set_branch_target_pc(inst, get_unlinked_entry(dcontext, target));
            } else {               
			     //暂时先设为入口pc,会在以后的链接fragment的函数里面再次计算
                instr_set_branch_target_pc(inst, pc);
            }
			
		}
		 pc = instr_encode_to_copy(dcontext, inst, vmcode_get_writable_addr(pc),
                                          pc);
		  { 
		  //调用默认编码函数instr_encode_arch序列化出程序实际运行的汇编代码
		  instr_encode_arch(dcontext, instr, copy_pc, final_pc, true,NULL _IF_DEBUG(true));
		  }
     }		  
}

```

### 插桩API回调分析 ### 

DynamoRIO提供了drmgr_register_bb_instrumentation_ex_event等api实现了hook每个插桩过程的回调,里面又包装了4种回调类型,这些回调的真正入口由上文的call_all_ret宏将参数传给由dr_register_bb_event注册的bb_callbacks这个回调数组分发回调.初学者可能对这些不同的回调类型不知道如何使用,DynamoRIO的几个demo中由例子可以参考,借助简化后还原代码我们来分析下这几种回调分别对应什么功能
```
DR_EXPORT bool drmgr_register_bb_instrumentation_ex_event(
//用于在初次回调时设置user data供后续回调使用
                                            drmgr_app2app_ex_cb_t app2app_func,
//用于进入回调时获取所有instrlist_t触发设置user data
                                           drmgr_ilist_ex_cb_t analysis_func,
//处理每个回调,可以获取调最后一个instr
                                           drmgr_insertion_cb_t insertion_func,
//用于最后过滤回调
                                           drmgr_ilist_ex_cb_t instru2instru_func,
//选项参数用于排序所注册的回调执行的顺序和优先级
                                           drmgr_priority_t *priority)
{
...
     if (app2app_func != NULL) {
        ok = drmgr_bb_cb_add(&cblist_app2app, NULL, NULL, NULL, app2app_func, NULL, 
NULL,  NULL, priority, NULL /* no user data */) &&
    }
    if (analysis_func != NULL) {
        ok = drmgr_bb_cb_add(&cblist_instrumentation, NULL, NULL, insertion_func, 
NULL,  analysis_func, NULL, NULL, priority, NULL /* no user data */) &&
    }
    if (instru2instru_func != NULL) {
        ok = drmgr_bb_cb_add(&cblist_instru2instru, NULL, NULL, NULL, NULL, NULL,
                             instru2instru_func, NULL, priority, NULL /* no user data */) &&        
    }
...  
}
//最终由bb_callbacks触发
static bool drmgr_bb_cb_add(cb_list_t *list, drmgr_xform_cb_t xform_func,
                drmgr_analysis_cb_t analysis_func, 
                drmgr_insertion_cb_t  insertion_func,
                /* for quartet (also uses insertion_func) */
                drmgr_app2app_ex_cb_t app2app_ex_func,
                drmgr_ilist_ex_cb_t analysis_ex_func,
                drmgr_ilist_ex_cb_t instru2instru_ex_func,
                drmgr_opcode_insertion_cb_t opcode_instrum_fuc,
                drmgr_priority_t *priority, void *user_data /*passed at registration*/) 
{
...
  dr_register_bb_event(drmgr_bb_event);
...
}
void dr_register_bb_event(dr_emit_flags_t (*func)(void *drcontext, void *tag,
                                                  instrlist_t *bb, bool for_trace,
                                                  bool translating))
{
//client_process_bb处理的就是这个回调数组
    add_callback(&bb_callbacks, (void (*)(void))func, true);
}
static dr_emit_flags_t
drmgr_bb_event(void *drcontext, void *tag, instrlist_t *bb, bool for_trace,
               bool translating)               
  res = drmgr_bb_event_do_instrum_phases(drcontext, tag, bb, for_trace, 
translating, pt, &local_info, pair_data, quartet_data);
}
static dr_emit_flags_t
drmgr_bb_event_do_instrum_phases(void *drcontext, void *tag, instrlist_t *bb,
                                 bool for_trace, bool translating, per_thread_t *pt,
                                 local_cb_info_t *local_info, void **pair_data,
                                 void **quartet_data)
{
...//先处理app2app_func.
      for (quartet_idx = 0, i = 0; i < local_info->iter_app2app.num_def; i++) {
        e = &local_info->iter_app2app.cbs.bb[i];
        if (e->has_quartet) {
            res |= (*e->cb.app2app_ex_cb)(drcontext, tag, bb, for_trace, 
translating, &quartet_data[quartet_idx]); 
        } else
            res |= (*e->cb.xform_cb)(drcontext, tag, bb, for_trace, translating);
    }
//再处理analysis_func    
    for (quartet_idx = 0, pair_idx = 0, i = 0; i < 
local_info->iter_insert.num_def; i++) {
        e = &local_info->iter_insert.cbs.bb[i];     
        if (e->has_quartet) {
            res |= (*e->cb.pair_ex.analysis_ex_cb)(
                drcontext, tag, bb, for_trace, translating, 
quartet_data[quartet_idx]);           
        } else {
            if (e->cb.pair.analysis_cb == NULL) {
                pair_data[pair_idx] = NULL;
            } else {
                res |= (*e->cb.pair.analysis_cb)(drcontext, tag, bb, for_trace,
                                                 translating, &pair_data[pair_idx]);
            }
   //这里面调用了drmgr_bb_event_do_insertion_per_instr里面处理insertion_func
  if (e->is_opcode_insertion) {
            res |= (*e->cb.opcode_insertion_cb)(drcontext, tag, bb, inst, for_trace,
                                                translating, e->registration_user_data);
        } else if (e->has_quartet) {
            res |=
                (*e->cb.pair_ex.insertion_ex_cb)(drcontext, tag, bb, inst, 
for_trace,translating, quartet_data[quartet_idx]);       
        } else {
            if (e->cb.pair.insertion_cb != NULL) {
                res |= (*e->cb.pair.insertion_cb)(drcontext, tag, bb, inst, 
for_trace, translating, pair_data[pair_idx]);
            }          
//最后才是instru2instru_func          
 for (quartet_idx = 0, i = 0; i < local_info->iter_instru.num_def; i++) {
        e = &local_info->iter_instru.cbs.bb[i];    
        if (e->has_quartet) {
            res |= (*e->cb.instru2instru_ex_cb)(drcontext, tag, bb, for_trace,
                                                translating, quartet_data[quartet_idx]);          
        } else
            res |= (*e->cb.xform_cb)(drcontext, tag, bb, for_trace, translating);
    }
...       
```
DynamoRIO被插桩的数据块分为2种类型,一种是由每个分支的转移划分为创建每个basicblock(基本块),而已经创建过basicblock被多次高频率执行的则以DynamoRIO在代码缓存中作为trace(缓存块),不重复生成以缓存形式被重复快速调用.DynamoRIO提供了一系列用于指令列表的Api回调用于监视,分析,修改,插入等操作,这些instrlist相对于客户端来说是透明的,客户端可以提供instrlist_first_app()和instr_get_next_app()遍历这些指令列表,其中不包括那些有由DynamoRIO生成的label指令,Meta_Instructions(元指令)等,在遍历这些指令之前DynamoRIO会自动去除对客户端指令的影响包括浮点状态,寄存器状态等.这些指令列表的Api回调的被调用的几个阶段顺序为app2app_func->analysis_func->insertion_func->instru2instru_func,其中app2app_func用于首次的插桩分支创建触发时被调用目的仅是获取instrlist但无法修改基本块,for_trace代表是否是创建的基本块后将其加入缓存块(false)或者修改过的基本块需要再次创建加入缓存块(true),translating代表是在解析异常处理或者线程同步策略是需要translate(翻译)指令Meta_Instructions实际地址,在默认情况下返回DR_EMIT_DEFAULT后DynamoRIO会自动处理决定是否translate当前的元指令地址.客户端对于需要处理Meta_Instructions的basicblock回调,需要使用instr_set_translation或者INSTR_XL8宏指定要translate的实际地址并且返回DR_EMIT_STORE_TRANSLATIONS作为当前回调函数返回值,若设置这个返回值basicblock回调会被再次触发且translate参数为true,客户端应该对这个值做出相应处理,建议选择跳过对指令列表的修改,以保证对程序修改的逻辑是等价的.如果在for_trace为true情况下返回DR_EMIT_STORE_TRANSLATIONS,DynamoRIO会重新生成trace且再次触发translate参数为true,这个就显得多余了,而且会增加额外的内存开销,笔者不建议这样处理,这里不再赘述.第二个analysis_func回调也是相同功能区别只是可以将回调中写入的userdata传送给insertion_func,关键的在第三个insertion_func,这个回调不仅可以对instrlist_t进行修改,还可以在inst这个参数获取到当前块的分支跳转类型对应的指定,笔者demo就通过这个判断链接了需要分析的几种分支类型,构造了函数调用栈回溯,实现了函数追踪功能.最后一个instru2instru_func也只是查看instrlist_t无法进行修改.创建过basicblock会在每次调用后增加对应fragment中head的引用计数,当前达到被多次高频率执行阈值时,DynamoRIO将这些块加入trace类型缓存的块,之后调用的指令进行回调可以使用dr_register_trace_event这个api进行注册,在这之前DynamoRIO会在basicblock回调设置for_trace=true通知相关注册的回调,客户端可以在basicblock回调修改指令列表但是不会影响trace回调的指令列表(如果有同步需要的可以使用dr_flush_region()函数刷新缓存),并且这些指令列表是混合的即存在多个重叠的basicblock列表,所以DynamoRIO不建议在trace回调中修改指令列表.
```
//下面代码简化了插桩流程回到DynamoRIO后先由monitor判断是否需要将当前 fragment作为trace(缓存块)处理的逻辑
fragment_t * monitor_cache_enter(dcontext_t *dcontext, fragment_t *f)
{
  if (end_trace) {
  //这里面所有trace的指令列表传给dr_register_trace_event注册的回调
  dr_emit_flags_t emitflags = instrument_trace(dcontext, tag, &md->unmangled_ilist, false /*!recreating*/);
  //重建fragment返回结束trace,当存在TEST(FRAG_IS_TRACE_HEAD, f->flags)时由emit_fragment决定是否继续trace
  return emit_fragment(dcontext, tag, trace, md->trace_flags, md->trace_vmlist,
                                true /*link*/);
  }else{
   //延申对当前trace的执行,继续trace模式
   return internal_extend_trace(dcontext, f, dcontext->last_exit, add_size);
  }
 trace_head_counter_t *ctr = thcounter_lookup(dcontext, f->tag);
 //当已经创建过basicblock被多次高频率执行超过阈值的时候则以DynamoRIO在代码缓存中作为trace(缓存块)
 if (ctr->counter >= INTERNAL_OPTION(trace_threshold)) {
  f->flags|=FRAG_IS_TRACE;
  f = internal_extend_trace(dcontext, f, NULL, add_size){
  instrlist_t * ilist = decode_fragment(dcontext, f, md->trace_buf + md->trace_buf_top, &size,
                            md->trace_flags, &new_exits_dir, &new_exits_indir);
  instrlist_append(dcontext->monitor_field->trace, ilist);
 }
 }
}
```
通常DynamoRIO会将断开链接的fragment标记为FRAG_IS_TRACE_HEAD,在emit_fragment函数的内部重新构建了下一个fragment并重置monitor的trace相关状态,这样会在这个下一个fragment进入monitor时决定是否继续trace.
### 路由逻辑分析 ### 

```
static bool dispatch_enter_fcache(dcontext_t *dcontext, fragment_t *targetf)
{
//enter_fcache函数的内联实现简化还原,在下文分析这个函数
dcontext->next_tag = targetf->start_pc;
//这个就是下面初始化的全局 generated_code
 generated_code_t *code = THREAD_GENCODE(dcontext);
 dcontext->fcache_enter=(fcache_enter_func_t)convert_data_to_function(code->fcache_enter);
 //所有构建的block的入口函数
dcontext->fcache_enter(dcontext)
}
void arch_thread_init(dcontext_t *dcontext)
{
//全局的回调入口保存的结构
generated_code_t *code;
dcontext->private_code = (void *)code;
code->fcache_enter = emit_fcache_enter(dcontext, code, pc){ 
//里面就是dispatch_enter_fcache传入的dcontext->next_tag ,直接跳转到入口
APP(ilist, RESTORE_FROM_DC(dcontext, SCRATCH_REG0, NEXT_TAG_OFFSET));
APP(ilist, instr_create_jump_via_dcontext(dcontext, NEXT_TAG_OFFSET));
}
//这个时返回的函数
pc = emit_fcache_return(dcontext, code, pc){
 //先触发进入DynamoRIO的入口方法,用于同步其他线程
  dr_insert_call((void *)dcontext, ilist, NULL /*append*/, (void *)ENTER_DR_HOOK,
  //再次回到d_r_dispatch继续插桩
dr_insert_call_noreturn(
        (void *)dcontext, ilist, NULL /*append*/, (void *)d_r_dispatch, 1,
        absolute ? OPND_CREATE_INTPTR((ptr_int_t)dcontext) ;

//这个代码是不会到达的,d_r_dispatch是死循环,如果到达了就退出DynamoRIO
insert_reachable_cti(dcontext, ilist, NULL, vmcode_get_start(),
                         (byte *)unexpected_return, true /*jmp*/, false /*!returns*/,
                         false /*!precise*/, DR_REG_R11 /*scratch*/, NULL);
}
//IBL全局的路由表初始化放入回调入口结构中
pc = emit_ibl_routines(dcontext, code, pc, code->fcache_return,
					   IBL_BB_PRIVATE, /* source_fragment_type */
					   /* need thread-private for selfmod regardless of sharing */
					   false,                          /* thread_shared */
					   !DYNAMO_OPTION(bb_ibl_targets), /* target_trace_table */
					   code->bb_ibl){
  for (branch_type = IBL_BRANCH_TYPE_START; branch_type < IBL_BRANCH_TYPE_END;
         branch_type++) {	
  //针对不同的IBL全局的路由表初始化		 
   ibl_code_routines[branch_type]->far_ibl = = emit_ibl_routine_and_template(
            dcontext, code, pc, fcache_return_pc, target_trace_table, inline_ibl_head,
            thread_shared, branch_type, source_fragment_type,
            &ibl_code_routines[branch_type]);{
			//内部调用了emit_indirect_branch_lookup
			 pc = emit_indirect_branch_lookup(dcontext, code, pc, fcache_return_pc,
												 target_trace_table, inline_ibl_head, ibl_code);			
			}
	}
}
```

DynamoRIO在初始化时构建的一个全局的路由表(ibl_code_routines_table表),负责路由所有的插桩事件.其中code->fcache_enter是所有构建好的块fragment的全局入口负责跳转到保存在dcontext上下文中建好的块起始地址start_pc,由于在之前的分析中build_bb_ilist获取了每个块的分支类型将对应ibl表中路由地址中保存在bb->exit_target,这样在每个块被执行完成后就会跳到这类分支路由函数emit_xxx_branch_lookup中,也正是有这类函数存在,决定了是继续trace缓存执行(具体判断方法是路由表头部的引用计数count字段),还是路由到下个块或者返回DynamoRIO的ibl表中一种重要的indirect类型的路由处理函数emit_indirect_branch_lookup用于处理所有非内联类型indirect路由跳转,下面这段伪代码简化具体实现,其中加入了可选的多重判断,但主要的逻辑还是检查入口hash字段,判断是否跳转下个路由如何执行,还是直到返回DynamoRIO由d_r_dispatch处理继续插桩,具体大致流程如下.
```
1.未开启sentinel检查模式 
inline_ibl_head
	   |__false->compare_tag
				  |__fragment_found->jump_next_fragment
				  |__fragment_not_found->next_fragment_nochasing
											  |__true->return_to_dynamorio 
											  |__false->compare_tag 
	   |__true->next_fragment_nochasing
				  |__true->return_to_dynamorio 
				  |__false->compare_tag 
								  |__true->jump_next_fragment
								  |__false->next_fragment_nochasing 
2.开启sentinel检查模式  
inline_ibl_head
	   |__false->compare_tag
				  |__fragment_found->jump_next_fragment
				  |__fragment_not_found->next_fragment_nochasing
											  |__true->sentinel_check 
														  |__true->return_to_dynamorio 
														  |__false->compare_tag 
											  |__false->compare_tag 
	   |__true->next_fragment_nochasing
				  |__true->sentinel_check 
								  |__true->return_to_dynamorio 
								  |__false->compare_tag 
				  |__false->compare_tag 
								  |__true->jump_next_fragment
								  |__false->next_fragment_nochasing   
```
```
//IBL路由表初始化的具体实现这里有多重判断
byte * emit_indirect_branch_lookup(dcontext_t *dcontext, generated_code_t *code, byte *pc,
                            byte *fcache_return_pc, bool target_trace_table,
                            bool inline_ibl_head, ibl_code_t *ibl_code /* IN/OUT */)
{		
 fragment_not_found = XINST_CREATE_load(dcontext, opnd_create_reg(SCRATCH_REG2),
										   opnd_create_reg(SCRATCH_REG1));
 instr_t *next_fragment_nochasing =
        INSTR_CREATE_cmp(dcontext, OPND_CREATE_MEMPTR(SCRATCH_REG2, HASHLOOKUP_TAG_OFFS),
                         OPND_CREATE_INT8(0));
 if (!inline_ibl_head) {
 //比较fragment头部如果找到fragment跳转至下个fragment执行,如果没找到跳转至next_fragment_nochasing
  append_ibl_head(dcontext, &ilist, ibl_code, patch, &fragment_found, &compare_tag,
                        IF_X64_ELSE(&trace_cmp_entry, NULL),
                        opnd_create_instr(next_fragment_nochasing),
                        true /*miss can have 8-bit offs*/, target_trace_table,
                        inline_ibl_head);
 }
 //再次比较fragment头部
 APP(&ilist, next_fragment_nochasing);
 if (INTERNAL_OPTION(ibl_sentinel_check)) {
 //再次比较fragment头部HASHLOOKUP_START_PC附加检查
 sentinel_check = INSTR_CREATE_cmp(
            dcontext, OPND_CREATE_MEMPTR(SCRATCH_REG2, HASHLOOKUP_START_PC_OFFS),
            OPND_CREATE_INT8((int)(ptr_int_t)HASHLOOKUP_SENTINEL_START_PC));
 }else{
  //绕过sentinel检查回到fcache_return返回DynamoRIO
  sentinel_check = fragment_not_found;
 }
 APP(&ilist,
 INSTR_CREATE_jcc(dcontext, OP_je_short, opnd_create_instr(sentinel_check)));
 if (inline_ibl_head) {
   //里面的逻辑和append_ibl_head等价
	compare_tag = INSTR_CREATE_cmp(
		dcontext, OPND_CREATE_MEMPTR(SCRATCH_REG2, HASHLOOKUP_TAG_OFFS),
		opnd_create_reg(SCRATCH_REG1));
	APP(&ilist, compare_tag);	//同样比较fragment头部如果找到fragment跳转下个fragment入口执行,如果没找到跳转至next_fragment_nochasing
	APP(&ilist,
		INSTR_CREATE_jcc(dcontext, OP_jne_short,
						 opnd_create_instr(next_fragment_nochasing)));
	//增加fragment引用计数,跳转下个fragment入口执行					 
	append_ibl_found(dcontext, &ilist, ibl_code, patch, HASHLOOKUP_START_PC_OFFS,
					 true, only_spill_state_in_tls,
					 target_trace_table ? DYNAMO_OPTION(trace_single_restore_prefix)
										: DYNAMO_OPTION(bb_single_restore_prefix),
					 NULL);
 } else {	
    //继续进入下个fragment检查入口
	APP(&ilist, INSTR_CREATE_jmp_smart(dcontext, opnd_create_instr(compare_tag)));
 }
 if (INTERNAL_OPTION(ibl_sentinel_check)) {        
	APP(&ilist, sentinel_check);  
//如果sentinel检查失败同样回到fcache_return返回DynamoRIO,成功继续进入下个fragment检查入口
	APP(&ilist,
		INSTR_CREATE_jcc(dcontext, OP_jne_short,
						 opnd_create_instr(fragment_not_found)));
		APP(&ilist, INSTR_CREATE_jmp(dcontext, opnd_create_instr(compare_tag)));
 }
 APP(&ilist, fragment_not_found);
 //返回DynamoRIO或者跳转到当前函数参数fcache_return_pc地址(也就是返回d_r_dispatch),这个后面接下来的代码永远不会到达
 append_fcache_return_common(dcontext, code, &ilist, true /*ibl end*/, absolute,
                                    false /*!shared*/, NULL, false /*no coarse info*/);
}	   
```

### 函数间调用分析 ### 

DynamoRIO提供了一系列dr_insert_call_xxx用于将client中的函数代码以instrlist形式注入到目标代码中,除了借助DynamoRIO自身的编码和解码引擎外,另一种使用的技术就是寄存器预留.假设汇编指令执行但某个位置的时候,所有的寄存器值和栈空间的数据都是对当前程序有直接联系的,如果直接注入汇编代码就会破坏这个逻辑.采取的一种等价的Hook方案是,先把需要用到的寄存器标记位脏寄存器的值存入TLS(线程本地储存)或者dcontext中,当前也可以用汇编指令原生的PUSH/POP方式,对应栈空间也是在当前栈底XBP位置暂存否开辟一段固定大小的栈空间,等执行完Hook代码再还原(恢复栈空间XBP).这样就构成了一个环,以递归的方式预留寄存器等,在用完的时候再还原回去,如果再次用到就放到另外一个寄存器去,用完了再递归还原,这样除了对源程序内存直接修改是全局的之外,退出Hook时还原现场,对原有的程序运行理论上是没有影响的.DynamoRIO正是采用的这种方法,先将client中代码编码成instrlist插入源程序指令缓存,解析时候可以内联执行还是递归执行
```
DR_API void
dr_insert_mbr_instrumentation(void *drcontext, instrlist_t *ilist, instr_t *instr,
                              void *callee, dr_spill_slot_t scratch_slot)
{
   if (instr_is_return(instr)) {
               opnd_t reg_target = instr_get_src(instr, instr_num_srcs(instr) - 1);
	}else{
	 opnd_t reg_target = instr_get_src(instr, 0);
	}	
    dr_insert_clean_call(drcontext, ilist, instr, callee, false /*no fpstate*/, 2,
                         /* address of mbr is 1st param */
                         OPND_CREATE_INTPTR(address),
                         /* indirect target (in tls, xchg-d from ecx) is 2nd param */
                         tls_opnd);	
}
DR_API void
dr_insert_call_instrumentation(void *drcontext, instrlist_t *ilist, instr_t *instr,
                               void *callee)
{
 ptr_uint_t address = (ptr_uint_t)instr_get_translation(instr);
 ptr_uint_t target = (ptr_uint_t)opnd_get_pc(instr_get_target(instr));
 dr_insert_clean_call(drcontext, ilist, instr, callee, false /*no fpstate*/, 2,
                         /* address of call is 1st parameter */
                         OPND_CREATE_INTPTR(address),
                         /* call target is 2nd parameter */
                         OPND_CREATE_INTPTR(target));
}
//dr_insert_clean_call内部实现
void dr_insert_clean_call_ex_varg(void *drcontext, instrlist_t *ilist, instr_t *where,
                             void *callee, dr_cleancall_save_t save_flags, uint num_args,
                             opnd_t *args)
{
//如果调用内部不包含远程call,系统调用之类的分支就内联执行
 if (analyze_clean_call(dcontext, &cci, where, callee, save_fpstate,
                           TEST(DR_CLEANCALL_ALWAYS_OUT_OF_LINE, save_flags), num_args,
                           args) {
  return insert_inline_clean_call(dcontext, &cci, ilist, where, args);
   }   
   insert_meta_call_vargs(dcontext, ilist, where, call_flags, encode_pc, callee,
                           num_args, args){
	uint stack_for_params = insert_parameter_preparation(
        dcontext, ilist, instr, TEST(META_CALL_CLEAN, flags), num_args, args){
		//循环call的所有参数
		   for (i = 0; i < num_args; i++) {
		   if (clean_call && opnd_uses_reg(arg, REG_XSP)) {
		                //push模式顺序:先替换XSP为eax, 保存eax->tls,读取mc->eax, 读取esp->eax, 保存arg->eax(间接通过xsp), push eax, 还原restore eax                        
                        reg_id_t scratch = REG_XAX;
                        if (opnd_uses_reg(arg, scratch)) {
                            scratch = REG_XCX;
                            ASSERT(!opnd_uses_reg(arg, scratch)); /* can't use 3 regs */
                        }
                        opnd_replace_reg(&arg, REG_XSP, scratch);
                        POST(ilist, mark,
                             instr_create_restore_from_tls(dcontext, scratch,
                                                           TLS_XAX_SLOT));
                        POST(ilist, mark, INSTR_CREATE_push(dcontext, arg));
                        POST(ilist, mark,
                             instr_create_restore_from_dc_via_reg(dcontext, scratch,
                                                                  scratch, XSP_OFFSET));
						//内部是PRE即instrlist_meta_preinsert										  
                        insert_get_mcontext_base(dcontext, ilist, instr_get_next(mark),
                                                 scratch);
                        POST(ilist, mark,
                             instr_create_save_to_tls(dcontext, scratch, TLS_XAX_SLOT));
		    }
		   }
		   PRE(ilist, where, INSTR_CREATE_call(dcontext, opnd_create_pc(target)));
		}
	}
}
```
常见的类型用于追踪分支指令的dr_insert_mbr_instrumentation,dr_insert_call_instrumentation,dr_insert_cbr_instrumentation等内部都通过dr_insert_clean_call将分支指令的地址和目的地址作为参数传入调用实现的.为了保证尽可能的减少使用栈空间来包装插入的call,如果xsp寄存器没有在call内部被占用,则采用直接往栈push参数的函数完成参数布局.如果在xsp占用的情况下,DynamoRIO采用的一种很巧妙的方法解决了这个问题,这里简单分析一下,在上面的代码段中POST宏代表往指定指令后插入指令,PRE宏代表往指定指令之前插入指令,所以最后的调用顺序并不是代码中看到的从上至下的顺序,详见注释,DynamoRIO先将xsp寄存器替换为xax寄存器,这样往栈push数据实际上就是以xax为栈指针push数据,最终的解为暂存并预留xax后,读取mcontext中的xsp至xax,然后push参数arg,最后还原xax,至此就实现了在xsp被占用的情况下也能push参数的功能.接下来就是序列化call函数然后直接调用了这里不再赘述.


## 笔者demo分析 ##
笔者的demo在原有Code_Coverage_Library(drcov)项目的记录basicblock基本调用覆盖率的基础上实现对程序函数间调用的过程进行完整记录,通过对于函数调用dr_insert_call_instrumentation可以在回调函数中获取到当前分支最后一条指令和调用函数的目标地址,对于函数返回dr_insert_mbr_instrumentation在以在回调函数中获取到当前当前分支最后一条指令和当前函数调用返回后的地址,而且这个地址也就是调用函数分支最后一条指令的下一条指令的地址,有兴趣的读者如果需要调试这个功能可以使用-dump_text参数 输出文本模式dump数据进行查看比对.至此函数调用链已经可以构造了,在ida中每个地址相对于模块起始地址的偏移量可以查到函数的名称,笔者插件中提供了将这些函数调用以树的形式展示的功能,单击树中的函数可以导航到对应的反汇编代码窗口,借助drcov的原有的块间代码覆盖记录数据功能,在反汇编代码窗口中标记执行过的伪c代码,这样就很清楚的展现的实际的程序执行流程,读者是不是觉得这个插件对程序的行为分析很有帮助呢.效果如图
```
static dr_emit_flags_t
event_bb_insert(void *drcontext, void *tag, instrlist_t *bb, instr_t *instr,
                bool for_trace, bool translating, void *user_data)
{
//判断不同的分支类型
if (instr_is_cti(instr)) {
        if (instr_is_call_direct(instr)) {
                dr_insert_call_instrumentation(drcontext, bb, instr, (app_pc)at_call);
        } 
		else if (instr_is_call_indirect(instr)) {
                dr_insert_mbr_instrumentation(drcontext, bb, instr, (app_pc)at_call_ind,
                                              SPILL_SLOT_1);            
        }
        elseif (instr_is_return(instr)) {
            dr_insert_mbr_instrumentation(drcontext, bb, instr, (app_pc)at_return,
                                          SPILL_SLOT_2);
        }
    }
	//记录块间调用
	app_pc tag_pc = dr_fragment_app_pc(tag);
    dump_bb_inst_list_entry(drcontext, bb, data, tag_pc);
}	
//call指令间调用
static void
at_call(app_pc instr_addr, app_pc target_addr, uint call_type)
{
    void *drcontext = dr_get_current_drcontext();   
    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);   
    instr_t *instr;   
    app_pc next_instr = 0;
	instrlist_t *bb = decode_as_bb(drcontext, instr_addr);
	instr = instrlist_last(bb);
	app_pc pc = instr_get_app_pc(instr);
	int len = instr_length(drcontext, instr);
	next_instr = pc + len;
	instrlist_clear_and_destroy(drcontext, bb);    
	//添加记录
    call_table_entry_add(drcontext, data, call_type, instr_addr, target_addr, next_instr,
                         0, (uint)(next_instr - instr_addr));
}
//返回调用
static void
at_return(app_pc instr_addr, app_pc target_addr)
{
    uint mod_id;
    app_pc mod_start;
    if (target_addr && (uint)target_addr < 0xBFFFFFFF) {

            void *drcontext = dr_get_current_drcontext();             
            dr_mcontext_t mc = { sizeof(mc), DR_MC_CONTROL /*only need xsp*/ };
            PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);                 
            instrlist_t *bb = decode_as_bb(drcontext, instr_addr);
            instr = instrlist_last(bb);
            app_pc pc = instr_get_app_pc(instr);
            int len = instr_length(drcontext, instr);
            app_pc next_instr = pc + len;
            instrlist_clear_and_destroy(drcontext, bb);
			//添加记录
            call_table_entry_add(drcontext, data, FUNC_RETURN, instr_addr, target_addr, 0,
                                 0, (uint)(next_instr - instr_addr));
        }
    }
}

```


## DynamoRIO启动参数介绍 ## 

```
drrun启动参数说明:
DynamoRIO通过drrun.exe运行一个自带的client使用如下方式,具体命令行参数如下,先配置drrun参数再配置client参数
"PathTo\drrun.exe" -verbose  -c "PathTo\client.dll" -c <client> [client options] -- <app and args to run>
USAGE: 先drrun参数再配置client参数 [options] <app and args to run>
   or: drrun [options] -- <app and args to run>
   or: drrun [options] [DR options] -- <app and args to run>
   or: drrun [options] [DR options] -c <client> [client options] -- <app and args to run>
   or: drrun [options] [DR options] -t <tool> [tool options] -- <app and args to run>
Run with -help to see drrun option list

DynamoRIO客户端启动参数说明:
-disable_traces 可选参数,禁用trace,笔者建议开启,保证代码追踪记录覆盖的完整性
-logdir 必须参数,最终生成的记录文件地址
-dump_text 可选参数,以文本模式输出,一般用作调试模式使用
-always_instruction 可选参数,始终记录所有模块和函数调用的记录,不建议使用
-trace_module 可选参数,代码覆盖记录的追踪模块
-follow_func 可选参数,当-target_module启用时可选参数,追踪函数调用,调用函数顺序以次数递增方式展示,首次函数调用触发后开始记录
-target_module 可选参数,当-follow_func或-restrict_func启用时必须参数,追踪函数调用对应模块文件名,调用函数顺序以次数递增方式展示
-target_method 可选参数,当-target_module启用时必须参数,不能与-target_offset共用,追踪函数调用函数相对于模块地址中的函数名称,调用函数顺序以次数递增方式展示
-target_offset 可选参数,当-target_module启用时必须参数,不能与-target_method共用,追踪函数调用函数相对于模块地址偏移量,调用函数顺序以次数递增方式展示
-restrict_func 可选参数,当-target_module启用时可选参数,启用时在追踪函数调用时开始记录,返回后停止记录,再次调用时同理,如未启用此参数始终追踪函数调用记录
-from_module 可选参数,当-target_module启用时可选参数,附加追踪模块文件名,当启用时仅来自追踪函数调用模块和此模块时,开启函数追踪记录,否则不记录任何数据
-call_convention 可选参数,当-follow_func启用时,追踪函数调用函数的调用约定,stdcall,fastcall,thiscall,ms64其中一个值

测试启动命令:测试启动程序notepad.exe,追踪函数偏移量4410A0:
"PathTo\drrun.exe" -verbose -disable_traces -c "PathTo\niii.dll" -logdir "PathTo\logDir" -trace_module "notepad.exe" -target_module "notepad.exe" [-from_module "notepad.exe"]  [-restrict_func] -target_offset 4410A0 [-call_convention stdcall]   -- "PathTo\notepad.exe"

立即结束进程dump追踪数据命令,参数pid为客户端程序进程id:
"PathTo\drconfig.exe" -nudge_pid pid 0 67

ida插件代码追踪插件使用方法:
1.复制MyLighthouse目录下文件至"C:\Program Files\IDA 7.0\plugins"目录
2.在ida打开文件File->Code Function Trace File
3.在ida函数列表FunctionWindow中右键任意函数Fuzz->ExecTree就可以展示函数调用树,点击树中节点导航到对应函数反汇编代码
调试模式需要安装Wing Pro 7.2,非调试模式进行以下操作:
注释"C:\Program Files\IDA 7.0\plugins\MyLighthouse\lighthouse_plugin.py"文件中以下代码
import wingdbstub
wingdbstub.Ensure()

ida插件代码导入符号插件使用方法:
1.使用windbg调试目标进程运行如下命令,如目标文件为c:\symbol.txt
1.1 .shell -i- -ci "x *!*" findstr "!">c:\symbol.txt
1.2 .logappend  c:\symbol.txt ;lm o;.logclose; 
2.在ida打开文件File->File/Load file/Code symbol file,目标文件为c:\symbol.txt

源码编译方法:
复制git目录dynamorio-master-x86至"E:\svn\PowerResearch\dynamorio-master-x86",使用vs2017打开项目
```

![查看大图](../master/ok.gif)
##  相关项目 ##
[我的DynamoRIO项目](https://gitee.com/cbwang505/diydynamorio)


























