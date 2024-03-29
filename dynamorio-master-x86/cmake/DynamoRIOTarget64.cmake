# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget ntdll_imports dynamorio dynamorio_static drinjectlib drdecode drlibc drconfiglib drfrontendlib drmemtrace_reuse_distance drmemtrace_histogram drmemtrace_reuse_time drmemtrace_basic_counts drmemtrace_opcode_mix drmemtrace_view drmemtrace_func_view drmemtrace_simulator directory_iterator drmemtrace_raw2trace drmemtrace_analyzer drcontainers drgui drmgr drmgr_static drx drx_static drwrap drwrap_static drreg drreg_static drbbdup drbbdup_static drsyms drsyms_static drutil drutil_static drcovlib drcovlib_static)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target ntdll_imports
add_library(ntdll_imports SHARED IMPORTED)

# Create imported target dynamorio
add_library(dynamorio SHARED IMPORTED)

# Create imported target dynamorio_static
add_library(dynamorio_static STATIC IMPORTED)

set_target_properties(dynamorio_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "drlibc;libcmt;ntdll_imports"
)

# Create imported target drinjectlib
add_library(drinjectlib SHARED IMPORTED)

set_target_properties(drinjectlib PROPERTIES
  INTERFACE_LINK_LIBRARIES "drdecode;drlibc;drdecode;libcmt;libvcruntime.lib;libucrt.lib;ntdll_imports;kernel32;advapi32;imagehlp"
)

# Create imported target drdecode
add_library(drdecode STATIC IMPORTED)

set_target_properties(drdecode PROPERTIES
  INTERFACE_LINK_LIBRARIES "drlibc"
)

# Create imported target drlibc
add_library(drlibc STATIC IMPORTED)

# Create imported target drconfiglib
add_library(drconfiglib SHARED IMPORTED)

set_target_properties(drconfiglib PROPERTIES
  INTERFACE_LINK_LIBRARIES "drfrontendlib;drlibc"
)

# Create imported target drfrontendlib
add_library(drfrontendlib STATIC IMPORTED)

# Create imported target drmemtrace_reuse_distance
add_library(drmemtrace_reuse_distance STATIC IMPORTED)

# Create imported target drmemtrace_histogram
add_library(drmemtrace_histogram STATIC IMPORTED)

# Create imported target drmemtrace_reuse_time
add_library(drmemtrace_reuse_time STATIC IMPORTED)

# Create imported target drmemtrace_basic_counts
add_library(drmemtrace_basic_counts STATIC IMPORTED)

# Create imported target drmemtrace_opcode_mix
add_library(drmemtrace_opcode_mix STATIC IMPORTED)

set_target_properties(drmemtrace_opcode_mix PROPERTIES
  INTERFACE_LINK_LIBRARIES "libcpmt;libcmt;libvcruntime.lib;libucrt.lib;dynamorio"
)

# Create imported target drmemtrace_view
add_library(drmemtrace_view STATIC IMPORTED)

set_target_properties(drmemtrace_view PROPERTIES
  INTERFACE_LINK_LIBRARIES "libcpmt;libcmt;libvcruntime.lib;libucrt.lib;dynamorio"
)

# Create imported target drmemtrace_func_view
add_library(drmemtrace_func_view STATIC IMPORTED)

# Create imported target drmemtrace_simulator
add_library(drmemtrace_simulator STATIC IMPORTED)

# Create imported target directory_iterator
add_library(directory_iterator STATIC IMPORTED)

set_target_properties(directory_iterator PROPERTIES
  INTERFACE_LINK_LIBRARIES "drfrontendlib"
)

# Create imported target drmemtrace_raw2trace
add_library(drmemtrace_raw2trace STATIC IMPORTED)

set_target_properties(drmemtrace_raw2trace PROPERTIES
  INTERFACE_LINK_LIBRARIES "libcpmt;libcmt;libvcruntime.lib;libucrt.lib;dynamorio;directory_iterator;drfrontendlib;drutil_static"
)

# Create imported target drmemtrace_analyzer
add_library(drmemtrace_analyzer STATIC IMPORTED)

set_target_properties(drmemtrace_analyzer PROPERTIES
  INTERFACE_LINK_LIBRARIES "directory_iterator"
)

# Create imported target drcontainers
add_library(drcontainers STATIC IMPORTED)

set_target_properties(drcontainers PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;dynamorio"
)

# Create imported target drgui
add_executable(drgui IMPORTED)

# Create imported target drmgr
add_library(drmgr SHARED IMPORTED)

set_target_properties(drmgr PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers"
)

# Create imported target drmgr_static
add_library(drmgr_static STATIC IMPORTED)

