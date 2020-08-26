#pragma once

#ifndef _NIII_PRIVATE_H_
#    define _NIII_PRIVATE_H_




#include "dr_api.h" /* for file_t, client_id_t */
#include <stdio.h>

#define BUFFER_SIZE_BYTES(buf) sizeof(buf)
#define BUFFER_SIZE_ELEMENTS(buf) (BUFFER_SIZE_BYTES(buf) / sizeof((buf)[0]))
#define BUFFER_LAST_ELEMENT(buf) (buf)[BUFFER_SIZE_ELEMENTS(buf) - 1]
#define NULL_TERMINATE_BUFFER(buf) BUFFER_LAST_ELEMENT(buf) = 0

#ifdef WINDOWS
#    define IF_WINDOWS(x) x
#    define IF_UNIX_ELSE(x, y) y
#else
#    define IF_WINDOWS(x)
#    define IF_UNIX_ELSE(x, y) x
#endif

#ifdef WINDOWS
#    define DISPLAY_STRING(msg) dr_messagebox("%s", msg)
#    define IF_WINDOWS(x) x
#else
#    define DISPLAY_STRING(msg) dr_printf("%s\n", msg);
#    define IF_WINDOWS(x) /* nothing */
#endif



/* check if all bits in mask are set in var */
#    define TESTALL(mask, var) (((mask) & (var)) == (mask))
/* check if any bit in mask is set in var */
#    define TESTANY(mask, var) (((mask) & (var)) != 0)
/* check if a single bit is set in var */
#    define TEST TESTANY

#    ifdef DEBUG
#        define ASSERT(x, msg) DR_ASSERT_MSG(x, msg)
#        define NOTIFY(level, fmt, ...)                   \
            do {                                          \
                if (verbose >= (level))                   \
                    dr_fprintf(STDERR, fmt, __VA_ARGS__); \
            } while (0)
#    else
#        define ASSERT(x, msg)          /* nothing */
#        define NOTIFY(level, fmt, ...) /* nothing */
#    endif

/* Checks for both debug and release builds: */
#    define USAGE_CHECK(x, msg) DR_ASSERT_MSG(x, msg)


#    define ALIGNED(x, alignment) ((((ptr_uint_t)x) & ((alignment)-1)) == 0)
#    define ALIGN_FORWARD(x, alignment) \
        ((((ptr_uint_t)x) + ((alignment)-1)) & (~((alignment)-1)))
#    define ALIGN_BACKWARD(x, alignment) \
        (((ptr_uint_t)x) & (~((ptr_uint_t)(alignment)-1)))

#    define MAX(x, y) ((x) >= (y) ? (x) : (y))


#define SHORTPATH 65535
#define SAFE_READ_MEM_MAX_SIZE 256

