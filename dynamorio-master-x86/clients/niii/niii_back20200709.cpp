// dllmain.cpp : 定义 DLL 应用程序的入口点。

#include "niii.h"
#include "configure.h"
#include "charmtable.h"
#include "drmgr.h"
#include "drx.h"
#include "drreg.h"
#include "drwrap.h"
#include <windows.h>
#include <malloc.h>
#include <limits.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

extern "C" Niii_Options options;
static bool niii_per_thread = false;
static int tls_idx = -1;
static uint verbose;
static bool nudge_kills;
static client_id_t client_id;
static int niii_init_count;
static file_t code_handle = nullptr;
static PMyThreadData global_data;

static int charmtrack_init_count;

static char logdir[MAXIMUM_PATH];
static volatile bool go_native;
static volatile ushort global_func_id = 0;

/****************************************************************************
 * Utility Functions
 */
static file_t
log_file_create_helper(void *drcontext, const char *suffix, char *buf, size_t buf_els)
{
    file_t log = drx_open_unique_appid_file(
        options.logdir,
        drcontext == NULL ? dr_get_process_id() : dr_get_thread_id(drcontext),
        options.logprefix, suffix,
#ifndef WINDOWS
        DR_FILE_CLOSE_ON_FORK |
#endif
            DR_FILE_ALLOW_LARGE,
        buf, buf_els);
    if (log != INVALID_FILE) {
        dr_log(drcontext, DR_LOG_ALL, 1, "drcov: log file is %s\n", buf);
        NOTIFY(1, "<created log file %s>\n", buf);
    }
    return log;
}

static void
log_file_create(void *drcontext, PMyThreadData data)
{
    data->log =
        log_file_create_helper(drcontext, drcontext == NULL ? "proc.log" : "thd.log",
                               data->logname, BUFFER_SIZE_ELEMENTS(data->logname));
}

static bool
event_exception_instrumentation(void *drcontext, dr_exception_t *excpt)
{
    DWORD exception_code = excpt->record->ExceptionCode;

    if ((exception_code == EXCEPTION_ACCESS_VIOLATION) ||
        (exception_code == EXCEPTION_ILLEGAL_INSTRUCTION) ||
        (exception_code == EXCEPTION_PRIV_INSTRUCTION) ||
        (exception_code == EXCEPTION_INT_DIVIDE_BY_ZERO) ||
        (exception_code == STATUS_HEAP_CORRUPTION) ||
        (exception_code == EXCEPTION_STACK_OVERFLOW) ||
        (exception_code == STATUS_STACK_BUFFER_OVERRUN) ||
        (exception_code == STATUS_FATAL_APP_EXIT)) {

        dr_exit_process(1);
    }
    return true;
}

#define INIT_BB_TABLE_ENTRIES 4096
static void *
bb_table_create(bool synch)
{
    return charmtable_create(INIT_BB_TABLE_ENTRIES, sizeof(BBEntry),
                             charmtable_MEM_REACHABLE /* flags */, synch, NULL);
}

static void *
func_table_create(bool synch)
{
    return charmtable_create(INIT_BB_TABLE_ENTRIES, sizeof(FuncEntry), 0 /* flags */,
                             synch, NULL);
}
/*static void *
call_table_create(bool synch)
{
    return charmtable_create(INIT_BB_TABLE_ENTRIES, sizeof(CallEntry), 0 /* flags #1#,
                             synch, NULL);
}*/

static void
bb_table_destroy(void *table, void *data)
{
    charmtable_destroy(table, data);
}

static PMyThreadData
thread_data_create(void *drcontext)
{
    PMyThreadData data;
    if (drcontext == NULL) {
        ASSERT(!niii_per_thread, "drcov_per_thread should not be set");
        data = (PMyThreadData)dr_global_alloc(sizeof(*data));
    } else {
        ASSERT(niii_per_thread, "drcov_per_thread should be set");
        data = (PMyThreadData)dr_thread_alloc(drcontext, sizeof(*data));
    }
    /* XXX: can we assume bb create event is serialized,
     * if so, no lock is required for bb_table operation.
     */
    data->bb_table = bb_table_create(drcontext == NULL ? true : false);
    data->func_table = func_table_create(drcontext == NULL ? true : false);
    data->mem_table = func_table_create(drcontext == NULL ? true : false);
    // data->call_table = call_table_create(drcontext == NULL ? true : false);
    log_file_create(drcontext, data);
    return data;
}

/* make a copy of global data for pre-thread cache */
static PMyThreadData
thread_data_copy(void *drcontext)
{
    PMyThreadData data;
    ASSERT(drcontext != NULL, "drcontext must not be NULL");
    data = (PMyThreadData)dr_thread_alloc(drcontext, sizeof(*data));
    *data = *global_data;
    return data;
}

static void
event_thread_init(void *drcontext)
{
    PMyThreadData data;

    static volatile int thread_count;
    // return;
    /*if (options.native_until_thread > 0) {
        int local_count = dr_atomic_add32_return_sum(&thread_count, 1);
        NOTIFY(1, "@@@@@@@@@@@@@ new thread #%d " TIDFMT "\n", local_count,
               dr_get_thread_id(drcontext));
        if (go_native && local_count == options.native_until_thread) {
            void **drcontexts = NULL;
            uint num_threads, i;
            go_native = false;
            NOTIFY(1, "thread " TIDFMT " suspending all threads\n",
                   dr_get_thread_id(drcontext));
            if (dr_suspend_all_other_threads_ex(&drcontexts, &num_threads, NULL,
                                                DR_SUSPEND_NATIVE)) {
                NOTIFY(1, "suspended %d threads\n", num_threads);
                for (i = 0; i < num_threads; i++) {
                    if (dr_is_thread_native(drcontexts[i])) {
                        NOTIFY(2, "\txxx taking over thread #%d " TIDFMT "\n", i,
                               dr_get_thread_id(drcontexts[i]));
                        dr_retakeover_suspended_native_thread(drcontexts[i]);
                    } else {
                        NOTIFY(2, "\tthread #%d " TIDFMT " under DR\n", i,
                               dr_get_thread_id(drcontexts[i]));
                    }
                }
                if (!dr_resume_all_other_threads(drcontexts, num_threads)) {
                    ASSERT(false, "failed to resume threads");
                }
            } else {
                ASSERT(false, "failed to suspend threads");
            }
        }
    }*/
    /* allocate thread private data for per-thread cache */
    if (niii_per_thread)
        data = thread_data_create(drcontext);
    else
        data = thread_data_copy(drcontext);
    drmgr_set_tls_field(drcontext, tls_idx, data);
}

static void
thread_data_destroy(void *drcontext, PMyThreadData data)
{
    /* destroy the bb table */
    bb_table_destroy(data->bb_table, data);
    bb_table_destroy(data->func_table, data);
    bb_table_destroy(data->mem_table, data);
    dr_close_file(data->log);
    /* free thread data */
    if (drcontext == NULL) {
        ASSERT(!niii_per_thread, "drcov_per_thread should not be set");
        dr_global_free(data, sizeof(*data));
    } else {
        ASSERT(niii_per_thread, "drcov_per_thread is not set");
        dr_thread_free(drcontext, data, sizeof(*data));
    }
}