set_target_properties(drmgr_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers"
)

# Create imported target drx
add_library(drx SHARED IMPORTED)

set_target_properties(drx PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr;drreg;drmgr;ntdll_imports"
)

# Create imported target drx_static
add_library(drx_static STATIC IMPORTED)

set_target_properties(drx_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr_static;drreg_static;ntdll_imports"
)

# Create imported target drwrap
add_library(drwrap SHARED IMPORTED)

set_target_properties(drwrap PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drmgr;drcontainers"
)

# Create imported target drwrap_static
add_library(drwrap_static STATIC IMPORTED)

set_target_properties(drwrap_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drmgr_static;drcontainers"
)

# Create imported target drreg
add_library(drreg SHARED IMPORTED)

set_target_properties(drreg PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr"
)

# Create imported target drreg_static
add_library(drreg_static STATIC IMPORTED)

set_target_properties(drreg_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr_static"
)

# Create imported target drbbdup
add_library(drbbdup SHARED IMPORTED)

set_target_properties(drbbdup PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr;drreg"
)

# Create imported target drbbdup_static
add_library(drbbdup_static STATIC IMPORTED)

set_target_properties(drbbdup_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr_static;drreg_static"
)

# Create imported target drsyms
add_library(drsyms SHARED IMPORTED)

# Create imported target drsyms_static
add_library(drsyms_static STATIC IMPORTED)

set_target_properties(drsyms_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "libcpmt;libcmt;libvcruntime.lib;libucrt.lib;dynamorio;dbghelp;E:/svn/PowerResearch/dynamorio-master-x86/ext/drsyms/dbghelp_imports.lib;drcontainers;dwarf;elftc"
)

# Create imported target drutil
add_library(drutil SHARED IMPORTED)

set_target_properties(drutil PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drmgr"
)

# Create imported target drutil_static
add_library(drutil_static STATIC IMPORTED)

set_target_properties(drutil_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drmgr_static"
)

# Create imported target drcovlib
add_library(drcovlib SHARED IMPORTED)

set_target_properties(drcovlib PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr;drx"
)

# Create imported target drcovlib_static
add_library(drcovlib_static STATIC IMPORTED)

set_target_properties(drcovlib_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr_static;drx_static"
)

