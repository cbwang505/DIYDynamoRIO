#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ntdll_imports" for configuration "Debug"
set_property(TARGET ntdll_imports APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ntdll_imports PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib32/ntdll_imports.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib32/ntdll_imports.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ntdll_imports )
list(APPEND _IMPORT_CHECK_FILES_FOR_ntdll_imports "${_IMPORT_PREFIX}/lib32/ntdll_imports.lib" "${_IMPORT_PREFIX}/lib32/ntdll_imports.dll" )

# Import target "dynamorio" for configuration "Debug"
set_property(TARGET dynamorio APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(dynamorio PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib32/debug/dynamorio.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib32/debug/dynamorio.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS dynamorio )
list(APPEND _IMPORT_CHECK_FILES_FOR_dynamorio "${_IMPORT_PREFIX}/lib32/debug/dynamorio.lib" "${_IMPORT_PREFIX}/lib32/debug/dynamorio.dll" )

# Import target "dynamorio_static" for configuration "Debug"
set_property(TARGET dynamorio_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(dynamorio_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C;RC"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib32/debug/dynamorio_static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS dynamorio_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_dynamorio_static "${_IMPORT_PREFIX}/lib32/debug/dynamorio_static.lib" )

# Import target "drinjectlib" for configuration "Debug"
set_property(TARGET drinjectlib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drinjectlib PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib32/drinjectlib.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib32/drinjectlib.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS drinjectlib )
list(APPEND _IMPORT_CHECK_FILES_FOR_drinjectlib "${_IMPORT_PREFIX}/lib32/drinjectlib.lib" "${_IMPORT_PREFIX}/lib32/drinjectlib.dll" )

# Import target "drdecode" for configuration "Debug"
set_property(TARGET drdecode APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drdecode PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib32/debug/drdecode.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drdecode )
list(APPEND _IMPORT_CHECK_FILES_FOR_drdecode "${_IMPORT_PREFIX}/lib32/debug/drdecode.lib" )

# Import target "drlibc" for configuration "Debug"
set_property(TARGET drlibc APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drlibc PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib32/drlibc.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drlibc )
list(APPEND _IMPORT_CHECK_FILES_FOR_drlibc "${_IMPORT_PREFIX}/lib32/drlibc.lib" )

# Import target "drconfiglib" for configuration "Debug"
set_property(TARGET drconfiglib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drconfiglib PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib32/drconfiglib.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib32/drconfiglib.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS drconfiglib )
list(APPEND _IMPORT_CHECK_FILES_FOR_drconfiglib "${_IMPORT_PREFIX}/lib32/drconfiglib.lib" "${_IMPORT_PREFIX}/lib32/drconfiglib.dll" )

# Import target "drfrontendlib" for configuration "Debug"
set_property(TARGET drfrontendlib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drfrontendlib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin32/drfrontendlib.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drfrontendlib )
list(APPEND _IMPORT_CHECK_FILES_FOR_drfrontendlib "${_IMPORT_PREFIX}/bin32/drfrontendlib.lib" )

# Import target "drmemtrace_reuse_distance" for configuration "Debug"
set_property(TARGET drmemtrace_reuse_distance APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drmemtrace_reuse_distance PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_reuse_distance.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_reuse_distance )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_reuse_distance "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_reuse_distance.lib" )

# Import target "drmemtrace_histogram" for configuration "Debug"
set_property(TARGET drmemtrace_histogram APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drmemtrace_histogram PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_histogram.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_histogram )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_histogram "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_histogram.lib" )

# Import target "drmemtrace_reuse_time" for configuration "Debug"
set_property(TARGET drmemtrace_reuse_time APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drmemtrace_reuse_time PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_reuse_time.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_reuse_time )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_reuse_time "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_reuse_time.lib" )

# Import target "drmemtrace_basic_counts" for configuration "Debug"
set_property(TARGET drmemtrace_basic_counts APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drmemtrace_basic_counts PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_basic_counts.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_basic_counts )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_basic_counts "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_basic_counts.lib" )

# Import target "drmemtrace_opcode_mix" for configuration "Debug"
set_property(TARGET drmemtrace_opcode_mix APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drmemtrace_opcode_mix PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_opcode_mix.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_opcode_mix )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_opcode_mix "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_opcode_mix.lib" )

# Import target "drmemtrace_view" for configuration "Debug"
set_property(TARGET drmemtrace_view APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drmemtrace_view PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_view.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_view )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_view "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_view.lib" )

# Import target "drmemtrace_func_view" for configuration "Debug"
set_property(TARGET drmemtrace_func_view APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drmemtrace_func_view PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_func_view.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_func_view )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_func_view "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_func_view.lib" )

# Import target "drmemtrace_simulator" for configuration "Debug"
set_property(TARGET drmemtrace_simulator APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drmemtrace_simulator PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_simulator.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_simulator )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_simulator "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_simulator.lib" )

# Import target "directory_iterator" for configuration "Debug"
set_property(TARGET directory_iterator APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(directory_iterator PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/tools/lib32/debug/directory_iterator.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS directory_iterator )
list(APPEND _IMPORT_CHECK_FILES_FOR_directory_iterator "${_IMPORT_PREFIX}/tools/lib32/debug/directory_iterator.lib" )

# Import target "drmemtrace_raw2trace" for configuration "Debug"
set_property(TARGET drmemtrace_raw2trace APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drmemtrace_raw2trace PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_raw2trace.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_raw2trace )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_raw2trace "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_raw2trace.lib" )

# Import target "drmemtrace_analyzer" for configuration "Debug"
set_property(TARGET drmemtrace_analyzer APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drmemtrace_analyzer PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_analyzer.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_analyzer )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_analyzer "${_IMPORT_PREFIX}/tools/lib32/debug/drmemtrace_analyzer.lib" )

