[toc]

## 简介 ## 

DynamoRIO通过将程序代码进行反复插桩执行构建了源程序代码与操纵代码之间的桥梁,使DynamoRIO的客户端编写者能够在更高的层面上驾驭原有的程序代码.虽然程序的载体还是被编译成原生的汇编指令集执行,但是不管是原生代码还是程序行为逻辑DynamoRIO为我们提供的API已经把这些封装成了足够友好操作方式暴露给客户端编写者使用.本文主要分析DynamoRIO插桩的主要流程和实现原理,并附加相关demo分析让读者加深对DynamoRIO的认识. 

## DynamoRIO启动参数介绍 ## 

DynamoRIO通过drrun.exe运行一个自带的client使用如下方式,具体命令行参数如下先配置drrun参数再配置client参数
```drrun.exe" -verbose  -c "E:\dynamorio-master-x86\Debug\niii.dll"  -logdir "E:\git\stash" -- "C:\Windows\SysWOW64\notepad.exe"
`:\Windows\system32>"E:\dynamorio-master-x86\bin32\drrun.exe"
ERROR: no app specified
USAGE: 先drrun参数再配置client参数 [options] <app and args to run>
   or: drrun [options] -- <app and args to run>
   or: drrun [options] [DR options] -- <app and args to run>
   or: drrun [options] [DR options] -c <client> [client options] -- <app and args to run>
   or: drrun [options] [DR options] -t <tool> [tool options] -- <app and args to run>
Run with -help to see drrun option list