static void
global_data_destroy(PMyThreadData data)
{
    thread_data_destroy(NULL, data);
}

static void
version_print(file_t log)
{
    if (log == INVALID_FILE) {
        /* It is possible that failure on log file creation is caused by the
         * running process not having enough privilege, so this is not a
         * release-build fatal error
         */
        ASSERT(false, "invalid log file");
        return;
    }
    dr_fprintf(log, "DRCOV VERSION: %d\n", 1);
    dr_fprintf(log, "DRCOV FLAVOR: %s\n", "drcov");
}

static niii_status
func_track_dump_buf_headers(file_t buf, uint count, OUT size_t *len_out)
{
    int len;
    len_out = 0;
    if (buf == NULL)
        return NIII_ERROR_INVALID_PARAMETER;

    len = dr_fprintf(buf, "Function Table: version %u, count %u\n", 2, count);
    if (len == -1)
        return NIII_ERROR_BUF_TOO_SMALL;

    len_out += len;

    len = dr_fprintf(buf,
                     "FuncID, TimeStamp, FuncAddr, ReturnValue, FuncArg0, FuncArg1, "
                     "FuncArg2, FuncArg3,FuncArg4, FuncArg5, FuncArg6\n");
    if (len == -1)
        return NIII_ERROR_BUF_TOO_SMALL;

    len_out += len;

    /*
    #ifdef WINDOWS
        len = dr_snprintf(buf, size, ", checksum, timestamp");
        if (len == -1)
            return NIII_ERROR_BUF_TOO_SMALL;
        buf += len;
        size -= len;
    #endif*/

    /*
    if (module_print_cb != NULL) {
        len = dr_snprintf(buf, size, ", (custom fields)");
        if (len == -1)
            return NIII_ERROR_BUF_TOO_SMALL;
        buf += len;
        size -= len;
    }
    */

    len_out += len;
    return NIII_SUCCESS;
}
static niii_status
memtrack_dump_buf_headers(file_t buf, uint count, OUT size_t *len_out)
{
    int len;
    len_out = 0;
    if (buf == NULL)
        return NIII_ERROR_INVALID_PARAMETER;

    len = dr_fprintf(buf, "Memory Table: version %u, count %u\n", 2, count);
    if (len == -1)
        return NIII_ERROR_BUF_TOO_SMALL;

    len_out += len;

    len = dr_fprintf(buf, "FuncID,MemoryType,MemoryValue,MemoryLength,MemoryData\n");
    if (len == -1)
        return NIII_ERROR_BUF_TOO_SMALL;

    len_out += len;

    /*
    #ifdef WINDOWS
        len = dr_snprintf(buf, size, ", checksum, timestamp");
        if (len == -1)
            return NIII_ERROR_BUF_TOO_SMALL;
        buf += len;
        size -= len;
    #endif*/

    /*
    if (module_print_cb != NULL) {
        len = dr_snprintf(buf, size, ", (custom fields)");
        if (len == -1)
            return NIII_ERROR_BUF_TOO_SMALL;
        buf += len;
        size -= len;
    }
    */

    len_out += len;
    return NIII_SUCCESS;
}

static bool
getByteString(file_t f, uint startaddr, unsigned char *bytesbuf, size_t bytesread)
{
    char bytestr[65];
    char charstr[20];

    if (bytesread < 1) {
        return NULL;
    }

    if (bytesread > 16) {
        return NULL;
    }
    unsigned int i;

    char *bytestr_tmp = bytestr;
    unsigned char c;
    for (i = 0; i < bytesread; i++) {
        c = *(bytesbuf + i);
        dr_snprintf(bytestr_tmp, 4, "%02x ", c);
        bytestr_tmp += 3;
    }

    char *charstr_tmp = charstr;
    for (i = 0; i < bytesread; i++) {
        c = *(bytesbuf + i);
        if ((c < 127) && (c > 31) && (c != 92) &&
            (c != 34)) // exclude '\'=92 and "=34 for JSON comp.
        {
            dr_snprintf(charstr_tmp++, 2, "%c", c);
        }

        else {
            dr_snprintf(charstr_tmp++, 2, ".");
        }
    }

    /*size_t resultstr_size =
        strlen(bytestr) + strlen(charstr) + 0x16; // 3 spaces in snprintf below
    dr_printf("buflen: %08x \n", resultstr_size);
    char *resultstr = (char *)dr_global_alloc(sizeof(unsigned char) * resultstr_size);*/
    dr_fprintf(f, "%08x %s   %s\n", startaddr, bytestr, charstr);

    return true;
}

static bool
charm_table_mem_print(ptr_uint_t idx, void *entry, void *iter_data)
{
    PMyThreadData data = (PMyThreadData)iter_data;
    PMemEntry mem_entry = (PMemEntry)entry;
    dr_fprintf(data->log, "*Memory Table Item*\n");
    dr_fprintf(data->log, "" PFX ", " PFX ", " PFX ", %08x\n", mem_entry->func_id,
               mem_entry->arg_type, mem_entry->arg_value, mem_entry->arg_size);
    for (uint i = 0; i <= mem_entry->arg_size / 16; i++) {
        if (mem_entry->arg_size > (i * 16)) {

            getByteString(data->log, (uint)mem_entry->arg_value + (i * 16),
                          mem_entry->arg_data + (i * 16),
                          (i * 16) + 16 >= mem_entry->arg_size ? mem_entry->arg_size % 16
                                                               : 16);
        }
    }

    return true; /* continue iteration */
}

static bool
charm_table_entry_print(ptr_uint_t idx, void *entry, void *iter_data)
{
    PMyThreadData data = (PMyThreadData)iter_data;
    PFuncEntry func_entry = (PFuncEntry)entry;
    dr_fprintf(data->log,
               PFX ", %#llx, " PFX ", " PFX ", " PFX ", " PFX ", " PFX ", " PFX ", " PFX
                   ", " PFX ", " PFX "\n",
               func_entry->func_id, func_entry->timecall, func_entry->funcaddr,
               func_entry->retval, func_entry->arg0, func_entry->arg1, func_entry->arg2,
               func_entry->arg3, func_entry->arg4, func_entry->arg5, func_entry->arg6);

    return true; /* continue iteration */
}

niii_status
func_track_dump(file_t log, PMyThreadData data)
{
    niii_status res;
    size_t entryCount = charmtable_num_entries(data->func_table);
    size_t memCount = charmtable_num_entries(data->mem_table);
    size_t wrote;
    res = func_track_dump_buf_headers(log, entryCount, &wrote);
    if (res == NIII_SUCCESS) {
        charmtable_iterate(data->func_table, data, charm_table_entry_print);
    }
    res = memtrack_dump_buf_headers(log, memCount, &wrote);
    charmtable_iterate(data->mem_table, data, charm_table_mem_print);
    dr_fprintf(data->log, "*Memory Table End*\n");
    return res;
}

