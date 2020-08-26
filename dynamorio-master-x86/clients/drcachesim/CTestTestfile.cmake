# CMake generated Testfile for 
# Source directory: E:/svn/PowerResearch/dynamorio-master-x86/clients/drcachesim
# Build directory: E:/svn/PowerResearch/dynamorio-master-x86/clients/drcachesim
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(tool.drcachesim.unit_tests "E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/tool.drcachesim.unit_tests.exe")
  set_tests_properties(tool.drcachesim.unit_tests PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/clients/drcachesim/CMakeLists.txt;485;add_test;E:/svn/PowerResearch/dynamorio-master-x86/clients/drcachesim/CMakeLists.txt;0;")
else()
  add_test(tool.drcachesim.unit_tests NOT_AVAILABLE)
endif()
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(tool.drcachesim.miss_analyzer_unit_test "E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/tool.drcachesim.miss_analyzer_unit_test.exe")
  set_tests_properties(tool.drcachesim.miss_analyzer_unit_test PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/clients/drcachesim/CMakeLists.txt;502;add_test;E:/svn/PowerResearch/dynamorio-master-x86/clients/drcachesim/CMakeLists.txt;0;")
else()
  add_test(tool.drcachesim.miss_analyzer_unit_test NOT_AVAILABLE)
endif()