```

## DynamoRIO源码流程 ## 

### 入口点分析 ### 

drrun由于执行流控制的原因无法通过对现有进程注入的方式实现插桩,只能通过drrun启动进程后获取进程启动的控制权后在入口点实现注入client的dll模块
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

d_r_dispatch中的主要逻辑是将当前被插桩程序的当前指令位置xip也就是bb->cur_pc解码decode成一个一个块block,将其中每个指令对应一个指令instruction结构放入instrlist_t容器中,处理每个块对应的分支结构也就是cti(其中包括call(程序集内部调用),indirectcall(通过寄存器等间接调用),cbr(条件跳转),ubr(非条件跳转),mbr(通过寄存器等的间接跳转或调用分支)),将这个容器中的指令encode后生成一个fragment,链接其中的incoming_stubs对应结构linkstub_t中cti_offset构成了所有块之间的调用顺序,最后调用dcontext_t中fcache_enter方法跳转到encode到程序运行空间vmarea中的start_pc中执行插桩循环,最后又回到d_r_dispatch.
```
void d_r_dispatch(dcontext_t *dcontext){
while(true){
...
//直到循环构建fragment_t完成
fragment_t* targetf = build_basic_block_fragment(
                    dcontext, dcontext->next_tag, 0, true /*link*/,
                    true /*visible*/
                    _IF_CLIENT(false /*!for_trace*/) _IF_CLIENT(NULL));
if (targetf == NULL)
    break; 
}
if (targetf != NULL) {
//执行当前构建好的fragment_t
dispatch_enter_fcache(dcontext, targetf))
}
fragment_t * build_basic_block_fragment(dcontext_t *dcontext, app_pc start, uint initial_flags,
                           bool link,
                           bool visible _IF_CLIENT(bool for_trace)
                               _IF_CLIENT(instrlist_t **unmangled_ilist))
{
 build_bb_ilist(dcontext, &bb);
 return f = emit_fragment_ex(dcontext, start, bb.ilist, bb.flags, bb.vmlist, link, visible);
}
```
build_basic_block_fragment内部调用了build_bb_ilist用于decode解码当前指令,DynamoRIO内部实现了一套编码与解码对相对于汇编语言的操作库用于将每一条汇编指令翻译成instr_t 结构,其中包含多个源操作数和目的操作数opnd_t结构和当前指令的实际解析地址app_pc translation和操作码opcode等字段,DynamoRIO的api提供了对于instr可以调用opnd_create_xxx创建操作数后将其和操作码opcode作为参数调用instr_create_xxx系列函数创建.
build_bb_ilist中循环每个decode后的instr直到确定当前instr为一个分支指令,完成fragment的构建
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
      //里面使用这个宏触发回调bb_callbacks
      call_all_ret(ret, |=, , bb_callbacks, int (*)(void *, void *, instrlist_t *, bool, bool), (void *)dcontext,(void *)tag, bb, for_trace, translating);
}} 
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
DynamoRIO被插桩的数据块分为2种类型,一种是由每个分支的转移划分为创建每个basic block(基本块),而已经创建过basic block被多次执行则以DynamoRIO在代码缓存中作为trace(缓存块)不重复生成以缓存形式被重复快速调用,回调的几个阶段顺序为app2app_func->analysis_func->insertion_func->instru2instru_func,app2app_func用于首次的插桩分支创建触发时被调用目的仅是获取instrlist_t但无法修改基本块, for_trace代表是否是创建的基本块后将其加入缓存块(false)或者修改过的基本块需要再次创建加入缓存块(true),translating代表是在解析异常处理或者同步策略是需要翻译指令实际地址.  第二个analysis_func也是相同功能只是可以传送userdata给insertion_func,关键的在第三个insertion_func,这个回调不仅可以对instrlist_t进行修改, 还可以在inst参数获取到当前块的分支跳转类型对应的指定,笔者demo就通过这个判断链接了需要分析的几种分支类型,构造了函数调用栈回溯,实现了函数追踪功能.最后一个instru2instru_func也只是查看instrlist_t无法进行修改.如果需要对trace类型缓存的块调用的指令进行回调可以使用dr_register_trace_event这个api进行注册,但是也同样无法在回调中修改instrlist_t.

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
DynamoRIO在初始化时构建的一个全局的路由表,负责路由所有的插桩事件和ibl表.其中code->fcache_enter是所有构建好的块的全局入口负责跳转到保存在dcontext上下文中建好的块起始地址start_pc,在之前的分析中build_bb_ilist获取了每个块的分支类型将对应ibl表中路由地址中保存在bb->exit_target,这样在每个块被执行完成后就会跳到这类分支路由函数emit_xxx_branch_lookup中,也正是有这类函数存在,决定了是继续trace缓存执行,还是路由到下个块或者返回DynamoRIO.下面这段伪代码简化具体实现,其中加入了可选的多重判断,但主要的逻辑还是检查入口hash字段,判断下个路由如何执行,具体大致流程如下.
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
 //返回DynamoRIO或者跳转到当前函数参数fcache_return_pc地址,这个后面接下来的代码永远不会到达
 append_fcache_return_common(dcontext, code, &ilist, true /*ibl end*/, absolute,
                                    false /*!shared*/, NULL, false /*no coarse info*/);
}	   
```
DynamoRIO提供了一系列dr_insert_call_xxx用于将client中的函数代码以instrlist注入到目标代码中,除了借助DynamoRIO自身的编码和解码引擎外,另一种使用的技术就是寄存器预留.假设汇编指令执行但某个位置的时候,所有的寄存器值和栈空间的数据都是对当前程序有直接联系的,如果直接注入汇编代码就会破坏这个逻辑.采取的一种等价的Hook方案是,先把需要用到的寄存器标记位脏寄存器的值存入TLS(线程本地储存)或者dcontext中,当前也可以用汇编原生的PUSH/POP方式,对应栈空间也是在当前栈底XBP位置暂存否开辟一段固定大小的栈空间,等执行完Hook代码再还原(恢复栈空间XBP).这样就构成了一个环,以递归的方式预留寄存器等,在用完的时候再还原回去,如果再次用到就放到另外一个寄存器去,用完了再递归还原,这样除了对源程序内存直接修改是全局的之外,退出Hook时还原现场,对原有的程序运行理论上是没有影响的,DynamoRIO正是采用的这种方法,先将client中代码编码成instrlist插入源程序指定,解析时候可以内联执行还是递归执行

##  相关项目 ##
[我的DynamoRIO项目](https://gitee.com/cbwang505/diydynamorio)


























