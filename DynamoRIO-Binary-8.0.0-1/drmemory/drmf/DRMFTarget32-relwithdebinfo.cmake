#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "drmemory_annotations" for configuration "RelWithDebInfo"
set_property(TARGET drmemory_annotations APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drmemory_annotations PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drmemory_annotations.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemory_annotations )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemory_annotations "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drmemory_annotations.lib" )

# Import target "drsyscall" for configuration "RelWithDebInfo"
set_property(TARGET drsyscall APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drsyscall PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drsyscall.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "ntdll_imports"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drsyscall.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS drsyscall )
list(APPEND _IMPORT_CHECK_FILES_FOR_drsyscall "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drsyscall.lib" "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drsyscall.dll" )

# Import target "drsyscall_static" for configuration "RelWithDebInfo"
set_property(TARGET drsyscall_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drsyscall_static PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "ntdll_imports"
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C;CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drsyscall_static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drsyscall_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drsyscall_static "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drsyscall_static.lib" )

# Import target "drsymcache" for configuration "RelWithDebInfo"
set_property(TARGET drsymcache APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drsymcache PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drsymcache.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "drsyms"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drsymcache.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS drsymcache )
list(APPEND _IMPORT_CHECK_FILES_FOR_drsymcache "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drsymcache.lib" "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drsymcache.dll" )

# Import target "drsymcache_static" for configuration "RelWithDebInfo"
set_property(TARGET drsymcache_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drsymcache_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drsymcache_static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drsymcache_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drsymcache_static "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drsymcache_static.lib" )

# Import target "umbra" for configuration "RelWithDebInfo"
set_property(TARGET umbra APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(umbra PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/umbra.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "ntdll_imports"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/umbra.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS umbra )
list(APPEND _IMPORT_CHECK_FILES_FOR_umbra "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/umbra.lib" "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/umbra.dll" )

# Import target "umbra_static" for configuration "RelWithDebInfo"
set_property(TARGET umbra_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(umbra_static PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "ntdll_imports"
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/umbra_static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS umbra_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_umbra_static "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/umbra_static.lib" )

# Import target "drfuzz" for configuration "RelWithDebInfo"
set_property(TARGET drfuzz APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drfuzz PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drfuzz.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drfuzz.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS drfuzz )
list(APPEND _IMPORT_CHECK_FILES_FOR_drfuzz "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drfuzz.lib" "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drfuzz.dll" )

# Import target "drfuzz_static" for configuration "RelWithDebInfo"
set_property(TARGET drfuzz_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drfuzz_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drfuzz_static.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS drfuzz_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drfuzz_static "${_IMPORT_PREFIX}/drmemory/drmf/lib32/release/drfuzz_static.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