static bool
charm_bb_table_entry_print(ptr_uint_t idx, void *entry, void *iter_data)
{
    PMyThreadData data = (PMyThreadData)iter_data;
    PBBEntry bb_entry = (PBBEntry)entry;

    switch (bb_entry->call_type) {
    case FUNC_DIRECT_CALL: {

        dr_fprintf(data->log,
                   "Tid[%3u] Call from module[%3u] " PFX ", to module[%3u] " PFX " ," PFX
                   " ," PFX " \n",

                   bb_entry->thread_id, bb_entry->mod_id_from, bb_entry->start_from,
                   bb_entry->mod_id_to, bb_entry->to, bb_entry->ret, 
                   bb_entry->func_id);
        break;
    }
    case FUNC_INDIRECT_CALL: {

        dr_fprintf(data->log,
                   "Tid[%3u], IdCall from module[%3u] " PFX ", to module[%3u] " PFX
                   " ," PFX " ," PFX " \n",

                   bb_entry->thread_id, bb_entry->mod_id_from, bb_entry->start_from,
                   bb_entry->mod_id_to, bb_entry->to, bb_entry->ret,
                   bb_entry->func_id);
        break;
    }
    case FUNC_RETURN: {
        dr_fprintf(data->log,
                   "Tid[%3u], Return from module[%3u] " PFX ", to module[%3u] " PFX
                   " ," PFX " ,"  PFX " \n",

                   bb_entry->thread_id, bb_entry->mod_id_from, bb_entry->start_from,
                   bb_entry->mod_id_to, bb_entry->to, bb_entry->ret, 
                   bb_entry->func_id);
        break;
    }
    case BASIC_BLOCK: {
        dr_fprintf(data->log, "Tid[%3u],Block in module[%3u] " PFX ", %3u, " PFX " \n",
                   bb_entry->thread_id, bb_entry->mod_id_from, bb_entry->start_from,
                   bb_entry->size, bb_entry->func_id);
        break;
    }
    default: {
        break;
    }
    }

    return true; /* continue iteration */
}

static void
charm_table_print(void *drcontext, PMyThreadData data)
{
    ASSERT(data != NULL, "data must not be NULL");
    if (data->log == INVALID_FILE) {
        ASSERT(false, "invalid log file");
        return;
    }
    dr_fprintf(data->log, "BB Table: %u bbs\n", charmtable_num_entries(data->bb_table));
    if (TEST(NIII_DUMP_AS_TEXT, options.flags)) {
        dr_fprintf(data->log, "module id, start, size:\n");
        charmtable_iterate(data->bb_table, data, charm_bb_table_entry_print);
    } else
        charmtable_dump_entries(data->bb_table, data->log);
}

static void
dump_charm_data(void *drcontext, PMyThreadData data)
{
    if (data->log == INVALID_FILE) {
        /* It is possible that failure on log file creation is caused by the
         * running process not having enough privilege, so this is not a
         * release-build fatal error
         */
        ASSERT(false, "invalid log file");
        return;
    }
    version_print(data->log);
    drmodtrack_dump(data->log);
    func_track_dump(data->log, data);
    charm_table_print(drcontext, data);
}

static void
event_exit(void)
{

    int count = dr_atomic_add32_return_sum(&charmtrack_init_count, -1);

    if (!niii_per_thread) {
        dump_charm_data(NULL, global_data);
        global_data_destroy(global_data);
    }
    drmodtrack_exit();
    drmgr_unregister_tls_field(tls_idx);

    drx_exit();
    drmgr_exit();

    dr_printf("[*]All Done DynamoRIO Exited...\n");
    drmgr_exit();
    drreg_exit();
}

static void
event_thread_exit(void *drcontext)
{

    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    ASSERT(data != NULL, "data must not be NULL");

    if (niii_per_thread) {
        dump_charm_data(drcontext, data);
        thread_data_destroy(drcontext, data);
    } else {
        /* the per-thread data is a copy of global data */
        dr_thread_free(drcontext, data, sizeof(MyThreadData));
    }
}
static PMemEntry
func_mem_process(void *mem_table, void *addr, func_mem_type arg_type, uint func_id)
{
    size_t numbytes = SAFE_READ_MEM_MAX_SIZE;
    size_t bytesread;
    byte bytesbuf[SAFE_READ_MEM_MAX_SIZE];
    if ((uint)addr > 0x1000 && dr_safe_read(addr, numbytes, bytesbuf, &bytesread)) {
        PMemEntry mem_entry = (PMemEntry)charmtable_alloc(mem_table, 1, NULL);
        if (mem_entry != nullptr) {
            mem_entry->arg_type = arg_type;
            mem_entry->arg_size = bytesread;
            mem_entry->arg_value = addr;
            mem_entry->func_id = func_id;
            memcpy(mem_entry->arg_data, bytesbuf, bytesread);

            return mem_entry;
        }
    }
    return nullptr;
}

static PFuncWrapData
func_table_process_pre(PMyThreadData data, void *wrapcxt)
{
    PFuncWrapData wrap_data = (PFuncWrapData)dr_global_alloc(sizeof(*wrap_data));
    PFuncEntry func_entry = (PFuncEntry)charmtable_alloc(data->func_table, 1, NULL);

    wrap_data->thread_data = data;
    wrap_data->needPost = false;
    wrap_data->func_entry = func_entry;
    app_pc opFuncAddr = drwrap_get_func(wrapcxt);
    func_entry->func_id = charmtable_num_entries(data->func_table);

    if (func_entry->func_id==1) {
        dr_printf("[info]function first call\n");
    }
    global_func_id = func_entry->func_id;
    func_entry->timecall = dr_get_milliseconds();
    func_entry->funcaddr = opFuncAddr;
    func_entry->arg0 = drwrap_get_arg(wrapcxt, 0);
    func_entry->arg1 = drwrap_get_arg(wrapcxt, 1);
    func_entry->arg2 = drwrap_get_arg(wrapcxt, 2);
    func_entry->arg3 = drwrap_get_arg(wrapcxt, 3);
    func_entry->arg4 = drwrap_get_arg(wrapcxt, 4);
    func_entry->arg5 = drwrap_get_arg(wrapcxt, 5);
    func_entry->arg6 = drwrap_get_arg(wrapcxt, 6);
    func_mem_process(data->mem_table, func_entry->arg0, func_mem_type::FUNC_ARG0,
                     func_entry->func_id);
    func_mem_process(data->mem_table, func_entry->arg1, func_mem_type::FUNC_ARG1,
                     func_entry->func_id);
    func_mem_process(data->mem_table, func_entry->arg2, func_mem_type::FUNC_ARG2,
                     func_entry->func_id);
    func_mem_process(data->mem_table, func_entry->arg3, func_mem_type::FUNC_ARG3,
                     func_entry->func_id);
    func_mem_process(data->mem_table, func_entry->arg4, func_mem_type::FUNC_ARG4,
                     func_entry->func_id);
    func_mem_process(data->mem_table, func_entry->arg5, func_mem_type::FUNC_ARG5,
                     func_entry->func_id);
    func_mem_process(data->mem_table, func_entry->arg6, func_mem_type::FUNC_ARG6,
                     func_entry->func_id);

    return wrap_data;
}
static void
func_table_process_after(PMyThreadData data, PFuncWrapData wrap_data, void *wrapcxt)
{
    if (wrap_data != nullptr && wrap_data != nullptr) {
        wrap_data->func_entry->retval = drwrap_get_retval(wrapcxt);

        // dr_printf("retval :%08x\n", wrap_data->func_entry->retval);
        func_mem_process(data->mem_table, wrap_data->func_entry->retval,
                         func_mem_type::FUNC_RETVAL, wrap_data->func_entry->func_id);
        dr_global_free(wrap_data, sizeof(*wrap_data));
    }
}