#    ifdef __cplusplus
extern "C" {
#    endif

#    define TREACEFLAG(t) \
        t == TRACE_ALWAYS ? NIII_SUCCESS : t == TRACE_INCLUDE ? NIII_INCLUDE : NIII_PASS
/** Bitmask flags for use in #NIII_options_t.flags. */
typedef enum {
    /**
     * Requests to dump the log file in text format.  By default the log file is
     * in binary format.  When in text format, the log file is \em not readable
     * by the post-processing tool \ref sec_drcov2lcov.
     */
    NIII_DUMP_AS_TEXT = 0x0001,
    /**
     * By default, coverage information is dumped in a single process-wide log
     * file.  If DynamoRIO is run with thread-private code caches (i.e.,
     * dr_using_all_private_caches() returns true) and this flag is enabled,
     * then per-thread coverage information will be stored and dumped in \p
     * NIII's own thread exit events rather than in NIII_exit().
     */
    NIII_THREAD_PRIVATE = 0x0002,

    NIII_ALWAYS_INSTRUCTION = 0x0004,

    NIII_FOLLOW_FUNCTION = 0x0008,
    NIII_RESTRICT_FUNCTION = 0x0010,
    NIII_DUMP_ARGS_FUNCTION = 0x0020,
} niii_flags_t;


typedef enum {
    NIII_SUCCESS,                 /**< Operation succeeded. */
    NIII_PASS,                 /**< Operation succeeded. */
    NIII_INCLUDE,                 /**< Operation succeeded. */
    NIII_ERROR,                   /**< Operation failed. */
    NIII_ERROR_INVALID_PARAMETER, /**< Operation failed: invalid parameter */
    NIII_ERROR_INVALID_SETUP,     /**< Operation failed: invalid DynamoRIO setup */
    NIII_ERROR_FEATURE_NOT_AVAILABLE, /**< Operation failed: not available */
    NIII_ERROR_NOT_FOUND,             /**< Operation failed: query not found. */
    NIII_ERROR_BUF_TOO_SMALL,         /**< Operation failed: buffer too small. */
} niii_status_t, niii_status;


typedef enum {
    TRACE_ALWAYS,                 /**< Operation succeeded. */    
    TRACE_INCLUDE,
    TRACE_EXCLUDE,
} niii_trace_t,    niii_trace;



typedef enum {
    FUNC_RETVAL=0,
    FUNC_ARG0=1,
    FUNC_ARG1=2,
    FUNC_ARG2=3,
    FUNC_ARG3=4,
    FUNC_ARG4=5,
    FUNC_ARG5=6,
    FUNC_ARG6=7,
} func_mem_type_t,func_mem_type;

typedef enum {
    FUNC_DIRECT_CALL = 0,
    FUNC_INDIRECT_CALL = 1,
    FUNC_RETURN = 2,   
    BASIC_BLOCK = 3,   
} call_ret_type_t, call_ret_type;

typedef struct _SubTrace {
    byte traceIndex[SHORTPATH];
} SubTrace, *PSubTrace;

typedef struct _ThreadTrace {
    bool for_trace;
    app_pc ret;
} ThreadTrace, *PThreadTrace;


typedef struct _FileHandle {
    HANDLE reservedHandle1;
    HANDLE reservedHandle2;
    app_pc opFunc;
    union {
        
        wchar_t *filenameW;
        char *filenameA;
    };
} FileHandle, *PFileHandle;


typedef struct _BBEntry {
    ushort thread_id;
    ushort call_type;    
    ushort size;
    ushort mod_id_from;
    ushort mod_id_to;
    ushort func_id; 
    uint start_from; 
    uint to;
    uint ret;   
} BBEntry, *PBBEntry;



typedef struct _FuncEntry {
    ushort func_id;
    uint64 timecall;
    void *funcaddr;
    void *retval; /* offset of bb start from the image base */
    void *arg0;
    void *arg1;
    void *arg2;
    void *arg3;
    void *arg4;
    void *arg5;
    void *arg6;
    
} FuncEntry, *PFuncEntry;

typedef struct _MemEntry {
    uint func_id;
    func_mem_type arg_type;
    uint arg_size;
    void *arg_value;
    byte arg_data[SAFE_READ_MEM_MAX_SIZE];
  } MemEntry, *PMemEntry;


typedef struct _MyThreadData {
    void *bb_table;
    void *func_table;
    void *mem_table;  
    file_t log;
    PSubTrace MemTrace[SHORTPATH];
    PFileHandle file_handle;
    char logname[MAXIMUM_PATH];
} MyThreadData, *PMyThreadData;


typedef struct _FuncWrapData {
    PMyThreadData   thread_data;
    PFuncEntry func_entry;
    bool needPost ;
} FuncWrapData, *PFuncWrapData;

/***************************************************************************
 * Module tracking
 */

/** Information for one module as recorded during execution. */
typedef struct _charmtrack_info_t {
    /**
     * Used for compatibility purposes for adding new fields, the user must
     * set this value to the size of the structure.
     */
    size_t struct_size;
    /**
     * The unique index of the module segment for the base address of the
     * containing module.  If the module consists of a single contiguous mapping
     * (the typical case), there is only one index for the whole module.
     * If the module has gaps in its mapping, each non-contiguous segment has its
     * own index, with this field pointing to the index of the segment with
     * the lowest base address.
     */
    uint containing_index;
    /**
     * The start address of this segment of the module as it was during
     * execution.  If the module has multiple non-contiguous segments, each
     * segment will have a distinct entry with its own unique index identifier.
     * The \p containing_index field can be used to identify which segments
     * belong to the same module.  They will also all have the same \p path.
     */
    app_pc start;
    /** The size of this segment of the module. */
    size_t size;
    /**
     * The full path to the file backing the module.  This points to a buffer of
     * size #MAXIMUM_PATH.  It can be modified.
     */
    char *path;
#    ifdef WINDOWS
    /** The checksum field as stored in the module headers. */
    uint checksum;
    /** The timestamp field as stored in the module headers. */
    uint timestamp;
#    endif
    /** The custom field set by the \p load_cb passed to drmodtrack_add_custom_data(). */
    void *custom;
    /**
     * The unique index of this module segment.  This equals the \p index parameter
     * passed to drmodtrack_offline_lookup().
     */
    uint index;
    /**
     * The offset of this segment from the beginning of this backing file.
     */
    uint64 offset;
} charmtrack_info;


DR_EXPORT
/**
 * Initializes drcovlib's module tracking feature.  Must be called
 * prior to any of the other online routines.  Can be called multiple
 * times (by separate components, normally) but each call must be
 * paired with a corresponding call to drmodtrack_exit().
 *
 * @return whether successful or an error code on failure.
 */
niii_status_t
drmodtrack_init(void);

DR_EXPORT
/**
 * Returns the base address in \p mod_base and the unique index identifier in \p
 * mod_index for the module that contains \p pc.  If there is no such module,
 * returns DRCOVLIB_ERROR_NOT_FOUND.  For modules that containing multiple
 * non-contiguous mapped segments, each segment has its own unique identifier, and
 * this routine returns the appropriate identifier, but \p mod_base contains the
 * lowest address of any segment in the module, not the start address of the
 * segment that contains pc.
 */
niii_status_t
drmodtrack_lookup(void *drcontext, app_pc pc, OUT uint *mod_index, OUT app_pc *mod_base);

DR_EXPORT
/**
 * Writes the complete module information to \p file.  The information can be read
 * back in using \p drmodtrack_offline_read().
 */
niii_status_t
drmodtrack_dump(file_t file);

DR_EXPORT
/**
 * Writes the complete module information to \p buf as a null-terminated string.
 * Returns DRCOVLIB_SUCCESS on success and stores the number of bytes written to
 * \p buf (including the terminating null) in \p wrote if \p wrote is not NULL.
 * If the buffer is too small, returns DRCOVLIB_ERROR_BUF_TOO_SMALL.
 */
niii_status_t
drmodtrack_dump_buf(char *buf, size_t size, OUT size_t *wrote);

DR_EXPORT
/**
 * Cleans up the module tracking state.
 */
niii_status_t
drmodtrack_exit(void);

DR_EXPORT
/**
 * Usable from standalone mode (hence the "offline" name).  Reads a file written
 * by drmodtrack_dump().  If \p file is not INVALID_FILE, reads from \p file;
 * otherwise, assumes the target file has been mapped into memory at \p map and
 * reads from there.  If \p next_line is not NULL, this routine reads one
 * character past the final newline of the final module in the list, and returns
 * in \p *next_line a pointer to that character (this is intended for users who
 * are embedding a module list inside a file with further data following the
 * list in the file).  If \p next_line is NULL, this routine stops reading at
 * the final newline: thus, \p map need not be NULL-terminated.
 * Although \p map uses a char type, it cannot be assumed to be a regular string:
 * binary data containing zeroes may be embedded inside it.
 *
 * Returns an identifier in \p handle to use with other offline routines, along
 * with the number of modules read in \p num_mods.  Information on each module
 * can be obtained by calling drmodtrack_offline_lookup() and passing integers
 * from 0 to the number of modules minus one as the \p index.
 */
niii_status_t
drmodtrack_offline_read(file_t file, const char *map, OUT const char **next_line,
                        OUT void **handle, OUT uint *num_mods);

DR_EXPORT
/**
 * Queries the information that was read earlier by
 * drmodtrack_offline_read() into \p handle, returning it in \p info.
 * The caller must initialize the \p size field of \p info before
 * calling.  The \p info.path field can be modified, with the modified
 * version later written out via drmodtrack_offline_write().  The
 * path's containing buffer size is limited to MAXIMUM_PATH.
 */
niii_status_t
drmodtrack_offline_lookup(void *handle, uint index, OUT charmtrack_info *info);

DR_EXPORT
/**
 * Writes the module information that was read by drmodtrack_offline_read(),
 * and potentially modified by drmodtrack_offline_lookup(), to \p buf, whose
 * maximum size is specified in \p size.
 * Returns DRCOVLIB_SUCCESS on success and stores the number of bytes written to
 * \p buf (including the terminating null) in \p wrote if \p wrote is not NULL.
 * If the buffer is too small, returns DRCOVLIB_ERROR_BUF_TOO_SMALL (and does not
 * set \p wrote).
 */
niii_status_t
drmodtrack_offline_write(void *handle, char *buf, size_t buf_size, OUT size_t *wrote);

DR_EXPORT
/**
 * Cleans up the offline module state for \p handle.
 */
niii_status_t
drmodtrack_offline_exit(void *handle);

DR_EXPORT
/**
 * Adds custom data stored with each module, serialized to a buffer or file, and
 * read back in.  The \p load_cb, \p print_cb, and \p free_cb are used during
 * online operation, while \p parse_cb and \p free_cb are used for offline
 * post-processing.  The \p load_cb is called for each new module, and its return value
 * is the data that is stored online.  That data is printed to a string with
 * \p print_cb, which should return the number of characters printed or -1 on error.
 * The data is freed with \p free_cb.  The printed data is read back in with
 * \p parse_cb, which returns the point in the input string past the custom data,
 * and writes the parsed data to its output parameter, which can subsequently be
 * retrieved from drmodtrack_offline_lookup()'s \p custom output parameter.
 *
 * If a module contains non-contiguous segments, \p load_cb is called
 * only once, and the resulting custom field is shared among all
 * separate entries returned by drmodtrack_offline_lookup().
 *
 * Only one value for each callback is supported.  Calling this routine again
 * with a different value will replace the existing callbacks.
 */
niii_status_t
drmodtrack_add_custom_data(void *(*load_cb)(module_data_t *module),
                           int (*print_cb)(void *data, char *dst, size_t max_len),
                           const char *(*parse_cb)(const char *src, OUT void **data),
                           void (*free_cb)(void *data));

/*@}*/ /* end doxygen group */

#    ifdef __cplusplus
}
#    endif

/** Specifies the options when initializing NIII. */
typedef struct _Niii_Options {
    /** Set this to the size of this structure. */
    size_t struct_size;
    /** Sets options specified by the bitmask values described in #NIII_flags_t. */
    int flags;
    /**
     * By default, log files are stored in the current directory.  This option
     * overrides that default.
     */
    const char *logdir;
    /**
     * By default, log file names are prefixed with "drcov".  This option overrides
     * that default.
     */
    const char *logprefix;
    /**
     * This is an experimental option for running natively (i.e., not under
     * DynamoRIO control) until the nth thread, where n is the value of this
     * option, is created.  This option only works under Windows.
     */
    int native_until_thread;

    char fuzz_module[MAXIMUM_PATH];
    char fuzz_from_module[MAXIMUM_PATH];

    char fuzz_method[MAXIMUM_PATH];

    uint fuzz_offset;
    app_pc raw_fuzz_offset;
    char mod_trace_name[MAXIMUM_PATH];
    

    uint callconv;
} Niii_Options, *PNiii_Options;


#endif /* _NIII_PRIVATE_H */