# Import target "ntdll_imports" for configuration "RelWithDebInfo"
set_property(TARGET ntdll_imports APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(ntdll_imports PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/lib64/ntdll_imports.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/lib64/ntdll_imports.dll"
  )

# Import target "dynamorio" for configuration "RelWithDebInfo"
set_property(TARGET dynamorio APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(dynamorio PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/lib64/release/dynamorio.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/lib64/release/dynamorio.dll"
  )

# Import target "dynamorio_static" for configuration "RelWithDebInfo"
set_property(TARGET dynamorio_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(dynamorio_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C;RC"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/lib64/release/dynamorio_static.lib"
  )

# Import target "drinjectlib" for configuration "RelWithDebInfo"
set_property(TARGET drinjectlib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drinjectlib PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/lib64/drinjectlib.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/lib64/drinjectlib.dll"
  )

# Import target "drdecode" for configuration "RelWithDebInfo"
set_property(TARGET drdecode APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drdecode PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/lib64/drdecode.lib"
  )

# Import target "drlibc" for configuration "RelWithDebInfo"
set_property(TARGET drlibc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drlibc PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/lib64/drlibc.lib"
  )

# Import target "drconfiglib" for configuration "RelWithDebInfo"
set_property(TARGET drconfiglib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drconfiglib PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/lib64/drconfiglib.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/lib64/drconfiglib.dll"
  )

# Import target "drfrontendlib" for configuration "RelWithDebInfo"
set_property(TARGET drfrontendlib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drfrontendlib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/lib64/drfrontendlib.lib"
  )

# Import target "drmemtrace_reuse_distance" for configuration "RelWithDebInfo"
set_property(TARGET drmemtrace_reuse_distance APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drmemtrace_reuse_distance PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/clients/lib64/release/drmemtrace_reuse_distance.lib"
  )

# Import target "drmemtrace_histogram" for configuration "RelWithDebInfo"
set_property(TARGET drmemtrace_histogram APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drmemtrace_histogram PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/clients/lib64/release/drmemtrace_histogram.lib"
  )

# Import target "drmemtrace_reuse_time" for configuration "RelWithDebInfo"
set_property(TARGET drmemtrace_reuse_time APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drmemtrace_reuse_time PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/clients/lib64/release/drmemtrace_reuse_time.lib"
  )

# Import target "drmemtrace_basic_counts" for configuration "RelWithDebInfo"
set_property(TARGET drmemtrace_basic_counts APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drmemtrace_basic_counts PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/clients/lib64/release/drmemtrace_basic_counts.lib"
  )

# Import target "drmemtrace_opcode_mix" for configuration "RelWithDebInfo"
set_property(TARGET drmemtrace_opcode_mix APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drmemtrace_opcode_mix PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/clients/lib64/release/drmemtrace_opcode_mix.lib"
  )

# Import target "drmemtrace_view" for configuration "RelWithDebInfo"
set_property(TARGET drmemtrace_view APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drmemtrace_view PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/clients/lib64/release/drmemtrace_view.lib"
  )

# Import target "drmemtrace_func_view" for configuration "RelWithDebInfo"
set_property(TARGET drmemtrace_func_view APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drmemtrace_func_view PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/clients/lib64/release/drmemtrace_func_view.lib"
  )

# Import target "drmemtrace_simulator" for configuration "RelWithDebInfo"
set_property(TARGET drmemtrace_simulator APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drmemtrace_simulator PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/clients/lib64/release/drmemtrace_simulator.lib"
  )

# Import target "directory_iterator" for configuration "RelWithDebInfo"
set_property(TARGET directory_iterator APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(directory_iterator PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/clients/lib64/release/directory_iterator.lib"
  )

# Import target "drmemtrace_raw2trace" for configuration "RelWithDebInfo"
set_property(TARGET drmemtrace_raw2trace APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drmemtrace_raw2trace PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/clients/lib64/release/drmemtrace_raw2trace.lib"
  )

# Import target "drmemtrace_analyzer" for configuration "RelWithDebInfo"
set_property(TARGET drmemtrace_analyzer APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drmemtrace_analyzer PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/clients/lib64/release/drmemtrace_analyzer.lib"
  )

# Import target "drcontainers" for configuration "RelWithDebInfo"
set_property(TARGET drcontainers APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drcontainers PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drcontainers.lib"
  )

# Import target "drgui" for configuration "RelWithDebInfo"
set_property(TARGET drgui APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drgui PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drgui.exe"
  )

# Import target "drmgr" for configuration "RelWithDebInfo"
set_property(TARGET drmgr APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drmgr PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drmgr.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drmgr.dll"
  )

# Import target "drmgr_static" for configuration "RelWithDebInfo"
set_property(TARGET drmgr_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drmgr_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drmgr_static.lib"
  )

# Import target "drx" for configuration "RelWithDebInfo"
set_property(TARGET drx APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drx PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drx.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drx.dll"
  )

# Import target "drx_static" for configuration "RelWithDebInfo"
set_property(TARGET drx_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drx_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drx_static.lib"
  )

# Import target "drwrap" for configuration "RelWithDebInfo"
set_property(TARGET drwrap APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drwrap PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drwrap.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drwrap.dll"
  )

# Import target "drwrap_static" for configuration "RelWithDebInfo"
set_property(TARGET drwrap_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drwrap_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drwrap_static.lib"
  )

# Import target "drreg" for configuration "RelWithDebInfo"
set_property(TARGET drreg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drreg PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drreg.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drreg.dll"
  )

# Import target "drreg_static" for configuration "RelWithDebInfo"
set_property(TARGET drreg_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drreg_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drreg_static.lib"
  )

# Import target "drbbdup" for configuration "RelWithDebInfo"
set_property(TARGET drbbdup APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drbbdup PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drbbdup.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drbbdup.dll"
  )

# Import target "drbbdup_static" for configuration "RelWithDebInfo"
set_property(TARGET drbbdup_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drbbdup_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drbbdup_static.lib"
  )

# Import target "drsyms" for configuration "RelWithDebInfo"
set_property(TARGET drsyms APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drsyms PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drsyms.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "dynamorio"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drsyms.dll"
  )

# Import target "drsyms_static" for configuration "RelWithDebInfo"
set_property(TARGET drsyms_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drsyms_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C;CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drsyms_static.lib"
  )

# Import target "drutil" for configuration "RelWithDebInfo"
set_property(TARGET drutil APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drutil PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drutil.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drutil.dll"
  )

# Import target "drutil_static" for configuration "RelWithDebInfo"
set_property(TARGET drutil_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drutil_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drutil_static.lib"
  )

# Import target "drcovlib" for configuration "RelWithDebInfo"
set_property(TARGET drcovlib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drcovlib PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drcovlib.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drcovlib.dll"
  )

# Import target "drcovlib_static" for configuration "RelWithDebInfo"
set_property(TARGET drcovlib_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(drcovlib_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "E:/svn/PowerResearch/dynamorio-master-x86/ext/lib64/release/drcovlib_static.lib"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