static void
post_fuzz_handler(void *wrapcxt, INOUT void *user_data)
{

    void *drcontext = drwrap_get_drcontext(wrapcxt);
    PFuncWrapData wrap_data = (PFuncWrapData)user_data;
    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    func_table_process_after(data, wrap_data, wrapcxt);
}

static void
pre_fuzz_handler(void *wrapcxt, INOUT void **user_data)
{

    void *drcontext = drwrap_get_drcontext(wrapcxt);
    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    PFuncWrapData wrap_data = func_table_process_pre(data, wrapcxt);
    *user_data = (void *)wrap_data;
}

static void
createfilea_interceptorAfterW(void *wrapcxt, INOUT void *user_data)
{
    void *drcontext = drwrap_get_drcontext(wrapcxt);
    PFuncWrapData wrap_data = (PFuncWrapData)user_data;
    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    if (wrap_data->needPost) {

        void *retHandle = drwrap_get_retval(wrapcxt);

        dr_printf("OpenFile Return Handle :%08x\n", retHandle);
        dr_printf("after OpenFile, reading %ls\n", data->file_handle->filenameW);
        if (wcsstr(data->file_handle->filenameW, L"1.txt") != NULL) {
            void *drcontext = drwrap_get_drcontext(wrapcxt);
            data->file_handle->reservedHandle1 = retHandle;
        }
    }
    func_table_process_after(data, wrap_data, wrapcxt);
}
static void
createfilea_interceptorAfterA(void *wrapcxt, INOUT void *user_data)
{
    PFuncWrapData wrap_data = (PFuncWrapData)user_data;
    void *drcontext = drwrap_get_drcontext(wrapcxt);
    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    func_table_process_after(data, wrap_data, wrapcxt);
}

static void
createfilea_interceptorPreW(void *wrapcxt, INOUT void **user_data)
{
    void *drcontext = drwrap_get_drcontext(wrapcxt);
    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    PFuncWrapData wrap_data = func_table_process_pre(data, wrapcxt);
    ;

    BOOL write = false;

    if (data->file_handle) {
        write = data->file_handle->reservedHandle1 != nullptr;
    }
    if (!write) {
        PFileHandle fd = (PFileHandle)dr_global_alloc(sizeof(*fd));
        wchar_t *filename = (wchar_t *)drwrap_get_arg(wrapcxt, 0);
        if (wcsstr(filename, L"1.txt") != NULL) {
            wrap_data->needPost = true;
        }
        fd->reservedHandle1 = nullptr;
        fd->filenameW = filename;
        dr_printf("In OpenFile, reading %ls\n", filename);
        data->file_handle = fd;
    }
    *user_data = (void *)wrap_data;
}

static void
createfilea_interceptorPreA(void *wrapcxt, INOUT void **user_data)
{
}
static void
mapfilea_interceptorAfterW(void *wrapcxt, INOUT void *user_data)
{

    void *drcontext = drwrap_get_drcontext(wrapcxt);
    PFuncWrapData wrap_data = (PFuncWrapData)user_data;
    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    app_pc opFuncAddr = drwrap_get_func(wrapcxt);
    if (data->file_handle && wrap_data->needPost) {
        if (data->file_handle->reservedHandle1) {
            HANDLE hFile = (HANDLE)drwrap_get_retval(wrapcxt);
            //双重检测
            if (data->file_handle->opFunc == opFuncAddr) {
                data->file_handle->reservedHandle2 = hFile;
            }
        }
    }

    func_table_process_after(data, wrap_data, wrapcxt);
}
static void
mapfilea_interceptorPreW(void *wrapcxt, INOUT void **user_data)
{
    void *drcontext = drwrap_get_drcontext(wrapcxt);
    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    app_pc opFuncAddr = drwrap_get_func(wrapcxt);
    PFuncWrapData wrap_data = func_table_process_pre(data, wrapcxt);

    if (data->file_handle) {
        if (data->file_handle->reservedHandle1) {
            HANDLE hFile = (HANDLE)drwrap_get_arg(wrapcxt, 0);
            if (data->file_handle->reservedHandle1 == hFile) {
                wrap_data->needPost = true;

                data->file_handle->opFunc = opFuncAddr;
            }
        }
    }
    *user_data = (void *)wrap_data;
}
static void
viewfilea_interceptorAfter(void *wrapcxt, INOUT void *user_data)
{
    void *drcontext = drwrap_get_drcontext(wrapcxt);
    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    app_pc opFuncAddr = drwrap_get_func(wrapcxt);
    PFuncWrapData wrap_data = (PFuncWrapData)user_data;
    if (data->file_handle && wrap_data->needPost) {
        if (data->file_handle->reservedHandle2) {
            HANDLE hFile = (HANDLE)drwrap_get_retval(wrapcxt);
            if (data->file_handle->opFunc == opFuncAddr) {

                dr_printf("Fetch Real File Handle: " PFX ",PC %08x \n", hFile,
                          drwrap_get_retaddr(wrapcxt));
                if (!data->MemTrace[(uint)hFile >> 16 & 0xffff]) {
                    data->MemTrace[(uint)hFile >> 16 & 0xffff] =
                        (SubTrace *)dr_global_alloc(sizeof(SubTrace));
                }
                data->file_handle->opFunc = nullptr;
                memset(data->MemTrace[(uint)hFile >> 16 & 0xffff]->traceIndex, 0,
                       SHORTPATH);
                data->MemTrace[(uint)hFile >> 16 & 0xffff]
                    ->traceIndex[(uint)hFile & 0xffff]++;
                code_handle = (app_pc)hFile;
            }
        }
    }
    func_table_process_after(data, wrap_data, wrapcxt);
}
static void
viewfilea_interceptorPre(void *wrapcxt, INOUT void **user_data)
{
    void *drcontext = drwrap_get_drcontext(wrapcxt);
    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    app_pc opFuncAddr = drwrap_get_func(wrapcxt);
    PFuncWrapData wrap_data = func_table_process_pre(data, wrapcxt);
    wrap_data->thread_data = data;
    wrap_data->needPost = false;
    if (data->file_handle) {
        if (data->file_handle->reservedHandle2) {
            HANDLE hFile = (HANDLE)drwrap_get_arg(wrapcxt, 0);
            if (data->file_handle->reservedHandle2 == hFile) {
                wrap_data->needPost = true;

                data->file_handle->opFunc = opFuncAddr;
            }
        }
    }
    *user_data = (void *)wrap_data;
}