# Import target "drcontainers" for configuration "Debug"
set_property(TARGET drcontainers APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drcontainers PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drcontainers.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drcontainers )
list(APPEND _IMPORT_CHECK_FILES_FOR_drcontainers "${_IMPORT_PREFIX}/ext/lib32/debug/drcontainers.lib" )

# Import target "drgui" for configuration "Debug"
set_property(TARGET drgui APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drgui PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/bin32/drgui.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS drgui )
list(APPEND _IMPORT_CHECK_FILES_FOR_drgui "${_IMPORT_PREFIX}/ext/bin32/drgui.exe" )

# Import target "drmgr" for configuration "Debug"
set_property(TARGET drmgr APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drmgr PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drmgr.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drmgr.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmgr )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmgr "${_IMPORT_PREFIX}/ext/lib32/debug/drmgr.lib" "${_IMPORT_PREFIX}/ext/lib32/debug/drmgr.dll" )

# Import target "drmgr_static" for configuration "Debug"
set_property(TARGET drmgr_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drmgr_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drmgr_static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmgr_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmgr_static "${_IMPORT_PREFIX}/ext/lib32/debug/drmgr_static.lib" )

# Import target "drx" for configuration "Debug"
set_property(TARGET drx APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drx PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drx.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drx.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS drx )
list(APPEND _IMPORT_CHECK_FILES_FOR_drx "${_IMPORT_PREFIX}/ext/lib32/debug/drx.lib" "${_IMPORT_PREFIX}/ext/lib32/debug/drx.dll" )

# Import target "drx_static" for configuration "Debug"
set_property(TARGET drx_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drx_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drx_static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drx_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drx_static "${_IMPORT_PREFIX}/ext/lib32/debug/drx_static.lib" )

# Import target "drwrap" for configuration "Debug"
set_property(TARGET drwrap APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drwrap PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drwrap.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drwrap.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS drwrap )
list(APPEND _IMPORT_CHECK_FILES_FOR_drwrap "${_IMPORT_PREFIX}/ext/lib32/debug/drwrap.lib" "${_IMPORT_PREFIX}/ext/lib32/debug/drwrap.dll" )

# Import target "drwrap_static" for configuration "Debug"
set_property(TARGET drwrap_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drwrap_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drwrap_static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drwrap_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drwrap_static "${_IMPORT_PREFIX}/ext/lib32/debug/drwrap_static.lib" )

# Import target "drreg" for configuration "Debug"
set_property(TARGET drreg APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drreg PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drreg.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drreg.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS drreg )
list(APPEND _IMPORT_CHECK_FILES_FOR_drreg "${_IMPORT_PREFIX}/ext/lib32/debug/drreg.lib" "${_IMPORT_PREFIX}/ext/lib32/debug/drreg.dll" )

# Import target "drreg_static" for configuration "Debug"
set_property(TARGET drreg_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drreg_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drreg_static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drreg_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drreg_static "${_IMPORT_PREFIX}/ext/lib32/debug/drreg_static.lib" )

# Import target "drbbdup" for configuration "Debug"
set_property(TARGET drbbdup APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drbbdup PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drbbdup.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drbbdup.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS drbbdup )
list(APPEND _IMPORT_CHECK_FILES_FOR_drbbdup "${_IMPORT_PREFIX}/ext/lib32/debug/drbbdup.lib" "${_IMPORT_PREFIX}/ext/lib32/debug/drbbdup.dll" )

# Import target "drbbdup_static" for configuration "Debug"
set_property(TARGET drbbdup_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drbbdup_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drbbdup_static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drbbdup_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drbbdup_static "${_IMPORT_PREFIX}/ext/lib32/debug/drbbdup_static.lib" )

# Import target "drsyms" for configuration "Debug"
set_property(TARGET drsyms APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drsyms PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drsyms.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "dynamorio"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drsyms.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS drsyms )
list(APPEND _IMPORT_CHECK_FILES_FOR_drsyms "${_IMPORT_PREFIX}/ext/lib32/debug/drsyms.lib" "${_IMPORT_PREFIX}/ext/lib32/debug/drsyms.dll" )

# Import target "drsyms_static" for configuration "Debug"
set_property(TARGET drsyms_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drsyms_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C;CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drsyms_static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drsyms_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drsyms_static "${_IMPORT_PREFIX}/ext/lib32/debug/drsyms_static.lib" )

# Import target "drutil" for configuration "Debug"
set_property(TARGET drutil APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drutil PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drutil.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drutil.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS drutil )
list(APPEND _IMPORT_CHECK_FILES_FOR_drutil "${_IMPORT_PREFIX}/ext/lib32/debug/drutil.lib" "${_IMPORT_PREFIX}/ext/lib32/debug/drutil.dll" )

# Import target "drutil_static" for configuration "Debug"
set_property(TARGET drutil_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drutil_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drutil_static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drutil_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drutil_static "${_IMPORT_PREFIX}/ext/lib32/debug/drutil_static.lib" )

# Import target "drcovlib" for configuration "Debug"
set_property(TARGET drcovlib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drcovlib PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drcovlib.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drcovlib.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS drcovlib )
list(APPEND _IMPORT_CHECK_FILES_FOR_drcovlib "${_IMPORT_PREFIX}/ext/lib32/debug/drcovlib.lib" "${_IMPORT_PREFIX}/ext/lib32/debug/drcovlib.dll" )

# Import target "drcovlib_static" for configuration "Debug"
set_property(TARGET drcovlib_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(drcovlib_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/ext/lib32/debug/drcovlib_static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drcovlib_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drcovlib_static "${_IMPORT_PREFIX}/ext/lib32/debug/drcovlib_static.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