static void
charm_table_entry_add(void *drcontext, PMyThreadData data, app_pc start, uint size)
{

    uint mod_id;
    app_pc mod_start;
    niii_status_t res = drmodtrack_lookup(drcontext, start, &mod_id, &mod_start);
    if (res == NIII_SUCCESS) {
        PBBEntry bb_entry = (PBBEntry)charmtable_alloc(data->bb_table, 1, NULL);
        /* we do not de-duplicate repeated bbs */
        ASSERT(size < USHRT_MAX, "size overflow");
        bb_entry->call_type = BASIC_BLOCK;
        bb_entry->thread_id = dr_get_thread_id(drcontext);
        bb_entry->size = (ushort)size;
        bb_entry->func_id = global_func_id;
        bb_entry->start_from = 0;
        bb_entry->to = 0;
        //bb_entry->tos = 0;
        bb_entry->mod_id_to = 0;
        ASSERT(mod_id < INT_MAX, "module id overflow");
        bb_entry->mod_id_from = (ushort)mod_id;
        bb_entry->mod_id_to = (ushort)mod_id;
        ASSERT(start > mod_start, "wrong module");
        bb_entry->start_from = (uint)(start - mod_start);
        bb_entry->to = (uint)(start - mod_start + size);
    } /*else {
        /* XXX: we just truncate the address, which may have wrong value
         * in x64 arch. It should be ok now since it is an unknown module,
         * which will be ignored in the post-processing.
         * Should be handled for JIT code in the future.
         #1#
        bb_entry->mod_id_from = 0xffff;
        bb_entry->mod_id_to = 0xffff;
        bb_entry->start_from = (uint)(ptr_uint_t)start;
    }*/
}

static void
call_table_entry_add(void *drcontext, PMyThreadData data, uint call_type, app_pc from,
                     app_pc to, app_pc ret, uint tos, uint size)
{

    uint mod_id;
    uint mod_id2;
    app_pc mod_start;
    app_pc mod_start2;
    niii_status_t res = drmodtrack_lookup(drcontext, from, &mod_id, &mod_start);
    niii_status_t res2 = drmodtrack_lookup(drcontext, to, &mod_id2, &mod_start2);
    /* we do not de-duplicate repeated bbs */

    if ((res == NIII_SUCCESS && res2 == NIII_SUCCESS) ||
        (res == NIII_SUCCESS && res2 == NIII_PASS) ||
        (res == NIII_PASS && res2 == NIII_SUCCESS)) {
        PBBEntry cl_entry = (PBBEntry)charmtable_alloc(data->bb_table, 1, NULL);
        cl_entry->thread_id = dr_get_thread_id(drcontext);
        cl_entry->call_type = call_type;
        cl_entry->func_id = global_func_id;
        cl_entry->size = size;
        cl_entry->start_from = 0;
        //cl_entry->tos = tos;
        ASSERT(mod_id < INT_MAX, "module id overflow");
        cl_entry->mod_id_from = (ushort)mod_id;
        cl_entry->mod_id_to = (ushort)mod_id2;
        ASSERT(from > mod_start, "wrong module");
        cl_entry->start_from = (uint)(from - mod_start);
        if (ret) {
            cl_entry->ret = (uint)(ret - mod_start);
        } else {
            cl_entry->ret = 0;
        }

        cl_entry->to = (uint)(to - mod_start2);
    } /*else {
        /* XXX: we just truncate the address, which may have wrong value
         * in x64 arch. It should be ok now since it is an unknown module,
         * which will be ignored in the post-processing.
         * Should be handled for JIT code in the future.
         #1#
        cl_entry->mod_id_from = 0;
        cl_entry->mod_id_to = 0;
        cl_entry->start_from = (uint)from;
        cl_entry->to = (uint)to;
        cl_entry->ret = (uint)ret;
    }*/
}

/* We collect the basic block information including offset from module base,
 * size, and num of instructions, and add it into a basic block table without
 * instrumentation.
 */
static dr_emit_flags_t
event_basic_block_analysis(void *drcontext, void *tag, instrlist_t *bb, bool for_trace,
                           bool translating, OUT void **user_data)
{
    PMyThreadData data;
    instr_t *instr;
    app_pc tag_pc, start_pc, end_pc;

    /* do nothing for translation */
    if (translating)
        return DR_EMIT_DEFAULT;

    data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    /* Collect the number of instructions and the basic block size,
     * assuming the basic block does not have any elision on control
     * transfer instructions, which is true for default options passed
     * to DR but not for -opt_speed.
     */
    /* We separate the tag from the instr pc ranges to handle displaced code
     * such as for the vsyscall hook.
     */
    tag_pc = dr_fragment_app_pc(tag);
    start_pc = instr_get_app_pc(instrlist_first_app(bb));
    end_pc = start_pc; /* for finding the size */
    for (instr = instrlist_first_app(bb); instr != NULL;
         instr = instr_get_next_app(instr)) {
        app_pc pc = instr_get_app_pc(instr);
        int len = instr_length(drcontext, instr);
        /* -opt_speed (elision) is not supported */
        /* For rep str expansion pc may be one back from start pc but equal to the tag. */
        ASSERT(pc != NULL && (pc >= start_pc || pc == tag_pc),
               "-opt_speed is not supported");
        if (pc + len > end_pc)
            end_pc = pc + len;
    }
    /* We allow duplicated basic blocks for the following reasons:
     * 1. Avoids handling issues like code cache consistency, e.g.,
     *    module load/unload, self-modifying code, etc.
     * 2. Avoids the overhead on duplication check.
     * 3. Stores more information on code cache events, e.g., trace building,
     *    repeated bb building, etc.
     * 4. The duplication can be easily handled in a post-processing step,
     *    which is required anyway.
     */
    charm_table_entry_add(drcontext, data, tag_pc, (uint)(end_pc - start_pc));
    // return DR_EMIT_DEFAULT;
    if (go_native)
        return DR_EMIT_GO_NATIVE;
    else
        return DR_EMIT_DEFAULT;
}

static void
at_call(app_pc instr_addr, app_pc target_addr)
{
    dr_mcontext_t mc = { sizeof(mc), DR_MC_CONTROL /*only need xsp*/ };

    void *drcontext = dr_get_current_drcontext();
    ASSERT(drcontext != NULL, "drcontext can not be null");
    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    ASSERT(data != NULL, "data can not be null");
    dr_get_mcontext(drcontext, &mc);
    instr_t *instr;
    /* app_pc next_instr = (app_pc)decode_next_pc(drcontext, (byte *)instr_addr);
   instrlist_t *bb = decode_as_bb(drcontext, instr_addr);
    for (instr = instrlist_first_app(bb); instr != NULL;
         instr = instr_get_next_app(instr)) {
        app_pc pc = instr_get_app_pc(instr);
        int len = instr_length(drcontext, instr);
        if (pc + len > next_instr)
            next_instr = pc + len;
    }*/
    instrlist_t *bb = decode_as_bb(drcontext, instr_addr);
    instr = instrlist_last(bb);
    app_pc pc = instr_get_app_pc(instr);
    int len = instr_length(drcontext, instr);
    app_pc next_instr = pc + len;

    /*
#ifdef SHOW_SYMBOLS
    print_address(f, instr_addr, "CALL @ ");
    print_address(f, target_addr, "\t to ");
    dr_fprintf(f, "\tTOS is " PFX "\n", mc.xsp);
#else
    //dr_printf("CALL @ " PFX " to " PFX ", TOS is " PFX "\n", instr_addr, target_addr,
mc.xsp); #endif
*/

    call_table_entry_add(drcontext, data, FUNC_DIRECT_CALL, instr_addr, target_addr,
                         next_instr, mc.xsp, (uint)(next_instr - instr_addr));
}

static void
at_call_ind(app_pc instr_addr, app_pc target_addr)
{
    dr_mcontext_t mc = { sizeof(mc), DR_MC_CONTROL /*only need xsp*/ };

    void *drcontext = dr_get_current_drcontext();
    ASSERT(drcontext != NULL, "drcontext can not be null");
    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    ASSERT(data != NULL, "data can not be null");
    dr_get_mcontext(drcontext, &mc);
    instr_t *instr;
    /*app_pc next_instr = (app_pc)decode_next_pc(drcontext, (byte *)instr_addr);
    instrlist_t *bb = decode_as_bb(drcontext, instr_addr);
    for (instr = instrlist_first_app(bb); instr != NULL;
         instr = instr_get_next_app(instr)) {
        app_pc pc = instr_get_app_pc(instr);
        int len = instr_length(drcontext, instr);
        if (pc + len > next_instr)
            next_instr = pc + len;
    }*/
    instrlist_t *bb = decode_as_bb(drcontext, instr_addr);
    instr = instrlist_last(bb);
    app_pc pc = instr_get_app_pc(instr);
    int len = instr_length(drcontext, instr);
    app_pc next_instr = pc + len;
    /*
#ifdef SHOW_SYMBOLS
    print_address(f, instr_addr, "CALL INDIRECT @ ");
    print_address(f, target_addr, "\t to ");
#else
   // dr_printf( "CALL INDIRECT @ " PFX " to " PFX "\n", instr_addr, target_addr);
#endif
*/

    call_table_entry_add(drcontext, data, FUNC_INDIRECT_CALL, instr_addr, target_addr,
                         next_instr, 0, (uint)(next_instr - instr_addr));
}

static void
at_return(app_pc instr_addr, app_pc target_addr)
{
    
    uint mod_id;
    app_pc mod_start;
    if (target_addr && (uint)target_addr < 0xBFFFFFFF) {

        void *drcontext = dr_get_current_drcontext();
        niii_status_t res =
            drmodtrack_lookup(drcontext, target_addr, &mod_id, &mod_start);
        if (res == NIII_SUCCESS) {
            dr_mcontext_t mc = { sizeof(mc), DR_MC_CONTROL /*only need xsp*/ };

            ASSERT(drcontext != NULL, "drcontext can not be null");
            PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
            ASSERT(data != NULL, "data can not be null");
            /*#ifdef SHOW_SYMBOLS
                print_address(f, instr_addr, "RETURN @ ");
                print_address(f, target_addr, "\t to ");
            #else
               // dr_printf( "RETURN @ " PFX " to " PFX "\n", instr_addr, target_addr);
            #endif*/
            instr_t *instr;
            /*  app_pc next_instr = (app_pc)decode_next_pc(drcontext, (byte *)instr_addr);
           instrlist_t *bb = decode_as_bb(drcontext, instr_addr);
            for (instr = instrlist_first_app(bb); instr != NULL;
                 instr = instr_get_next_app(instr)) {
                app_pc pc = instr_get_app_pc(instr);
                int len = instr_length(drcontext, instr);
                if (pc + len > next_instr)
                    next_instr = pc + len;
            }*/

            instrlist_t *bb = decode_as_bb(drcontext, instr_addr);
            instr = instrlist_last(bb);
            app_pc pc = instr_get_app_pc(instr);
            int len = instr_length(drcontext, instr);
            app_pc next_instr = pc + len;
            call_table_entry_add(drcontext, data, FUNC_RETURN, instr_addr, target_addr, 0,
                                 0, (uint)(next_instr - instr_addr));
        }
    }
}

static dr_emit_flags_t
event_bb_insert(void *drcontext, void *tag, instrlist_t *bb, instr_t *instr,
                bool for_trace, bool translating, void *user_data)
{

    if (options.fuzz_module != NULL & global_func_id==0) {
        return DR_EMIT_DEFAULT;
    }
    PMyThreadData data = (PMyThreadData)drmgr_get_tls_field(drcontext, tls_idx);
    // instr_t *instr;
    app_pc tag_pc, start_pc, end_pc;

    tag_pc = dr_fragment_app_pc(tag);
    /* do nothing for translation */

    uint mod_id;

    app_pc mod_start;

    niii_status_t res = drmodtrack_lookup(drcontext, tag_pc, &mod_id, &mod_start);

    /* we do not de-duplicate repeated bbs */

    if (res == NIII_SUCCESS) {

        if (instr_is_call_direct(instr)) {

            dr_insert_call_instrumentation(drcontext, bb, instr, (app_pc)at_call);
        } else if (instr_is_call_indirect(instr)) {
            dr_insert_mbr_instrumentation(drcontext, bb, instr, (app_pc)at_call_ind,
                                          SPILL_SLOT_1);
        }
    }
    
    if ((res == NIII_SUCCESS||res == NIII_PASS)&&instr_is_return(instr)) {
        dr_insert_mbr_instrumentation(drcontext, bb, instr, (app_pc)at_return,
                                      SPILL_SLOT_2);
    }
    if (translating)
        return DR_EMIT_DEFAULT;
    /* Collect the number of instructions and the basic block size,
     * assuming the basic block does not have any elision on control
     * transfer instructions, which is true for default options passed
     * to DR but not for -opt_speed.
     */
    /* We separate the tag from the instr pc ranges to handle displaced code
     * such as for the vsyscall hook.
     */

    start_pc = instr_get_app_pc(instrlist_first_app(bb));
    end_pc = start_pc; /* for finding the size */
    for (instr = instrlist_first_app(bb); instr != NULL;
         instr = instr_get_next_app(instr)) {
        app_pc pc = instr_get_app_pc(instr);
        int len = instr_length(drcontext, instr);
        /* -opt_speed (elision) is not supported */
        /* For rep str expansion pc may be one back from start pc but equal to the tag. */
        ASSERT(pc != NULL && (pc >= start_pc || pc == tag_pc),
               "-opt_speed is not supported");
        if (pc + len > end_pc)
            end_pc = pc + len;
    }
    /* We allow duplicated basic blocks for the following reasons:
     * 1. Avoids handling issues like code cache consistency, e.g.,
     *    module load/unload, self-modifying code, etc.
     * 2. Avoids the overhead on duplication check.
     * 3. Stores more information on code cache events, e.g., trace building,
     *    repeated bb building, etc.
     * 4. The duplication can be easily handled in a post-processing step,
     *    which is required anyway.
     */
    charm_table_entry_add(drcontext, data, tag_pc, (uint)(end_pc - start_pc));
    //  return DR_EMIT_DEFAULT;
    if (go_native)
        return DR_EMIT_GO_NATIVE;
    else
        return DR_EMIT_DEFAULT;
}

static void
module_load_event(void *drcontext, const module_data_t *mod, bool loaded)
{
    app_pc addr_replace_win;
    app_pc to_wrap;
    app_pc to_wrap_map;
    app_pc to_wrap_view;

    const char *modname = dr_module_preferred_name(mod);
    dr_printf("modname:%s,base: %08x,end: %08x\n", modname, mod->start, mod ->end);
    
    if (_stricmp(modname, options.fuzz_module) == 0) {
        if (options.fuzz_offset) {
            to_wrap = mod->start + options.fuzz_offset;
        } else {
            // first try exported symbols
            to_wrap = (app_pc)dr_get_proc_address(mod->handle, options.fuzz_method);
            if (!to_wrap) {
                // if that fails, try with the symbol access library
#ifdef USE_DRSYMS
                drsym_init(0);
                drsym_lookup_symbol(info->full_path, options.fuzz_method,
                                    (size_t *)(&to_wrap), 0);
                drsym_exit();
#endif
                DR_ASSERT_MSG(to_wrap, "Can't find specified method in fuzz_module");
                to_wrap += (size_t)mod->start;
            }
        }

      

        bool ret=drwrap_wrap_ex(to_wrap, pre_fuzz_handler, post_fuzz_handler, NULL,
                       options.callconv);

        dr_printf("modname:%s,trace function :%08x, drwrap_wrap_ex ret %d\n", modname,to_wrap, ret);
    } /* else if (strcmp(modname, "KERNEL32.dll") == 0) {

         to_wrap = (app_pc)dr_get_proc_address(mod->handle, "CreateFileW");
         drwrap_wrap_ex(to_wrap, createfilea_interceptorPreW,
                        createfilea_interceptorAfterW, NULL, DRWRAP_CALLCONV_DEFAULT);
         to_wrap = (app_pc)dr_get_proc_address(mod->handle, "CreateFileA");
         drwrap_wrap_ex(to_wrap, createfilea_interceptorPreA,
                        createfilea_interceptorAfterA, NULL, DRWRAP_CALLCONV_DEFAULT);
         to_wrap_map = (app_pc)dr_get_proc_address(mod->handle, "CreateFileMappingW");
         drwrap_wrap_ex(to_wrap_map, mapfilea_interceptorPreW, mapfilea_interceptorAfterW,
                        NULL, DRWRAP_CALLCONV_DEFAULT);
         /*to_wrap = (app_pc)dr_get_proc_address(mod->handle, "CreateFileMappingA");
         drwrap_wrap_ex(to_wrap, createfilea_interceptorPreA,
         createfilea_interceptorAfterA, NULL, DRWRAP_CALLCONV_DEFAULT);#1#
         to_wrap_view = (app_pc)dr_get_proc_address(mod->handle, "MapViewOfFile");
         drwrap_wrap_ex(to_wrap_view, viewfilea_interceptorPre,
     viewfilea_interceptorAfter, NULL, DRWRAP_CALLCONV_DEFAULT);
     }*/
}


const char *
d_r_parse_int(const char *sp, uint64 *res_out, uint base, uint width, bool is_signed)
{
    bool negative = false;
    uint64 res = 0;
    uint i; /* Use an index rather than pointer to compare with width. */

    /* Check for invalid base. */
    if (base > 36 || base == 1) {
        *res_out = (uint64)-1LL;
        return NULL;
    }

    /* Check for negative sign if signed. */
    if (is_signed) {
        if (*sp == '-') {
            negative = true;
            sp++;
        }
    }

    /* Ignore leading +. */
    if (!negative && *sp == '+')
        sp++;

    /* 0x prefix for hex is optional. */
    if ((base == 0 || base == 16) && sp[0] == '0' && sp[1] == 'x') {
        sp += 2;
        if (base == 0)
            base = 16;
    }

    /* Leading '0' with 0 base means octal. */
    if (base == 0 && *sp == '0') {
        base = 8;
        sp++;
    }

    /* If we didn't find leading '0' or "0x", base is 10. */
    if (base == 0)
        base = 10;

    /* XXX: For efficiency we could do a couple things:
     * - Specialize the loop on base
     * - Use a lookup table
     */
    for (i = 0; width == 0 || i < width; i++) {
        uint d = sp[i];
        if (d >= '0' && d <= '9') {
            d -= '0';
        } else if (d >= 'a' && d <= 'z') {
            d = d - 'a' + 10;
        } else if (d >= 'A' && d <= 'Z') {
            d = d - 'A' + 10;
        } else {
            break; /* Non-digit character.  Could be \0. */
        }
        /* Stop the parse here if this digit was not valid for the current base,
         * (e.g. 9 for octal of g for hex).
         */
        if (d >= base)
            break;
        /* FIXME: Check for overflow. */
        /* XXX: int64 multiply is inefficient on 32-bit. */
        res = res * base + d;
    }

    /* No digits found, return failure. */
    if (i == 0)
        return NULL;

    if (negative)
        res = -(int64)res;

    *res_out = res;
    return sp + i;
}

unsigned long
d_r_strtoul(const char *str, char **end, int base)
{
    uint64 num;
    const char *parse_end = d_r_parse_int(str, &num, base, 0 /*width*/, true /*signed*/);
    if (end != NULL)
        *end = (char *)parse_end;
    if (parse_end == NULL)
        return ULONG_MAX;
    return (unsigned long)num; /* truncate */
}
static void
options_init(client_id_t id, int argc, const char *argv[], Niii_Options *ops)
{
    int i;
    const char *token;
    /* default values */
    nudge_kills = true;

    for (i = 1 /*skip client*/; i < argc; i++) {
        token = argv[i];
        if (strcmp(token, "-dump_text") == 0)
            ops->flags |= NIII_DUMP_AS_TEXT;
        else if (strcmp(token, "-dump_binary") == 0)
            ops->flags &= ~NIII_DUMP_AS_TEXT;
        else if (strcmp(token, "-no_nudge_kills") == 0)
            nudge_kills = false;
        else if (strcmp(token, "-nudge_kills") == 0)
            nudge_kills = true;
        else if (strcmp(token, "-logdir") == 0) {
            USAGE_CHECK((i + 1) < argc, "missing logdir path");
            ops->logdir = argv[++i];
            dr_printf("using logdir %s\n", ops->logdir);
        } else if (strcmp(token, "-logprefix") == 0) {
            USAGE_CHECK((i + 1) < argc, "missing logprefix string");
            ops->logprefix = argv[++i];
        } else if (strcmp(token, "-native_until_thread") == 0) {
            USAGE_CHECK((i + 1) < argc, "missing -native_until_thread number");
            token = argv[++i];
            if (dr_sscanf(token, "%d", &ops->native_until_thread) != 1 ||
                ops->native_until_thread < 0) {
                ops->native_until_thread = 0;
                USAGE_CHECK(false, "invalid -native_until_thread number");
            }
        } else if (strcmp(token, "-verbose") == 0) {
            /* XXX: should NIII expose its internal verbose param? */
            USAGE_CHECK((i + 1) < argc, "missing -verbose number");
            token = argv[++i];
            if (dr_sscanf(token, "%u", &verbose) != 1) {
                USAGE_CHECK(false, "invalid -verbose number");
            }

        }
        else if (strcmp(token, "-trace_module") == 0) {
            USAGE_CHECK((i + 1) < argc, "missing module");
            strncpy(ops->mod_trace_name, argv[++i],
                    BUFFER_SIZE_ELEMENTS(ops->mod_trace_name));
            dr_printf("tracing %s\n", ops->mod_trace_name);
        } else if (strcmp(token, "-target_module") == 0) {
            USAGE_CHECK((i + 1) < argc, "missing module");
            strncpy(ops->fuzz_module, argv[++i], BUFFER_SIZE_ELEMENTS(ops->fuzz_module));
            dr_printf("fuzzing target module %s\n", ops->fuzz_module);
        } else if (strcmp(token, "-target_method") == 0) {
            USAGE_CHECK((i + 1) < argc, "missing method");            
            strncpy(ops->fuzz_method, argv[++i], BUFFER_SIZE_ELEMENTS(ops->fuzz_method));
            dr_printf("fuzzing target method %s\n", ops->fuzz_method);
        } else if (strcmp(token, "-target_offset") == 0) {
            USAGE_CHECK((i + 1) < argc, "missing offset");
            options.fuzz_offset = d_r_strtoul(argv[++i], NULL, 16);
            dr_printf("fuzzing target method %08x\n", ops->fuzz_offset);
        } else if (strcmp(token, "-call_convention") == 0) {
            USAGE_CHECK((i + 1) < argc, "missing calling convention");
            ++i;
            if (strcmp(argv[i], "stdcall") == 0)
                ops->callconv = DRWRAP_CALLCONV_CDECL;
            else if (strcmp(argv[i], "fastcall") == 0)
                ops->callconv = DRWRAP_CALLCONV_FASTCALL;
            else if (strcmp(argv[i], "thiscall") == 0)
                ops->callconv = DRWRAP_CALLCONV_THISCALL;
            else if (strcmp(argv[i], "ms64") == 0)
                ops->callconv = DRWRAP_CALLCONV_MICROSOFT_X64;
            else
                NOTIFY(0, "Unknown calling convention, using default value instead.\n");
        } else {
            NOTIFY(0, "UNRECOGNIZED OPTION: \"%s\"\n", token);
            USAGE_CHECK(false, "invalid option");
        }
    }
    if (dr_using_all_private_caches())
        ops->flags |= NIII_THREAD_PRIVATE;
}

static void *
global_data_create(void)
{
    return thread_data_create(NULL);
}

static niii_status
event_init(void)
{
    niii_status res;
    uint64 max_elide_jmp = 0;
    uint64 max_elide_call = 0;
    /* assuming no elision */
    if (!dr_get_integer_option("max_elide_jmp", &max_elide_jmp) ||
        !dr_get_integer_option("max_elide_call", &max_elide_jmp) || max_elide_jmp != 0 ||
        max_elide_call != 0)
        return NIII_ERROR_INVALID_SETUP;

    /* create module table */
    res = drmodtrack_init();
    if (res != NIII_SUCCESS)
        return res;

    /* create process data if whole process bb coverage. */
    if (!niii_per_thread)
        global_data = (PMyThreadData)global_data_create();
    return NIII_SUCCESS;
}

DR_EXPORT void
dr_client_main(client_id_t id, int argc, const char *argv[])
{
    dr_enable_console_printing();
    options = {
        sizeof(options),
    };
    options.callconv = DRWRAP_CALLCONV_DEFAULT;
    dr_set_client_name("DrCov", "http://dynamorio.org/issues");
    client_id = id;

    options_init(id, argc, argv, &options);

    dr_set_client_name("DynamoRIO NIII tracer", "https://www.niii.com/");

    drmgr_priority_t priority = { sizeof(priority), /* size of struct */
                                  "memtrace",       /* name of our operation */
                                  NULL, /* optional name of operation we should precede */
                                  NULL, /* optional name of operation we should follow */
                                  NULL }; /* numeric priority */

    int count = dr_atomic_add32_return_sum(&niii_init_count, 1);
    if (count > 1)
        return;

    if (options.struct_size != sizeof(options))
        return;
    if ((options.flags & (~(NIII_DUMP_AS_TEXT | NIII_THREAD_PRIVATE))) != 0)
        return;
    if (TEST(NIII_THREAD_PRIVATE, options.flags)) {
        if (!dr_using_all_private_caches())
            return;
        niii_per_thread = true;
    }

    if (options.logdir != NULL)
        dr_snprintf(logdir, BUFFER_SIZE_ELEMENTS(logdir), "%s", options.logdir);
    else /* default */
        dr_snprintf(logdir, BUFFER_SIZE_ELEMENTS(logdir), ".");
    NULL_TERMINATE_BUFFER(logdir);
    options.logdir = logdir;
    if (options.logprefix == NULL)
        options.logprefix = "drcov";
    if (options.native_until_thread > 0)
        go_native = true;
    options.native_until_thread = 0;
    go_native = false;
    drmgr_init();
    drx_init();

    drwrap_init();

    dr_register_exit_event(event_exit);

    tls_idx = drmgr_register_tls_field();

    // drmgr_register_bb_instrumentation_event(event_basic_block_analysis,
    // event_bb_insert, &priority);
    drmgr_register_bb_instrumentation_event(NULL, event_bb_insert, &priority);
    drmgr_register_exception_event(event_exception_instrumentation);

    drmgr_register_module_load_event(module_load_event);
    // drmgr_register_module_unload_event(event_module_unload);
    drmgr_register_thread_init_event(event_thread_init);
    drmgr_register_thread_exit_event(event_thread_exit);

    event_init();
}