# CMake generated Testfile for 
# Source directory: E:/svn/PowerResearch/dynamorio-master-x86/suite/tests
# Build directory: E:/svn/PowerResearch/dynamorio-master-x86/suite/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(client.annotation-detection.native "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection.exe")
set_tests_properties(client.annotation-detection.native PROPERTIES  PASS_REGULAR_EXPRESSION "^Native two-args in Square::set_lengths\\(\\)?
get_area\\(\\): s with a: 27\\.300000?
Native two-args in Triangle::get_b\\(\\)?
get_area\\(\\): s with b: 603\\.330000?
Native two-args in Triangle::get_c\\(\\)?
get_area\\(\\): s with c: 360326\\.775900?
get_area\\(\\): s with a: 27\\.300000?
Native two-args in Triangle::get_b\\(\\)?
get_area\\(\\): s with b: 603\\.330000?
Native two-args in Triangle::get_c\\(\\)?
get_area\\(\\): s with c: 360326\\.775900?
Native two args: 1012, 5?
Native two-args in Triangle::get_c\\(\\)?
Native two-args in Triangle::get_b\\(\\)?
get_area\\(\\): s with a: 27\\.300000?
Native two-args in Triangle::get_b\\(\\)?
get_area\\(\\): s with b: 603\\.330000?
Native two-args in Triangle::get_c\\(\\)?
get_area\\(\\): s with c: 360326\\.775900?
Native two-args in Triangle::get_c\\(\\)?
Native two-args in Triangle::get_b\\(\\)?
Triangle \\[4\\.300000 x 5\\.200000 x 6\\.100000\\] area: 360326\\.775900 \\(1031\\)?
Native two args: 1012, 5?
Native two-args in Triangle::get_b\\(\\)?
Native two-args in Square::get_area\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Triangle::get_c\\(\\)?
Native two-args in Triangle::get_b\\(\\)?
Native two-args in Triangle::get_c\\(\\)?
Native two-args in Triangle::get_b\\(\\)?
Native two-args in Triangle::get_c\\(\\)?
Native two-args in Triangle::get_b\\(\\)?
Native two-args in Square::get_area\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Square \\[7\\.000000 x 7\\.000000\\] area: 49\\.000000 \\(1062\\)?
Native two-args in Square::get_area\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Triangle::get_b\\(\\)?
Native two-args in Fail::Fail\\(\\)?
Native line 1018?
Native two-args in Fail::get_error_code\\(\\)?
Fail! 58?
Native line 1019?
three args #0: 6?
Native two args: 1012, 5?
three args #1: 1033?
Native two args: 1012, 5?
three args #2: 1024?
Native two-args in Square::get_area\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two args: 1012, 5?
Native two args: 1012, 5?
Native two args: 1012, 5?
get_area\\(\\): s with a: 27\\.300000?
Native two-args in Triangle::get_b\\(\\)?
get_area\\(\\): s with b: 603\\.330000?
Native two-args in Triangle::get_c\\(\\)?
get_area\\(\\): s with c: 360326\\.775900?
longjmp 1028 \\(360326\\.775900\\)?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1613;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;2002;torunonly_native;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(client.annotation-detection-opt.native "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection-opt.exe")
set_tests_properties(client.annotation-detection-opt.native PROPERTIES  PASS_REGULAR_EXPRESSION "^Native two-args in Square::set_lengths\\(\\)?
get_area\\(\\): s with a: 27\\.300000?
Native two-args in Triangle::get_b\\(\\)?
get_area\\(\\): s with b: 603\\.330000?
Native two-args in Triangle::get_c\\(\\)?
get_area\\(\\): s with c: 360326\\.775900?
get_area\\(\\): s with a: 27\\.300000?
Native two-args in Triangle::get_b\\(\\)?
get_area\\(\\): s with b: 603\\.330000?
Native two-args in Triangle::get_c\\(\\)?
get_area\\(\\): s with c: 360326\\.775900?
Native two args: 1012, 5?
Native two-args in Triangle::get_c\\(\\)?
Native two-args in Triangle::get_b\\(\\)?
get_area\\(\\): s with a: 27\\.300000?
Native two-args in Triangle::get_b\\(\\)?
get_area\\(\\): s with b: 603\\.330000?
Native two-args in Triangle::get_c\\(\\)?
get_area\\(\\): s with c: 360326\\.775900?
Native two-args in Triangle::get_c\\(\\)?
Native two-args in Triangle::get_b\\(\\)?
Triangle \\[4\\.300000 x 5\\.200000 x 6\\.100000\\] area: 360326\\.775900 \\(1031\\)?
Native two args: 1012, 5?
Native two-args in Triangle::get_b\\(\\)?
Native two-args in Square::get_area\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Triangle::get_c\\(\\)?
Native two-args in Triangle::get_b\\(\\)?
Native two-args in Triangle::get_c\\(\\)?
Native two-args in Triangle::get_b\\(\\)?
Native two-args in Triangle::get_c\\(\\)?
Native two-args in Triangle::get_b\\(\\)?
Native two-args in Square::get_area\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Square \\[7\\.000000 x 7\\.000000\\] area: 49\\.000000 \\(1062\\)?
Native two-args in Square::get_area\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Triangle::get_b\\(\\)?
Native two-args in Fail::Fail\\(\\)?
Native line 1018?
Native two-args in Fail::get_error_code\\(\\)?
Fail! 58?
Native line 1019?
three args #0: 6?
Native two args: 1012, 5?
three args #1: 1033?
Native two args: 1012, 5?
three args #2: 1024?
Native two-args in Square::get_area\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two-args in Square::get_side_length\\(\\)?
Native two args: 1012, 5?
Native two args: 1012, 5?
Native two args: 1012, 5?
get_area\\(\\): s with a: 27\\.300000?
Native two-args in Triangle::get_b\\(\\)?
get_area\\(\\): s with b: 603\\.330000?
Native two-args in Triangle::get_c\\(\\)?
get_area\\(\\): s with c: 360326\\.775900?
longjmp 1028 \\(360326\\.775900\\)?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1613;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;2009;torunonly_native;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(samples_proj "C:/Program Files/CMake/bin/ctest.exe" "--build-and-test" "" "/build_and_test" "--build-generator" "Visual Studio 15 2017" "--build-project" "DynamoRIO_samples" "--build-makeprogram" "C:/Program Files (x86)/Microsoft Visual Studio/2017/Enterprise/MSBuild/15.0/Bin/MSBuild.exe" "--build-options" "-DDEBUG=ON" "-DDynamoRIO_DIR:PATH=E:/svn/PowerResearch/dynamorio-master-x86/cmake")
set_tests_properties(samples_proj PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;2797;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(drmemtrace_proj "C:/Program Files/CMake/bin/ctest.exe" "--build-and-test" "E:/svn/PowerResearch/dynamorio-master-x86/clients/drcachesim/tests" "E:/svn/PowerResearch/dynamorio-master-x86/clients/drcachesim/tests/build_and_test" "--build-generator" "Visual Studio 15 2017" "--build-project" "DynamoRIO_drmemtrace" "--build-makeprogram" "C:/Program Files (x86)/Microsoft Visual Studio/2017/Enterprise/MSBuild/15.0/Bin/MSBuild.exe" "--build-options" "-DCMAKE_BUILD_TYPE=Debug" "-DDEBUG=ON" "-DDynamoRIO_DIR:PATH=E:/svn/PowerResearch/dynamorio-master-x86/cmake")
set_tests_properties(drmemtrace_proj PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;3315;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|common.broadfun "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.broadfun spaces.exe")
set_tests_properties(code_api|common.broadfun PROPERTIES  PASS_REGULAR_EXPRESSION "^sort\\(\\) = >?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|common.logstderr "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-log_to_stderr" "-loglevel" "1" "-logmask" "2" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.broadfun spaces.exe")
set_tests_properties(code_api|common.logstderr PROPERTIES  PASS_REGULAR_EXPRESSION "^global log file.*?
DynamoRIO version .*?
Running:.*broadfun.*?
DynamoRIO built with:.*?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|common.fib "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-no_early_inject" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.fib.exe")
set_tests_properties(code_api|common.fib PROPERTIES  PASS_REGULAR_EXPRESSION "^fib\\(5\\)=8?
fib\\(15\\)=987?
fib\\(25\\)=121393?
fib\\(0\\)=1?
fib\\(1\\)=1?
fib\\(2\\)=2?
fib\\(3\\)=3?
fib\\(4\\)=5?
fib\\(5\\)=8?
fib\\(6\\)=13?
fib\\(7\\)=21?
fib\\(8\\)=34?
fib\\(9\\)=55?
fib\\(10\\)=89?
fib\\(11\\)=144?
fib\\(12\\)=233?
fib\\(13\\)=377?
fib\\(14\\)=610?
fib\\(15\\)=987?
fib\\(16\\)=1597?
fib\\(17\\)=2584?
fib\\(18\\)=4181?
fib\\(19\\)=6765?
fib\\(20\\)=10946?
fib\\(21\\)=17711?
fib\\(22\\)=28657?
fib\\(23\\)=46368?
fib\\(24\\)=75025?
fib\\(25\\)=121393?
fib\\(26\\)=196418?
fib\\(27\\)=317811?
fib\\(28\\)=514229?
fib\\(29\\)=832040?
fib\\(30\\)=1346269?
fib\\(31\\)=2178309?
fib\\(32\\)=3524578?
fib\\(12\\)=233?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|common.decode-bad "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.decode-bad.exe")
set_tests_properties(code_api|common.decode-bad PROPERTIES  PASS_REGULAR_EXPRESSION "^Privileged instructions about to happen?
Privileged instruction, instance 1?
Privileged instruction, instance 2?
Privileged instruction, instance 3?
Privileged instruction, instance 4?
OK instr about to happen?
Bad instr about to happen?
Invalid lock sequence, instance 1?
eax=1 ebx=2 ecx=3 edx=4 edi=5 esi=6 ebp=7?
Invalid instructions about to happen?
Bad instruction, instance 1?
Bad instruction, instance 2?
Bad instruction, instance 3?
Bad instruction, instance 4?
Bad instruction, instance 5?
Bad instruction, instance 6?
Bad instruction, instance 7?
Bad instruction, instance 8?
All done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|common.decode "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.decode.exe")
set_tests_properties(code_api|common.decode PROPERTIES  PASS_REGULAR_EXPRESSION "^(<Application .*common\\.decode.*AVX-512 was detected at PC 0x[0-9a-f]+. AVX-512 is not fully supported yet.>?
)?Start?
Jumping to a sequence of every addr16 modrm byte?
Done with modrm test: tested 256?
Testing nops?
Done with nops?
Testing SSE3?
Bad instruction, instance 1?
Testing 3D-Now?
Bad instruction, instance 2?
Testing far call/jmp?
Access violation, instance 3?
Access violation, instance 4?
Access violation, instance 5?
Access violation, instance 6?
Access violation, instance 7?
Access violation, instance 8?
Testing data16 mbr?
Access violation, instance 9?
Access violation, instance 10?
Access violation, instance 11?
Access violation, instance 12?
Access violation, instance 13?
Access violation, instance 14?
Access violation, instance 15?
Access violation, instance 16?
Access violation, instance 17?
Access violation, instance 18?
Testing rip-rel ind branch?
Made it to actual_call_target?
Bad instruction, instance 19?
(Testing AVX-512 VEX?
)?All done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|common.decode-stress "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-stress_recreate_state" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.decode.exe")
set_tests_properties(code_api|common.decode-stress PROPERTIES  PASS_REGULAR_EXPRESSION "^(<Application .*common\\.decode.*AVX-512 was detected at PC 0x[0-9a-f]+. AVX-512 is not fully supported yet.>?
)?Start?
Jumping to a sequence of every addr16 modrm byte?
Done with modrm test: tested 256?
Testing nops?
Done with nops?
Testing SSE3?
Bad instruction, instance 1?
Testing 3D-Now?
Bad instruction, instance 2?
Testing far call/jmp?
Access violation, instance 3?
Access violation, instance 4?
Access violation, instance 5?
Access violation, instance 6?
Access violation, instance 7?
Access violation, instance 8?
Testing data16 mbr?
Access violation, instance 9?
Access violation, instance 10?
Access violation, instance 11?
Access violation, instance 12?
Access violation, instance 13?
Access violation, instance 14?
Access violation, instance 15?
Access violation, instance 16?
Access violation, instance 17?
Access violation, instance 18?
Testing rip-rel ind branch?
Made it to actual_call_target?
Bad instruction, instance 19?
(Testing AVX-512 VEX?
)?All done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|common.eflags "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.eflags.exe")
set_tests_properties(code_api|common.eflags PROPERTIES  PASS_REGULAR_EXPRESSION "^OK 1 CF?
OK 0 CF?
OK 1 PF?
OK 0 PF?
OK 1 AF?
OK 0 AF?
OK 1 ZF?
OK 0 ZF?
OK 1 SF?
OK 0 SF?
OK 1 DF?
OK 0 DF?
OK 1 OF?
OK 0 OF?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|common.floatpc "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.floatpc.exe")
set_tests_properties(code_api|common.floatpc PROPERTIES  PASS_REGULAR_EXPRESSION "^FNSTENV intra is correctly handled?
FNSTENV inter is \\*\\*incorrectly\\*\\* handled?
FXSAVE intra is correctly handled?
FXSAVE inter is \\*\\*incorrectly\\*\\* handled?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|common.floatpc_xl8all "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-translate_fpu_pc" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.floatpc.exe")
set_tests_properties(code_api|common.floatpc_xl8all PROPERTIES  PASS_REGULAR_EXPRESSION "^FNSTENV intra is correctly handled?
FNSTENV inter is correctly handled?
FXSAVE intra is correctly handled?
FXSAVE inter is correctly handled?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|common.getretaddr "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.getretaddr.exe")
set_tests_properties(code_api|common.getretaddr PROPERTIES  PASS_REGULAR_EXPRESSION "^return addresses match?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|common.nativeexec "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-no_early_inject" "-native_exec_list" "common.nativeexec.appdll.dll" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.nativeexec.exe")
set_tests_properties(code_api|common.nativeexec PROPERTIES  PASS_REGULAR_EXPRESSION "^Running under DR?
calling via IAT-style call?
nativeexec\\.dll:import_me1\\(57\\) not under DR?
calling via PLT-style call?
nativeexec\\.dll:import_me2\\(37\\) not under DR?
calling via funky ind call?
nativeexec\\.dll:import_me3\\(17\\) not under DR?
calling nested native?
nativeexec\\.exe:print_int\\(42\\) not under DR?
calling cross-module unwinder?
before longjmp, 1?
after longjmp?
calling indirect ret_imm?
 -> 40?
calling loop_test?
Running under DR?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|common.protect-dstack "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-no_mangle_app_seg" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.protect-dstack.exe")
set_tests_properties(code_api|common.protect-dstack PROPERTIES  PASS_REGULAR_EXPRESSION "^dcontext->dstack successfully obtained?
wrote to entire dstack without incident!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|common.segfault "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.segfault.exe")
set_tests_properties(code_api|common.segfault PROPERTIES  PASS_REGULAR_EXPRESSION "^Segfault about to happen?
Got a seg fault?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.callback "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.callback.exe")
set_tests_properties(code_api|win32.callback PROPERTIES  PASS_REGULAR_EXPRESSION "^About to create thread?
in wnd_callback 0x0*0000024 0?
in wnd_callback 0x0*0000081 0?
in wnd_callback 0x0*0000083 0?
in wnd_callback 0x0*0000001 0?
in wnd_callback 0x0*0008001 3 0?
About to crash?
Inside handler?
in wnd_callback 0x0*0008001 0 2?
Got message 0x0*0008001 1 3?
All done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.crtprcs "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.crtprcs.exe")
set_tests_properties(code_api|win32.crtprcs PROPERTIES  PASS_REGULAR_EXPRESSION "^subprocess running\\.?
creating subprocess\\.\\.\\.?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.delaybind "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.delaybind.exe")
set_tests_properties(code_api|win32.delaybind PROPERTIES  PASS_REGULAR_EXPRESSION "^starting delaybind?
in delay bind dll?
BUILTIN\\\\Administrators: S-1-5-32-544?
?
DLL was unloaded?
in delay bind dll?
BUILTIN\\\\Administrators: S-1-5-32-544?
?
DLL was unloaded?
done with delaybind?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.dll "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.dll.exe")
set_tests_properties(code_api|win32.dll PROPERTIES  PASS_REGULAR_EXPRESSION "^Found 3 of 5 expected modules?
Didn't find module dynamorio\\.dll?
Didn't find module win32\\.dll\\.dll\\.dll?
Found 3 of 5 expected modules?
Didn't find module dynamorio\\.dll?
Didn't find module win32\\.dll\\.dll\\.dll?
win32\\.dll\\.dll\\.dll process attach?
loaded win32\\.dll\\.dll\\.dll?
Found 4 of 5 expected modules?
Didn't find module dynamorio\\.dll?
Found 4 of 5 expected modules?
Didn't find module dynamorio\\.dll?
in import?
Called import_me with 5, result is 10?
win32\\.dll\\.dll\\.dll process detach?
freed library?
Found 3 of 5 expected modules?
Didn't find module dynamorio\\.dll?
Didn't find module win32\\.dll\\.dll\\.dll?
Found 3 of 5 expected modules?
Didn't find module dynamorio\\.dll?
Didn't find module win32\\.dll\\.dll\\.dll?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.fiber-rac "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.fiber-rac.exe")
set_tests_properties(code_api|win32.fiber-rac PROPERTIES  PASS_REGULAR_EXPRESSION "^in main thread?
main thread converted to fiber?
creating worker fiber 0?
switching to worker fiber first time?
in worker fiber?
back to main?
switching to worker fiber second time?
in worker fiber again?
deleting worker fiber 0?
creating worker fiber 1?
switching to worker fiber first time?
in worker fiber?
back to main?
switching to worker fiber second time?
in worker fiber again?
deleting worker fiber 1?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.finally "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.finally.exe")
set_tests_properties(code_api|win32.finally PROPERTIES  PASS_REGULAR_EXPRESSION "^This should be printed?
Inside first finally?
At statement after 1st try-finally?
Inside second finally?
done with longjmp?
In final finally?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.multisec "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.multisec.exe")
set_tests_properties(code_api|win32.multisec PROPERTIES  PASS_REGULAR_EXPRESSION "^dlltest?
foo?
foo?
bar?
foo?
calling f2?
func2?
func3?
calling f2?
func4?
func3?
func4?
loaded win32\\.multisec\\.dll\\.dll?
dlltest?
foo?
foo?
bar?
foo?
calling f2?
func2?
func3?
calling f2?
func4?
func3?
func4?
loaded win32\\.multisec2\\.dll\\.dll?
func2?
exe calling f2?
func2?
exe func3?
exe func4?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.nativeterminate "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-native_exec_list" "nativeterminate.dll.dll" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.nativeterminate.exe")
set_tests_properties(code_api|win32.nativeterminate PROPERTIES  PASS_REGULAR_EXPRESSION "^calling via IAT-style call?
nativeexec\\.dll:import_me1\\(57\\)?
calling in a thread?
nativeexec\\.dll:import_me1\\(0\\)?
calling in a thread that dies?
nativeexec\\.dll:import_me_die\\(0\\)?
case 5455 regression passed?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.partial_map_FLAKY "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.partial_map.exe")
set_tests_properties(code_api|win32.partial_map_FLAKY PROPERTIES  PASS_REGULAR_EXPRESSION "^test map of \\\\system32\\\\user32\\.dll succeeded?
test map of \\\\system32\\\\calc\\.exe succeeded?
test map of \\\\system32\\\\notepad\\.exe succeeded?
test map of \\\\system32\\\\svchost\\.exe succeeded?
test map of \\\\system32\\\\rundll32\\.exe succeeded?
test map of \\\\explorer\\.exe succeeded?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.protect-datasec "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.protect-datasec.exe")
set_tests_properties(code_api|win32.protect-datasec PROPERTIES  PASS_REGULAR_EXPRESSION "^about to write to every page in \\.data?
about to write to every page in \\.fspdata?
successfully wrote to \\.fspdata?
about to write to every page in \\.cspdata?
successfully wrote to \\.cspdata?
about to write to every page in \\.nspdata?
successfully wrote to \\.nspdata?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.rebased "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.rebased.exe")
set_tests_properties(code_api|win32.rebased PROPERTIES  PASS_REGULAR_EXPRESSION "^dlltest?
foo?
foo?
bar?
foo?
loaded win32.rebased.dll.dll?
dlltest?
foo?
foo?
bar?
foo?
loaded win32.rebased2.dll.dll?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.reload "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-disable_traces" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.reload.exe")
set_tests_properties(code_api|win32.reload PROPERTIES  PASS_REGULAR_EXPRESSION "^in import 0?
in import 1?
in import 2?
in import 3?
in import 4?
in import 5?
in import 6?
in import 7?
in import 8?
in import 9?
in import 10?
in import 11?
in import 12?
in import 13?
in import 14?
in import 15?
in import 16?
in import 17?
in import 18?
in import 19?
in import 20?
in import 21?
in import 22?
in import 23?
in import 24?
in import 25?
in import 26?
in import 27?
in import 28?
in import 29?
in import 0?
in import 1?
in import 2?
in import 3?
in import 4?
in import 5?
in import 6?
in import 7?
in import 8?
in import 9?
in import 10?
in import 11?
in import 12?
in import 13?
in import 14?
in import 15?
in import 16?
in import 17?
in import 18?
in import 19?
in import 20?
in import 21?
in import 22?
in import 23?
in import 24?
in import 25?
in import 26?
in import 27?
in import 28?
in import 29?
sum=-1314123346?
Memory check: pagefile usage is >= 2816 KB, < 16384 KB?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.reload-newaddr "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.reload-newaddr.exe")
set_tests_properties(code_api|win32.reload-newaddr PROPERTIES  PASS_REGULAR_EXPRESSION "^iters is 40?
Memory check: pagefile usage increase is < 90 KB?
sum=-994385352?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.section-max "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.section-max.exe")
set_tests_properties(code_api|win32.section-max PROPERTIES  PASS_REGULAR_EXPRESSION "^in section max dll?
loaded win32\\.section-max\\.dll\\.dll?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.suspend "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.suspend.exe")
set_tests_properties(code_api|win32.suspend PROPERTIES  PASS_REGULAR_EXPRESSION "^starting thread\\.\\.\\.suspended\\(count = 0\\)\\.\\.\\.resuming\\.\\.\\.exiting thread\\.\\.\\.resumed\\(count = 1\\)?
suspended\\(count = 1\\)\\.\\.\\.resumed,exiting?
Testing exiting with self suspended thread\\.?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.threadchurn "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.threadchurn.exe")
set_tests_properties(code_api|win32.threadchurn PROPERTIES  PASS_REGULAR_EXPRESSION "^done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.threadexit_FLAKY "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.threadexit_FLAKY.exe")
set_tests_properties(code_api|win32.threadexit_FLAKY PROPERTIES  PASS_REGULAR_EXPRESSION "^started some threads?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.virtualfree "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.virtualfree.exe")
set_tests_properties(code_api|win32.virtualfree PROPERTIES  PASS_REGULAR_EXPRESSION "^Successful?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.virtualreserve "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.virtualreserve.exe")
set_tests_properties(code_api|win32.virtualreserve PROPERTIES  PASS_REGULAR_EXPRESSION "^alloced 16384?
committed 4096?
committed 8192?
flushed 12288?
committed 16384?
attempting to decommit 3 byte cross-page 0 - should decommit two pages?
attempting to decommitted 3 byte cross-page 0 - should fail?
decommitting \\(p\\+0x10, 16384\\) \\(gets backwards aligned\\) - should hopefully fail?
decommitted size 0 and p \\(gets backwards aligned\\) - should decommit whole region?
decommitting \\(p\\+0x0, 16384\\) - should be ok?
releasing p\\+0x3010 - should fail?
releasing p\\+0x10 - will actually free?
alloced again 16384?
released p?
Successful?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.winapc "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.winapc.exe")
set_tests_properties(code_api|win32.winapc PROPERTIES  PASS_REGULAR_EXPRESSION "^Before _beginthreadex?
QueueUserAPC returned 1?
SleepEx returned 192?
Apc arg = 37?
Result = 100?
After _beginthreadex?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.winthread "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.winthread.exe")
set_tests_properties(code_api|win32.winthread PROPERTIES  PASS_REGULAR_EXPRESSION "^Before _beginthreadex?
In run_func?
After _beginthreadex?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.apc-shellcode "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.apc-shellcode.exe")
set_tests_properties(code_api|security-win32.apc-shellcode PROPERTIES  PASS_REGULAR_EXPRESSION "^apc-shellcode?
normal \\(nested\\) apc?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 7?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 6?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 6?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 5?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 5?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 4?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 5?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 4?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 4?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 3?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 4?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 3?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 3?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 2?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 4?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 3?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 3?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 2?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 3?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 2?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 2?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 1?
QueueUserAPC returned 1?
apc_func 3?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 2?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 2?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 1?
QueueUserAPC returned 1?
apc_func 2?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 1?
QueueUserAPC returned 1?
apc_func 1?
QueueUserAPC returned 1?
apc_func 0?
apc_func 3?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 2?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 2?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 1?
QueueUserAPC returned 1?
apc_func 2?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 1?
QueueUserAPC returned 1?
apc_func 1?
QueueUserAPC returned 1?
apc_func 0?
apc_func 2?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 1?
QueueUserAPC returned 1?
apc_func 1?
QueueUserAPC returned 1?
apc_func 0?
apc_func 1?
QueueUserAPC returned 1?
apc_func 0?
apc_func 0?
apc_func 2?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 1?
QueueUserAPC returned 1?
apc_func 1?
QueueUserAPC returned 1?
apc_func 0?
apc_func 1?
QueueUserAPC returned 1?
apc_func 0?
apc_func 0?
apc_func 1?
QueueUserAPC returned 1?
apc_func 0?
apc_func 0?
apc_func 0?
apc_func 2?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
apc_func 1?
QueueUserAPC returned 1?
apc_func 1?
QueueUserAPC returned 1?
apc_func 0?
apc_func 1?
QueueUserAPC returned 1?
apc_func 0?
apc_func 0?
apc_func 1?
QueueUserAPC returned 1?
apc_func 0?
apc_func 0?
apc_func 0?
apc_func 1?
QueueUserAPC returned 1?
apc_func 0?
apc_func 0?
apc_func 0?
apc_func 0?
apc_func 1?
QueueUserAPC returned 1?
apc_func 0?
apc_func 0?
apc_func 0?
apc_func 0?
apc_func 0?
apc_func 1?
QueueUserAPC returned 1?
apc_func 0?
apc_func 0?
apc_func 0?
apc_func 0?
apc_func 0?
apc_func 0?
apc_func 0?
apc_func 0?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
VSE-like native mode?
native_queue_apc returned 1?
second native_queue_apc returned 1?
SleepEx returned 192?
VSE native shellcode returned?
other APC native mode?
native_queue_apc returned 1?
second native_queue_apc returned 1?
SleepEx returned 192?
\\*\\*\\* other APC native shellcode returned?
VSE-like user mode?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
\\*\\*\\* VSE user shellcode allowed!?
other APC user shellcode?
QueueUserAPC returned 1?
second QueueUserAPC returned 1?
SleepEx returned 192?
Apc arg = 0?
Result = 8700?
\\*\\*\\* other APC user shellcode allowed!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.except-int2d "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.except-int2d.exe")
set_tests_properties(code_api|security-win32.except-int2d PROPERTIES  PASS_REGULAR_EXPRESSION "^start of test, count = 0?
breakpoint exception?
end of test, count = 2?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.except-guard "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.except-guard.exe")
set_tests_properties(code_api|security-win32.except-guard PROPERTIES  PASS_REGULAR_EXPRESSION "^start of test, count = 0?
guard page exception?
test without guard?
guard page exception?
test guard without alloc?
test without guard?
end of test, count = 2?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.thread-setcontext "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.thread-setcontext.exe")
set_tests_properties(code_api|security-win32.thread-setcontext PROPERTIES  PASS_REGULAR_EXPRESSION "^start of test count = 0?
test dummy SetThreadContext?
end of test count = 0?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.singlestep "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.singlestep.exe")
set_tests_properties(code_api|security-win32.singlestep PROPERTIES  PASS_REGULAR_EXPRESSION "^start of test, count = 0?
single step exception?
end of test, count = 3?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.except-debugreg "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.except-debugreg.exe")
set_tests_properties(code_api|security-win32.except-debugreg PROPERTIES  PASS_REGULAR_EXPRESSION "^start of test, count = 0?
set debug register?
single step seen eax = 1?
single step seen eax = 2?
end of test, count = 2?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.threadterm "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.threadterm.exe")
set_tests_properties(code_api|win32.threadterm PROPERTIES  PASS_REGULAR_EXPRESSION "^all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.earlythread "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.earlythread.exe")
set_tests_properties(code_api|win32.earlythread PROPERTIES  PASS_REGULAR_EXPRESSION "^in lib?
lib returned 4?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.tls "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.tls.exe")
set_tests_properties(code_api|win32.tls PROPERTIES  PASS_REGULAR_EXPRESSION "^About to detach using underhanded methods?
Running natively now?
Done testing tls slots?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.fpe "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.fpe.exe")
set_tests_properties(code_api|win32.fpe PROPERTIES  PASS_REGULAR_EXPRESSION "^about to do longjmp?
Error 131: Divide by zero?
.*0 / 1\\.8e\\+308 =    0?
.*0 \\* 1\\.8e\\+308 =    0?
.*1\\.8e\\+308 / 1\\.8e\\+308 =    1?
.*1\\.8e\\+308 \\* 1\\.8e\\+308 = *(inf|1\\.#J)?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.except "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.except.exe")
set_tests_properties(code_api|win32.except PROPERTIES  PASS_REGULAR_EXPRESSION "^At statement after exception?
At statement after 1st try-except?
Finally!?
Caught my own memory access violation, ignoring it!?
Exception address and target match!?
Register match!?
After exception handler?
At statement after exception?
At statement after 1st try-except?
Finally!?
Caught my own memory access violation, ignoring it!?
Exception address and target match!?
Register match!?
After exception handler?
At statement after exception?
At statement after 1st try-except?
Finally!?
Caught my own memory access violation, ignoring it!?
Exception address and target match!?
Register match!?
After exception handler?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.getthreadcontext "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.getthreadcontext.exe")
set_tests_properties(code_api|win32.getthreadcontext PROPERTIES  PASS_REGULAR_EXPRESSION "^starting thread\\.\\.\\.?
eip is valid?
eax is valid?
exiting thread?
get context self eip > 0x74000000\\? yes?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.hookerfirst "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-handle_ntdll_modify" "1" "-native_exec_hook_conflict" "1" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.hookerfirst.exe")
set_tests_properties(code_api|win32.hookerfirst PROPERTIES  PASS_REGULAR_EXPRESSION "^ready to hook 1?
ok: can't write?
VirtualProtect\\(NtTerminateProcess\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
hooked NtTerminateProcess?
VirtualProtect\\(NtTerminateProcess\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000040\\)?
ok: can't write?
do_hook\\(\\) done?
ok: can't write?
VirtualProtect\\(NtTerminateThread\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
hooked NtTerminateThread?
VirtualProtect\\(NtTerminateThread\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000040\\)?
ok: can't write?
do_hook\\(\\) done?
ok: can't write?
VirtualProtect\\(NtFlushWriteBuffer\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
hooked NtFlushWriteBuffer?
VirtualProtect\\(NtFlushWriteBuffer\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000040\\)?
ok: can't write?
do_hook\\(\\) done?
hooking done with?
hookerfirst main\\(\\)?
\\*\\*\\* invalid ret allowed!?
ready to unhook 37?
VirtualProtect\\(NtTerminateProcess\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
there be witches! what happened to my previous hook\\??
there be witches! my good unhooking intentions were squashed on NtTerminateProcess?
restored old code?
VirtualProtect\\(NtTerminateProcess\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
do_unhook\\(\\) done?
VirtualProtect\\(NtTerminateThread\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
there be witches! what happened to my previous hook\\??
there be witches! my good unhooking intentions were squashed on NtTerminateThread?
restored old code?
VirtualProtect\\(NtTerminateThread\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
do_unhook\\(\\) done?
VirtualProtect\\(NtFlushWriteBuffer\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
my hook is still there, will remove now?
there be witches! my good unhooking intentions were squashed on NtFlushWriteBuffer?
restored old code?
VirtualProtect\\(NtFlushWriteBuffer\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
do_unhook\\(\\) done?
unhooking done with?
ready to hook 37?
ok: can't write?
VirtualProtect\\(NtTerminateProcess\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
there be witches! what happened to my write\\??
VirtualProtect\\(NtTerminateProcess\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
do_hook\\(\\) done?
ok: can't write?
VirtualProtect\\(NtTerminateThread\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
there be witches! what happened to my write\\??
VirtualProtect\\(NtTerminateThread\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
do_hook\\(\\) done?
ok: can't write?
VirtualProtect\\(NtFlushWriteBuffer\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
hooked NtFlushWriteBuffer?
VirtualProtect\\(NtFlushWriteBuffer\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
do_hook\\(\\) done?
hooking done with?
ready to unhook 37?
VirtualProtect\\(NtTerminateProcess\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
my hook is still there, will remove now?
unhooked NtTerminateProcess?
restored old code?
VirtualProtect\\(NtTerminateProcess\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
do_unhook\\(\\) done?
VirtualProtect\\(NtTerminateThread\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
my hook is still there, will remove now?
unhooked NtTerminateThread?
restored old code?
VirtualProtect\\(NtTerminateThread\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
do_unhook\\(\\) done?
VirtualProtect\\(NtFlushWriteBuffer\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
my hook is still there, will remove now?
unhooked NtFlushWriteBuffer?
restored old code?
VirtualProtect\\(NtFlushWriteBuffer\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
do_unhook\\(\\) done?
unhooking done with?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.hooker-secur32 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.hooker-secur32.exe")
set_tests_properties(code_api|win32.hooker-secur32 PROPERTIES  PASS_REGULAR_EXPRESSION "^ready to hook?
ok: can't write?
VirtualProtect\\(kernel32\\.dll!GetProcessHeaps\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
hooked GetProcessHeaps?
restored old code?
VirtualProtect\\(GetProcessHeaps\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000040\\)?
ok: can't write?
all should be good?
ok: can't write?
VirtualProtect\\(kernel32\\.dll!VirtualQueryEx\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
hooked VirtualQueryEx?
restored old code?
VirtualProtect\\(VirtualQueryEx\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000040\\)?
ok: can't write?
all should be good?
loading secur32?
ok: can't write?
VirtualProtect\\(secur32\\.dll!LsaLogonUser\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
hooked LsaLogonUser?
restored old code?
VirtualProtect\\(LsaLogonUser\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000040\\)?
ok: can't write?
all should be good?
ok: can't write?
VirtualProtect\\(secur32\\.dll!MakeSignature\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
hooked MakeSignature?
restored old code?
VirtualProtect\\(MakeSignature\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000040\\)?
ok: can't write?
all should be good?
hooking done with?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.rsbtest "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.rsbtest.exe")
set_tests_properties(code_api|win32.rsbtest PROPERTIES  PASS_REGULAR_EXPRESSION "^foo\\(10\\)=5?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.setcxtsyscall "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.setcxtsyscall.exe")
set_tests_properties(code_api|win32.setcxtsyscall PROPERTIES  PASS_REGULAR_EXPRESSION "^&next_instr recorded?
starting thread\\.\\.\\.?
thread suspended\\.?
control has been redirected\\.?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.setthreadcontext "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.setthreadcontext.exe")
set_tests_properties(code_api|win32.setthreadcontext PROPERTIES  PASS_REGULAR_EXPRESSION "^&next_instr recorded?
starting thread\\.\\.\\.?
thread suspended\\.?
control has been redirected\\.?
thread suspended\\.?
ecx was set, exiting?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.aslr-ind "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.aslr-ind.exe")
set_tests_properties(code_api|security-win32.aslr-ind PROPERTIES  PASS_REGULAR_EXPRESSION "^aslr-ind main\\(\\)?
ready to go 332?
16?
at base, no ASLR?
16?
\\*\\*\\* invalid indirect call at preferred base!?
32?
\\*\\*\\* invalid indirect call allowed!?
indirect call done?
starting bad return function?
looking at ring?
PRECIOUS in a DLL, ATTACK SUCCESSFUL!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.codemod-threads_FLAKY "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.codemod-threads_FLAKY.exe")
set_tests_properties(code_api|security-win32.codemod-threads_FLAKY PROPERTIES  PASS_REGULAR_EXPRESSION "^starting up?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.except-execution "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.except-execution.exe")
set_tests_properties(code_api|security-win32.except-execution PROPERTIES  PASS_REGULAR_EXPRESSION "^In RaiseException filter?
In RaiseException handler?
Inside first filter eax=badcdef0?
	exception code = 0xc0000005, ExceptionFlags=0x00000000?
	record=00000000, params=2?
	PC 0x00401... tried to read address 0xbadcdef0?
	pc=0x00401... eax=0xbadcdef0?
  ContextFlags=0x000100.f ?
  Edi=0xeecdcdcd Esi=0xffcdcdcd Ebx=0xbbcdcdcd ?
  Edx=0xddcdcdcd Ecx=0xcccdcdcd ?
  ?
  Eax=0xbadcdef0 ?
  Ebp=0x1400ef.. Eip=0x00401... SegCs=0x000000.. ?
  EFlags & 0xFFFF=0x00000202 Esp=0x1400eb.. SegSs=0x000000.. ?
  <floating point area>?
  SegGs=0x000000.. SegFs=0x000000.. SegEs=0x000000.. SegDs=0x000000.. ?
Inside first handler?
At statement after 1st try-except?
Inside 2nd filter?
Inside 3rd filter?
	exception code = 0xc0000005, ExceptionFlags=0x00000000?
	record=00000000, params=2?
	PC 0xdeadbeef tried to read address 0xdeadbeef?
	pc=0xdeadbeef eax=0x00000000?
  ContextFlags=0x000100.f ?
  Edi=0xeecdcdcd Esi=0xffcdcdcd Ebx=0xbbcdcdcd ?
  Edx=0xdeadbeef Ecx=0xcccdcdcd ?
  ?
  Eax=0x00000000 ?
  Ebp=0x1400ef.. Eip=0xdeadbeef SegCs=0x000000.. ?
  EFlags & 0xFFFF=0x00000202 Esp=0x1400eb.. SegSs=0x000000.. ?
  <floating point area>?
  SegGs=0x000000.. SegFs=0x000000.. SegEs=0x000000.. SegDs=0x000000.. ?
Finally!?
Expected memory access violation, ignoring it!?
After exception handler?
Attempting execution of badfunc?
DATA: At statement after exception?
DATA: At statement after 1st try-except?
DATA: Inside 2nd try?
DATA: Finally!?
DATA: At statement after 2nd try-finally?
DATA: After exception handler?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.except-thread "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.except-thread.exe")
set_tests_properties(code_api|security-win32.except-thread PROPERTIES  PASS_REGULAR_EXPRESSION "^THREAD0: Creating thread 1?
Attempting execution of badfunc?
DATA: At statement after exception?
DATA: At statement after 1st try-except?
DATA: Inside 2nd try?
DATA: Finally!?
DATA: At statement after 2nd try-finally?
DATA: After exception handler?
THREAD0: After running other thread?
Attempting execution of badfunc?
DATA: At statement after exception?
DATA: At statement after 1st try-except?
DATA: Inside 2nd try?
DATA: Finally!?
DATA: At statement after 2nd try-finally?
DATA: After exception handler?
THREAD0: After calling more bad code here?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.gbop-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.gbop-test.exe")
set_tests_properties(code_api|security-win32.gbop-test PROPERTIES  PASS_REGULAR_EXPRESSION "^plain C call?
res=kernel32_base?
plain asm call?
res=kernel32_base?
pretend on stack?
exception since not cleaning up stack?
res=kernel32_base?
pretend on flushed stack?
exception since not cleaning up stack?
res=kernel32_base?
pretend in image but not after call?
res=kernel32_base?
JMP allowed!?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.hooker_FLAKY "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.hooker_FLAKY.exe")
set_tests_properties(code_api|security-win32.hooker_FLAKY PROPERTIES  PASS_REGULAR_EXPRESSION "^unset X bit?
VirtualProtect\\(VirtualProtect\\[0x00000000\\],4096,0x00000008,prev\\) = 1 GLE=00000000 prev=00000020?
VirtualProtect\\(VirtualProtect\\[0x00000000\\],4096,0x00000004,prev\\) = 1 GLE=00000000 prev=00000008?
VirtualProtect\\(VirtualProtect\\[0x00000000\\],4096,0x00000104,prev\\) = 1 GLE=00000000 prev=00000008?
VirtualProtect\\(VirtualProtect\\[0x00000000\\],4096,0x00000104,prev\\) = 1 GLE=00000000 prev=00000108?
ready to hook far?
VirtualProtect\\(VirtualProtect\\[0x00000000\\],4096,0x00000040,prev\\) = 1 GLE=00000000 prev=00000108?
doublecheck flags?
VirtualQuery\\(0x00000000\\) = 28 GLE=00000000 prev=00000040 rwx-?
 DEP => ok?
ready to hook?
VirtualProtect\\(VirtualProtect\\[0x00000000\\],4096,0x00000040,prev\\) = 1 GLE=00000000 prev=00000020?
one more?
VirtualProtect\\(VirtualProtect\\[0x00000000\\],4096,0x00000040,prev\\) = 1 GLE=00000000 prev=00000040?
now third \\.\\.\\.?
VirtualProtect\\(VirtualProtect\\[0x00000000\\],4096,0x00000040,prev\\) = 1 GLE=00000000 prev=00000040?
doublecheck flags?
VirtualQuery\\(0x00000000\\) = 28 GLE=00000000 prev=00000040 rwx-?
 DEP => ok?
check consistency \\.\\.\\.?
VirtualProtect\\(VirtualProtect\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00badcde?
VirtualProtect\\(VirtualProtect\\[0x00000000\\],4096,0x00000040,prev\\) = 1 GLE=00000000 prev=00000040?
hooking done with?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.hooker-ntdll "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-handle_ntdll_modify" "1" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.hooker-ntdll.exe")
set_tests_properties(code_api|security-win32.hooker-ntdll PROPERTIES  PASS_REGULAR_EXPRESSION "^ready to hook?
ok: can't write?
VirtualProtect\\(LdrLoadDll\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
there be witches! what happened to my write\\??
restored old code?
VirtualProtect\\(LdrLoadDll\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
all should be good?
ok: can't write?
VirtualProtect\\(LdrLoadDll\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
there be witches! what happened to my write\\??
restored old code?
VirtualProtect\\(LdrLoadDll\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
all should be good?
ok: can't write?
VirtualProtect\\(NtFlushInstructionCache\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
there be witches! what happened to my write\\??
restored old code?
VirtualProtect\\(NtFlushInstructionCache\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
all should be good?
ok: can't write?
VirtualProtect\\(NtFlushInstructionCache\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
there be witches! what happened to my write\\??
restored old code?
VirtualProtect\\(NtFlushInstructionCache\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
all should be good?
ok: can't write?
VirtualProtect\\(NtFlushWriteBuffer\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
there be witches! what happened to my write\\??
restored old code?
VirtualProtect\\(NtFlushWriteBuffer\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
all should be good?
ok: can't write?
VirtualProtect\\(NtFlushWriteBuffer\\[0x00000000\\],4096,PAGE_EXECUTE_READWRITE,prev\\) = 0 GLE=00000000 prev=00000020?
there be witches! what happened to my write\\??
restored old code?
VirtualProtect\\(NtFlushWriteBuffer\\[0x00000000\\],4096,PAGE_EXECUTE_READ,\\.\\.\\.\\) = 0 GLE=00000000?
old permissions \\.\\.\\.prev=00000020\\)?
ok: can't write?
all should be good?
hooking done with?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.indexisting "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.indexisting.exe")
set_tests_properties(code_api|security-win32.indexisting PROPERTIES  PASS_REGULAR_EXPRESSION "^a?
A?
z?
10?
21?
21?
the answer is 42?
calling via PLT-style call?
this is a normal function 123456?
calling via PLT-style call?
PRECIOUS function shouldn't be reachable! ATTACK SUCCESSFUL!?
calling via PLT-style call?
this is another normal function 123456, but shouldn't be called!?
calling via PLT-style indirect jmp?
this is a normal function 123456?
calling via PLT-style indirect jmp?
PRECIOUS function shouldn't be reachable! ATTACK SUCCESSFUL!?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.patterns "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.patterns.exe")
set_tests_properties(code_api|security-win32.patterns PROPERTIES  PASS_REGULAR_EXPRESSION "^testing hook pattern?
testing non-pattern-match on same page?
malicious code executing #1!?
testing non-pattern-match in same region?
malicious code executing #2!?
testing hook pattern again?
testing non-pattern-match in same region by another thread?
malicious code executing #3!?
testing different pattern match in same region?
malicious code executing #4!?
testing pattern match that modifies itself to be a non-match?
malicious code executing #5!?
finished?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.ret-SEH "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.ret-SEH.exe")
set_tests_properties(code_api|security-win32.ret-SEH PROPERTIES  PASS_REGULAR_EXPRESSION "^ret-SEH test starting?
ret-SEH test: trylevel -1?
in foo level -1?
ret-SEH test: trylevel 0?
in foo level 0?
ret-SEH test: trylevel 1?
in foo level 1?
ret-SEH test stopping?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.sd_tester "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.sd_tester.exe")
set_tests_properties(code_api|security-win32.sd_tester PROPERTIES  PASS_REGULAR_EXPRESSION "^full suite run?
Executing stack shellcode\\.\\.\\.?
success!?
Executing heap shellcode\\.\\.\\.?
success!?
Executing newheap shellcode\\.\\.\\.?
success!?
Executing crtheap shellcode\\.\\.\\.?
success!?
Executing virtual shellcode\\.\\.\\.?
success!?
Executing virtual_x shellcode\\.\\.\\.?
success!?
Executing \\.data shellcode\\.\\.\\.?
success!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.sec-adata "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.sec-adata.exe")
set_tests_properties(code_api|security-win32.sec-adata PROPERTIES  PASS_REGULAR_EXPRESSION "^starting good adata test?
1?
starting bad acode test?
1?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.secalign-fixed "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.secalign-fixed.exe")
set_tests_properties(code_api|security-win32.secalign-fixed PROPERTIES  PASS_REGULAR_EXPRESSION "^in fixed dll?
loaded security-win32\\.secalign-fixed\\.dll\\.dll?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.sec-fixed "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.sec-fixed.exe")
set_tests_properties(code_api|security-win32.sec-fixed PROPERTIES  PASS_REGULAR_EXPRESSION "^in fixed dll?
loaded security-win32\\.sec-fixed\\.dll\\.dll?
cmd\\.exe as data?
calc\\.exe as data and no resolve?
rundl32\\.exe as no resolve?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.sec-xdata "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.sec-xdata.exe")
set_tests_properties(code_api|security-win32.sec-xdata PROPERTIES  PASS_REGULAR_EXPRESSION "^starting good xdata test?
1?
starting bad xdata test?
1?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-win32.TestNTFlush "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-win32.TestNTFlush.exe")
set_tests_properties(code_api|security-win32.TestNTFlush PROPERTIES  PASS_REGULAR_EXPRESSION "^starting tests?
2?
3?
0?
3?
43981?
4660?
2?
3?
0?
3?
43981?
4660?
2?
3?
0?
3?
43981?
4660?
2?
3?
0?
3?
43981?
4660?
about to exit?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|win32.dotnet "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.dotnet.exe")
set_tests_properties(code_api|win32.dotnet PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-common.codemod "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-common.codemod.exe")
set_tests_properties(code_api|security-common.codemod PROPERTIES  PASS_REGULAR_EXPRESSION "^starting up?
about to exit?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-common.decode-bad-stack_FLAKY "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-common.decode-bad-stack_FLAKY.exe")
set_tests_properties(code_api|security-common.decode-bad-stack_FLAKY PROPERTIES  PASS_REGULAR_EXPRESSION "^Bad instr about to happen?
Got an illegal instruction?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-common.retexisting "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-common.retexisting.exe")
set_tests_properties(code_api|security-common.retexisting PROPERTIES  PASS_REGULAR_EXPRESSION "^starting good function?
in foo?
first foo a=1?
in foo?
second foo a=2?
starting bad function?
looking at ring?
M-m-my PRECIOUS is stolen! ATTACK SUCCESSFUL!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-common.ret_noncall_trace "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-common.ret_noncall_trace.exe")
set_tests_properties(code_api|security-common.ret_noncall_trace PROPERTIES  PASS_REGULAR_EXPRESSION "^I think, therefore I am?
 \\.\\.\\. in serious trouble!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-common.retnonexisting "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-common.retnonexisting.exe")
set_tests_properties(code_api|security-common.retnonexisting PROPERTIES  PASS_REGULAR_EXPRESSION "^starting good function?
in foo?
first foo a=1?
in foo?
second foo a=2?
starting bad function?
looking at ring 0x00000001?
fault caught on 0x00000001?
looking at ring 0x00000000?
fault caught on 0x00000000?
looking at ring 0x00badbad?
fault caught on 0x00badbad?
looking at ring 0x7fffffff?
fault caught on 0x7fffffff?
looking at ring 0x80000000?
fault caught on 0x80000000?
looking at ring 0xbadbad00?
fault caught on 0xbadbad00?
looking at ring 0xfffffffe?
fault caught on 0xfffffffe?
looking at ring 0xffffffff?
fault caught on 0xffffffff?
all done \\[not seen\\]?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-common.selfmod2 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-common.selfmod2.exe")
set_tests_properties(code_api|security-common.selfmod2 PROPERTIES  PASS_REGULAR_EXPRESSION "^foo returned 10?
foo returned 20?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-common.selfmod-big "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-common.selfmod-big.exe")
set_tests_properties(code_api|security-common.selfmod-big PROPERTIES  PASS_REGULAR_EXPRESSION "^Executed 0xabcd iters?
Executed 0x1234 iters?
Executed 0xef01 iters?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-common.selfmod "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-common.selfmod.exe")
set_tests_properties(code_api|security-common.selfmod PROPERTIES  PASS_REGULAR_EXPRESSION "^Executed 0xabcd iters?
Executed 0x1234 iters?
Executed 0xef01 iters?
start cross-page test?
end cross-page test?
start last byte test?
sandbox_last_byte: 0?
sandbox_last_byte: 1?
end last byte test?
start fault test?
int is 42?
fault bytes are 89 01 preceded by 07 00 00 00?
int is 42?
Illegal instruction?
fault bytes are 0f 0b preceded by c6 41 fb 05?
end fault test?
end selfmod loop test?
end selfmod direction flag test?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-common.vbjmp-rac-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-common.vbjmp-rac-test.exe")
set_tests_properties(code_api|security-common.vbjmp-rac-test PROPERTIES  PASS_REGULAR_EXPRESSION "^VB ret \\\$\\+1 about to happen?
in vbpop?
in bar?
vbpop success?
in vbpop?
in bar?
vbpop success?
in vbpop?
in bar?
vbpop success?
in vbpop?
in bar?
vbpop success?
in vbpop?
in bar?
vbpop success?
in vbpop?
in bar?
vbpop success?
in vbpop?
in bar?
vbpop success?
in vbpop?
in bar?
vbpop success?
in vbpop?
in bar?
vbpop success?
in vbpop?
in bar?
vbpop success?
VB push\\;ret about to happen?
in foo?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-common.TestAllocWE "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-common.TestAllocWE.exe")
set_tests_properties(code_api|security-common.TestAllocWE PROPERTIES  PASS_REGULAR_EXPRESSION "^starting up?
2?
0?
1?
4660?
43981?
about to exit?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|security-common.TestMemProtChg "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/security-common.TestMemProtChg.exe")
set_tests_properties(code_api|security-common.TestMemProtChg PROPERTIES  PASS_REGULAR_EXPRESSION "^starting up?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
starting stack tests?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
6?
3?
6?
3?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
2?
0?
43981?
4660?
4660?
43981?
6?
3?
starting overlap tests?
43?
41?
about to exit?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1566;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4223;torun_normal;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.call-retarget "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.call-retarget.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.call-retarget.exe")
set_tests_properties(code_api|client.call-retarget PROPERTIES  PASS_REGULAR_EXPRESSION "^called foo\\(\\)?
called foo\\(\\)?
called bar\\(\\)?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.int64_overrides "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.int64_overrides.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.int64_overrides PROPERTIES  PASS_REGULAR_EXPRESSION "^1?
Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.abort "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe@-s@90@-quiet@-debug@-use_dll@E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll@-exit0@-stderr_mask@0xC@-msgbox_mask@0@-dumpcore_mask@0x7d@-staged@-code_api@-c@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.abort.dll.dll@--@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.abort.exe" "-D" "postcmd=" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/abort.expect" "-D" "code=8" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runcode.cmake")
set_tests_properties(code_api|client.abort PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.crashmsg "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.crashmsg.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.crashmsg PROPERTIES  PASS_REGULAR_EXPRESSION "^<Application .*simple_app.*.  My Fancy Tool internal crash at PC 0x.*.  Please report this at http:\\/\\/myfancytool.com/bugtracker.  Program aborted.?
.*?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.modules "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.modules.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.modules.exe" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.modules.appdll.dll")
set_tests_properties(code_api|client.modules PROPERTIES  PASS_REGULAR_EXPRESSION "^LOADED MODULE: COMDLG32\\.dll?
UNLOADED MODULE: COMDLG32\\.dll?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.alloc "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-no_vm_base_near_app" "-vm_base" "0x120000000" "-checklevel" "3" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.alloc.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.alloc.exe")
set_tests_properties(code_api|client.alloc PROPERTIES  PASS_REGULAR_EXPRESSION "^thank you for testing the client interface?
  testing global memory alloc\\.\\.\\.success?
  testing nonheap memory alloc\\.\\.\\.success?
  testing custom memory alloc\\.\\.\\.\\.success?
  testing custom windows alloc\\.\\.\\.\\.success?
  testing alignment\\.\\.\\.\\.success?
thread initialization:?
  testing local memory alloc\\.\\.\\.\\.success?
  testing global memory alloc\\.\\.\\.success?
code cache:?
  testing local memory alloc\\.\\.\\.\\.success?
  testing global memory alloc\\.\\.\\.success?
  testing nonheap memory alloc\\.\\.\\.success?
  testing raw memory alloc\\.\\.\\.success?
  testing query pretend-write\\.\\.\\.\\.success?
wrote to app code page successfully?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.cleancall "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.cleancall.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.cleancall.exe")
set_tests_properties(code_api|client.cleancall PROPERTIES  PASS_REGULAR_EXPRESSION "^cleancall_aflags_save?
cleancall_no_aflags_save?
testing clean calls?
inserting clean call crash code 1?
in restore_state for our clean call crash 1?
Access violation, instance 1?
testing clean calls?
inserting clean call crash code 2?
in restore_state for our clean call crash 2?
Access violation, instance 2?
testing clean calls?
inserting xsp arg testing?
bar 0xbcbcaba1 0xbcbcaba0?
in restore_state for our clean call crash 3?
Access violation, instance 3?
testing clean calls?
in restore_state for our clean call crash 4?
Access violation, instance 4?
testing clean calls?
inserting saved reg access testing?
verifying values?
did not crash?
done testing clean calls?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.count-ctis "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.count-ctis.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.count-ctis.exe")
set_tests_properties(code_api|client.count-ctis PROPERTIES  PASS_REGULAR_EXPRESSION "^x=0xabcd1234?
thank you for testing the client interface?
direct calls\\.\\.\\. yes?
indirect calls\\.\\.\\. yes?
direct jumps\\.\\.\\. yes?
indirect jumps\\.\\.\\. yes?
conditional branches\\.\\.\\. yes?
returns\\.\\.\\. yes?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.count-ctis-noopt "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-opt_cleancall" "0" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.count-ctis.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.count-ctis.exe")
set_tests_properties(code_api|client.count-ctis-noopt PROPERTIES  PASS_REGULAR_EXPRESSION "^x=0xabcd1234?
thank you for testing the client interface?
direct calls\\.\\.\\. yes?
indirect calls\\.\\.\\. yes?
direct jumps\\.\\.\\. yes?
indirect jumps\\.\\.\\. yes?
conditional branches\\.\\.\\. yes?
returns\\.\\.\\. yes?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.syscall "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-no_follow_children" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.syscall.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.syscall.exe")
set_tests_properties(code_api|client.syscall PROPERTIES  PASS_REGULAR_EXPRESSION "^starting syscall monitoring?
[0-9a-fx?
]*?
stopping syscall monitoring?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.count-bbs "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.count-bbs.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.count-bbs PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
bbcount0_fp\\.\\.\\. yes?
bbcount1\\.\\.\\. yes?
bbcount4\\.\\.\\. yes?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.cleancallparams "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.cleancallparams.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.cleancallparams PROPERTIES  PASS_REGULAR_EXPRESSION "^Finished?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.app_inscount "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.app_inscount.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.app_inscount PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
all instructions matched?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.annotation-concurrency "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "120" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.exe" "client.annotation-concurrency.appdll.dll" "A" "4")
set_tests_properties(code_api|client.annotation-concurrency PROPERTIES  PASS_REGULAR_EXPRESSION "^      <Init annotation test client with fast decoding>?
?
    -------------------------------------------------------------------?
     Performance for solving AX=B Linear Equation using Jacobi method?
     Running on DynamoRIO?
     Client version 2\\.2\\.8?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
?
     Matrix Size :  512?
     Threads     :  4?
?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args \\(handler #1\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Initialize mode 0>?
      <Initialize mode 1>?
      <Initialize context 0 'thread #0' in mode 0>?
      <Initialize context 1 'thread #1' in mode 0>?
      <Initialize context 2 'thread #2' in mode 0>?
      <Initialize context 3 'thread #3' in mode 0>?
      <Initialize context 4 'thread-handling' in mode 0>?
?
     Started iteration 1 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 2 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=2, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 3 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=3, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 4 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=4, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 5 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=5, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 6 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=6, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 7 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=7, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 8 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=8, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 9 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=9, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 10 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=10, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
?
     The Jacobi Method For AX=B \\.\\.\\.\\.\\.\\.\\.\\.\\.DONE?
     Total Number Of iterations   :  10?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
      <In context 0 at event 1, the mode changed from 0 to 1>?
      <In context 0 at event 2, the mode changed from 1 to 0>?
      <In context 0 at event 3, the mode changed from 0 to 1>?
      <In context 0 at event 4, the mode changed from 1 to 0>?
      <In context 0 at event 5, the mode changed from 0 to 1>?
      <In context 0 at event 6, the mode changed from 1 to 0>?
      <In context 0 at event 7, the mode changed from 0 to 1>?
      <In context 0 at event 8, the mode changed from 1 to 0>?
      <In context 0 at event 9, the mode changed from 0 to 1>?
      <In context 0 at event 10, the mode changed from 1 to 0>?
      <In context 0 at event 11, the mode changed from 0 to 1>?
      <In context 0 at event 12, the mode changed from 1 to 0>?
      <In context 0 at event 13, the mode changed from 0 to 1>?
      <In context 0 at event 14, the mode changed from 1 to 0>?
      <In context 0 at event 15, the mode changed from 0 to 1>?
      <In context 0 at event 16, the mode changed from 1 to 0>?
      <In context 0 at event 17, the mode changed from 0 to 1>?
      <In context 0 at event 18, the mode changed from 1 to 0>?
      <In context 0 at event 19, the mode changed from 0 to 1>?
      <In context 0 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #0' terminates in mode 0>?
      <In context 1 at event 1, the mode changed from 0 to 1>?
      <In context 1 at event 2, the mode changed from 1 to 0>?
      <In context 1 at event 3, the mode changed from 0 to 1>?
      <In context 1 at event 4, the mode changed from 1 to 0>?
      <In context 1 at event 5, the mode changed from 0 to 1>?
      <In context 1 at event 6, the mode changed from 1 to 0>?
      <In context 1 at event 7, the mode changed from 0 to 1>?
      <In context 1 at event 8, the mode changed from 1 to 0>?
      <In context 1 at event 9, the mode changed from 0 to 1>?
      <In context 1 at event 10, the mode changed from 1 to 0>?
      <In context 1 at event 11, the mode changed from 0 to 1>?
      <In context 1 at event 12, the mode changed from 1 to 0>?
      <In context 1 at event 13, the mode changed from 0 to 1>?
      <In context 1 at event 14, the mode changed from 1 to 0>?
      <In context 1 at event 15, the mode changed from 0 to 1>?
      <In context 1 at event 16, the mode changed from 1 to 0>?
      <In context 1 at event 17, the mode changed from 0 to 1>?
      <In context 1 at event 18, the mode changed from 1 to 0>?
      <In context 1 at event 19, the mode changed from 0 to 1>?
      <In context 1 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #1' terminates in mode 0>?
      <In context 2 at event 1, the mode changed from 0 to 1>?
      <In context 2 at event 2, the mode changed from 1 to 0>?
      <In context 2 at event 3, the mode changed from 0 to 1>?
      <In context 2 at event 4, the mode changed from 1 to 0>?
      <In context 2 at event 5, the mode changed from 0 to 1>?
      <In context 2 at event 6, the mode changed from 1 to 0>?
      <In context 2 at event 7, the mode changed from 0 to 1>?
      <In context 2 at event 8, the mode changed from 1 to 0>?
      <In context 2 at event 9, the mode changed from 0 to 1>?
      <In context 2 at event 10, the mode changed from 1 to 0>?
      <In context 2 at event 11, the mode changed from 0 to 1>?
      <In context 2 at event 12, the mode changed from 1 to 0>?
      <In context 2 at event 13, the mode changed from 0 to 1>?
      <In context 2 at event 14, the mode changed from 1 to 0>?
      <In context 2 at event 15, the mode changed from 0 to 1>?
      <In context 2 at event 16, the mode changed from 1 to 0>?
      <In context 2 at event 17, the mode changed from 0 to 1>?
      <In context 2 at event 18, the mode changed from 1 to 0>?
      <In context 2 at event 19, the mode changed from 0 to 1>?
      <In context 2 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #2' terminates in mode 0>?
      <In context 3 at event 1, the mode changed from 0 to 1>?
      <In context 3 at event 2, the mode changed from 1 to 0>?
      <In context 3 at event 3, the mode changed from 0 to 1>?
      <In context 3 at event 4, the mode changed from 1 to 0>?
      <In context 3 at event 5, the mode changed from 0 to 1>?
      <In context 3 at event 6, the mode changed from 1 to 0>?
      <In context 3 at event 7, the mode changed from 0 to 1>?
      <In context 3 at event 8, the mode changed from 1 to 0>?
      <In context 3 at event 9, the mode changed from 0 to 1>?
      <In context 3 at event 10, the mode changed from 1 to 0>?
      <In context 3 at event 11, the mode changed from 0 to 1>?
      <In context 3 at event 12, the mode changed from 1 to 0>?
      <In context 3 at event 13, the mode changed from 0 to 1>?
      <In context 3 at event 14, the mode changed from 1 to 0>?
      <In context 3 at event 15, the mode changed from 0 to 1>?
      <In context 3 at event 16, the mode changed from 1 to 0>?
      <In context 3 at event 17, the mode changed from 0 to 1>?
      <In context 3 at event 18, the mode changed from 1 to 0>?
      <In context 3 at event 19, the mode changed from 0 to 1>?
      <In context 3 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #3' terminates in mode 0>?
      <In context 4 at event 1, the mode changed from 0 to 1>?
      <In context 4 at event 2, the mode changed from 1 to 0>?
      <In context 4 at event 3, the mode changed from 0 to 1>?
      <In context 4 at event 4, the mode changed from 1 to 0>?
      <In context 4 at event 5, the mode changed from 0 to 1>?
      <In context 4 at event 6, the mode changed from 1 to 0>?
      <In context 4 at event 7, the mode changed from 0 to 1>?
      <In context 4 at event 8, the mode changed from 1 to 0>?
      <In context 4 at event 9, the mode changed from 0 to 1>?
      <In context 4 at event 10, the mode changed from 1 to 0>?
      <In context 4 at event 11, the mode changed from 0 to 1>?
      <In context 4 at event 12, the mode changed from 1 to 0>?
      <In context 4 at event 13, the mode changed from 0 to 1>?
      <In context 4 at event 14, the mode changed from 1 to 0>?
      <In context 4 at event 15, the mode changed from 0 to 1>?
      <In context 4 at event 16, the mode changed from 1 to 0>?
      <In context 4 at event 17, the mode changed from 0 to 1>?
      <In context 4 at event 18, the mode changed from 1 to 0>?
      <In context 4 at event 19, the mode changed from 0 to 1>?
      <In context 4 at event 20, the mode changed from 1 to 0>?
      <In context 4 at event 21, the mode changed from 0 to 1>?
      <In context 4 at event 22, the mode changed from 1 to 0>?
      <In context 4 at event 23, the mode changed from 0 to 1>?
      <In context 4 at event 24, the mode changed from 1 to 0>?
      <In context 4 at event 25, the mode changed from 0 to 1>?
      <In context 4 at event 26, the mode changed from 1 to 0>?
      <In context 4 at event 27, the mode changed from 0 to 1>?
      <In context 4 at event 28, the mode changed from 1 to 0>?
      <In context 4 at event 29, the mode changed from 0 to 1>?
      <In context 4 at event 30, the mode changed from 1 to 0>?
      <In context 4 at event 31, the mode changed from 0 to 1>?
      <In context 4 at event 32, the mode changed from 1 to 0>?
      <In context 4 at event 33, the mode changed from 0 to 1>?
      <In context 4 at event 34, the mode changed from 1 to 0>?
      <In context 4 at event 35, the mode changed from 0 to 1>?
      <In context 4 at event 36, the mode changed from 1 to 0>?
      <In context 4 at event 37, the mode changed from 0 to 1>?
      <In context 4 at event 38, the mode changed from 1 to 0>?
      <In context 4 at event 39, the mode changed from 0 to 1>?
      <In context 4 at event 40, the mode changed from 1 to 0>?
      <Context 'thread-handling' terminates in mode 0>?
\$" TIMEOUT "120" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.annotation-concurrency.full-decode "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "120" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.dll.dll" "full-decode" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.exe" "client.annotation-concurrency.appdll.dll" "A" "4")
set_tests_properties(code_api|client.annotation-concurrency.full-decode PROPERTIES  PASS_REGULAR_EXPRESSION "^      <Init annotation test client with full decoding>?
?
    -------------------------------------------------------------------?
     Performance for solving AX=B Linear Equation using Jacobi method?
     Running on DynamoRIO?
     Client version 2\\.2\\.8?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
?
     Matrix Size :  512?
     Threads     :  4?
?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args \\(handler #1\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Initialize mode 0>?
      <Initialize mode 1>?
      <Initialize context 0 'thread #0' in mode 0>?
      <Initialize context 1 'thread #1' in mode 0>?
      <Initialize context 2 'thread #2' in mode 0>?
      <Initialize context 3 'thread #3' in mode 0>?
      <Initialize context 4 'thread-handling' in mode 0>?
?
     Started iteration 1 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 2 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=2, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 3 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=3, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 4 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=4, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 5 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=5, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 6 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=6, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 7 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=7, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 8 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=8, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 9 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=9, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 10 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=10, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
?
     The Jacobi Method For AX=B \\.\\.\\.\\.\\.\\.\\.\\.\\.DONE?
     Total Number Of iterations   :  10?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
      <In context 0 at event 1, the mode changed from 0 to 1>?
      <In context 0 at event 2, the mode changed from 1 to 0>?
      <In context 0 at event 3, the mode changed from 0 to 1>?
      <In context 0 at event 4, the mode changed from 1 to 0>?
      <In context 0 at event 5, the mode changed from 0 to 1>?
      <In context 0 at event 6, the mode changed from 1 to 0>?
      <In context 0 at event 7, the mode changed from 0 to 1>?
      <In context 0 at event 8, the mode changed from 1 to 0>?
      <In context 0 at event 9, the mode changed from 0 to 1>?
      <In context 0 at event 10, the mode changed from 1 to 0>?
      <In context 0 at event 11, the mode changed from 0 to 1>?
      <In context 0 at event 12, the mode changed from 1 to 0>?
      <In context 0 at event 13, the mode changed from 0 to 1>?
      <In context 0 at event 14, the mode changed from 1 to 0>?
      <In context 0 at event 15, the mode changed from 0 to 1>?
      <In context 0 at event 16, the mode changed from 1 to 0>?
      <In context 0 at event 17, the mode changed from 0 to 1>?
      <In context 0 at event 18, the mode changed from 1 to 0>?
      <In context 0 at event 19, the mode changed from 0 to 1>?
      <In context 0 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #0' terminates in mode 0>?
      <In context 1 at event 1, the mode changed from 0 to 1>?
      <In context 1 at event 2, the mode changed from 1 to 0>?
      <In context 1 at event 3, the mode changed from 0 to 1>?
      <In context 1 at event 4, the mode changed from 1 to 0>?
      <In context 1 at event 5, the mode changed from 0 to 1>?
      <In context 1 at event 6, the mode changed from 1 to 0>?
      <In context 1 at event 7, the mode changed from 0 to 1>?
      <In context 1 at event 8, the mode changed from 1 to 0>?
      <In context 1 at event 9, the mode changed from 0 to 1>?
      <In context 1 at event 10, the mode changed from 1 to 0>?
      <In context 1 at event 11, the mode changed from 0 to 1>?
      <In context 1 at event 12, the mode changed from 1 to 0>?
      <In context 1 at event 13, the mode changed from 0 to 1>?
      <In context 1 at event 14, the mode changed from 1 to 0>?
      <In context 1 at event 15, the mode changed from 0 to 1>?
      <In context 1 at event 16, the mode changed from 1 to 0>?
      <In context 1 at event 17, the mode changed from 0 to 1>?
      <In context 1 at event 18, the mode changed from 1 to 0>?
      <In context 1 at event 19, the mode changed from 0 to 1>?
      <In context 1 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #1' terminates in mode 0>?
      <In context 2 at event 1, the mode changed from 0 to 1>?
      <In context 2 at event 2, the mode changed from 1 to 0>?
      <In context 2 at event 3, the mode changed from 0 to 1>?
      <In context 2 at event 4, the mode changed from 1 to 0>?
      <In context 2 at event 5, the mode changed from 0 to 1>?
      <In context 2 at event 6, the mode changed from 1 to 0>?
      <In context 2 at event 7, the mode changed from 0 to 1>?
      <In context 2 at event 8, the mode changed from 1 to 0>?
      <In context 2 at event 9, the mode changed from 0 to 1>?
      <In context 2 at event 10, the mode changed from 1 to 0>?
      <In context 2 at event 11, the mode changed from 0 to 1>?
      <In context 2 at event 12, the mode changed from 1 to 0>?
      <In context 2 at event 13, the mode changed from 0 to 1>?
      <In context 2 at event 14, the mode changed from 1 to 0>?
      <In context 2 at event 15, the mode changed from 0 to 1>?
      <In context 2 at event 16, the mode changed from 1 to 0>?
      <In context 2 at event 17, the mode changed from 0 to 1>?
      <In context 2 at event 18, the mode changed from 1 to 0>?
      <In context 2 at event 19, the mode changed from 0 to 1>?
      <In context 2 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #2' terminates in mode 0>?
      <In context 3 at event 1, the mode changed from 0 to 1>?
      <In context 3 at event 2, the mode changed from 1 to 0>?
      <In context 3 at event 3, the mode changed from 0 to 1>?
      <In context 3 at event 4, the mode changed from 1 to 0>?
      <In context 3 at event 5, the mode changed from 0 to 1>?
      <In context 3 at event 6, the mode changed from 1 to 0>?
      <In context 3 at event 7, the mode changed from 0 to 1>?
      <In context 3 at event 8, the mode changed from 1 to 0>?
      <In context 3 at event 9, the mode changed from 0 to 1>?
      <In context 3 at event 10, the mode changed from 1 to 0>?
      <In context 3 at event 11, the mode changed from 0 to 1>?
      <In context 3 at event 12, the mode changed from 1 to 0>?
      <In context 3 at event 13, the mode changed from 0 to 1>?
      <In context 3 at event 14, the mode changed from 1 to 0>?
      <In context 3 at event 15, the mode changed from 0 to 1>?
      <In context 3 at event 16, the mode changed from 1 to 0>?
      <In context 3 at event 17, the mode changed from 0 to 1>?
      <In context 3 at event 18, the mode changed from 1 to 0>?
      <In context 3 at event 19, the mode changed from 0 to 1>?
      <In context 3 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #3' terminates in mode 0>?
      <In context 4 at event 1, the mode changed from 0 to 1>?
      <In context 4 at event 2, the mode changed from 1 to 0>?
      <In context 4 at event 3, the mode changed from 0 to 1>?
      <In context 4 at event 4, the mode changed from 1 to 0>?
      <In context 4 at event 5, the mode changed from 0 to 1>?
      <In context 4 at event 6, the mode changed from 1 to 0>?
      <In context 4 at event 7, the mode changed from 0 to 1>?
      <In context 4 at event 8, the mode changed from 1 to 0>?
      <In context 4 at event 9, the mode changed from 0 to 1>?
      <In context 4 at event 10, the mode changed from 1 to 0>?
      <In context 4 at event 11, the mode changed from 0 to 1>?
      <In context 4 at event 12, the mode changed from 1 to 0>?
      <In context 4 at event 13, the mode changed from 0 to 1>?
      <In context 4 at event 14, the mode changed from 1 to 0>?
      <In context 4 at event 15, the mode changed from 0 to 1>?
      <In context 4 at event 16, the mode changed from 1 to 0>?
      <In context 4 at event 17, the mode changed from 0 to 1>?
      <In context 4 at event 18, the mode changed from 1 to 0>?
      <In context 4 at event 19, the mode changed from 0 to 1>?
      <In context 4 at event 20, the mode changed from 1 to 0>?
      <In context 4 at event 21, the mode changed from 0 to 1>?
      <In context 4 at event 22, the mode changed from 1 to 0>?
      <In context 4 at event 23, the mode changed from 0 to 1>?
      <In context 4 at event 24, the mode changed from 1 to 0>?
      <In context 4 at event 25, the mode changed from 0 to 1>?
      <In context 4 at event 26, the mode changed from 1 to 0>?
      <In context 4 at event 27, the mode changed from 0 to 1>?
      <In context 4 at event 28, the mode changed from 1 to 0>?
      <In context 4 at event 29, the mode changed from 0 to 1>?
      <In context 4 at event 30, the mode changed from 1 to 0>?
      <In context 4 at event 31, the mode changed from 0 to 1>?
      <In context 4 at event 32, the mode changed from 1 to 0>?
      <In context 4 at event 33, the mode changed from 0 to 1>?
      <In context 4 at event 34, the mode changed from 1 to 0>?
      <In context 4 at event 35, the mode changed from 0 to 1>?
      <In context 4 at event 36, the mode changed from 1 to 0>?
      <In context 4 at event 37, the mode changed from 0 to 1>?
      <In context 4 at event 38, the mode changed from 1 to 0>?
      <In context 4 at event 39, the mode changed from 0 to 1>?
      <In context 4 at event 40, the mode changed from 1 to 0>?
      <Context 'thread-handling' terminates in mode 0>?
\$" TIMEOUT "120" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.annotation-concurrency.full-decode.tiny-bb "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "120" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-max_bb_instrs" "2" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.dll.dll" "full-decode" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.exe" "client.annotation-concurrency.appdll.dll" "A" "4")
set_tests_properties(code_api|client.annotation-concurrency.full-decode.tiny-bb PROPERTIES  PASS_REGULAR_EXPRESSION "^      <Init annotation test client with full decoding>?
?
    -------------------------------------------------------------------?
     Performance for solving AX=B Linear Equation using Jacobi method?
     Running on DynamoRIO?
     Client version 2\\.2\\.8?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
?
     Matrix Size :  512?
     Threads     :  4?
?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args \\(handler #1\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Initialize mode 0>?
      <Initialize mode 1>?
      <Initialize context 0 'thread #0' in mode 0>?
      <Initialize context 1 'thread #1' in mode 0>?
      <Initialize context 2 'thread #2' in mode 0>?
      <Initialize context 3 'thread #3' in mode 0>?
      <Initialize context 4 'thread-handling' in mode 0>?
?
     Started iteration 1 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 2 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=2, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 3 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=3, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 4 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=4, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 5 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=5, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 6 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=6, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 7 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=7, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 8 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=8, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 9 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=9, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 10 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=10, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
?
     The Jacobi Method For AX=B \\.\\.\\.\\.\\.\\.\\.\\.\\.DONE?
     Total Number Of iterations   :  10?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
      <In context 0 at event 1, the mode changed from 0 to 1>?
      <In context 0 at event 2, the mode changed from 1 to 0>?
      <In context 0 at event 3, the mode changed from 0 to 1>?
      <In context 0 at event 4, the mode changed from 1 to 0>?
      <In context 0 at event 5, the mode changed from 0 to 1>?
      <In context 0 at event 6, the mode changed from 1 to 0>?
      <In context 0 at event 7, the mode changed from 0 to 1>?
      <In context 0 at event 8, the mode changed from 1 to 0>?
      <In context 0 at event 9, the mode changed from 0 to 1>?
      <In context 0 at event 10, the mode changed from 1 to 0>?
      <In context 0 at event 11, the mode changed from 0 to 1>?
      <In context 0 at event 12, the mode changed from 1 to 0>?
      <In context 0 at event 13, the mode changed from 0 to 1>?
      <In context 0 at event 14, the mode changed from 1 to 0>?
      <In context 0 at event 15, the mode changed from 0 to 1>?
      <In context 0 at event 16, the mode changed from 1 to 0>?
      <In context 0 at event 17, the mode changed from 0 to 1>?
      <In context 0 at event 18, the mode changed from 1 to 0>?
      <In context 0 at event 19, the mode changed from 0 to 1>?
      <In context 0 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #0' terminates in mode 0>?
      <In context 1 at event 1, the mode changed from 0 to 1>?
      <In context 1 at event 2, the mode changed from 1 to 0>?
      <In context 1 at event 3, the mode changed from 0 to 1>?
      <In context 1 at event 4, the mode changed from 1 to 0>?
      <In context 1 at event 5, the mode changed from 0 to 1>?
      <In context 1 at event 6, the mode changed from 1 to 0>?
      <In context 1 at event 7, the mode changed from 0 to 1>?
      <In context 1 at event 8, the mode changed from 1 to 0>?
      <In context 1 at event 9, the mode changed from 0 to 1>?
      <In context 1 at event 10, the mode changed from 1 to 0>?
      <In context 1 at event 11, the mode changed from 0 to 1>?
      <In context 1 at event 12, the mode changed from 1 to 0>?
      <In context 1 at event 13, the mode changed from 0 to 1>?
      <In context 1 at event 14, the mode changed from 1 to 0>?
      <In context 1 at event 15, the mode changed from 0 to 1>?
      <In context 1 at event 16, the mode changed from 1 to 0>?
      <In context 1 at event 17, the mode changed from 0 to 1>?
      <In context 1 at event 18, the mode changed from 1 to 0>?
      <In context 1 at event 19, the mode changed from 0 to 1>?
      <In context 1 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #1' terminates in mode 0>?
      <In context 2 at event 1, the mode changed from 0 to 1>?
      <In context 2 at event 2, the mode changed from 1 to 0>?
      <In context 2 at event 3, the mode changed from 0 to 1>?
      <In context 2 at event 4, the mode changed from 1 to 0>?
      <In context 2 at event 5, the mode changed from 0 to 1>?
      <In context 2 at event 6, the mode changed from 1 to 0>?
      <In context 2 at event 7, the mode changed from 0 to 1>?
      <In context 2 at event 8, the mode changed from 1 to 0>?
      <In context 2 at event 9, the mode changed from 0 to 1>?
      <In context 2 at event 10, the mode changed from 1 to 0>?
      <In context 2 at event 11, the mode changed from 0 to 1>?
      <In context 2 at event 12, the mode changed from 1 to 0>?
      <In context 2 at event 13, the mode changed from 0 to 1>?
      <In context 2 at event 14, the mode changed from 1 to 0>?
      <In context 2 at event 15, the mode changed from 0 to 1>?
      <In context 2 at event 16, the mode changed from 1 to 0>?
      <In context 2 at event 17, the mode changed from 0 to 1>?
      <In context 2 at event 18, the mode changed from 1 to 0>?
      <In context 2 at event 19, the mode changed from 0 to 1>?
      <In context 2 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #2' terminates in mode 0>?
      <In context 3 at event 1, the mode changed from 0 to 1>?
      <In context 3 at event 2, the mode changed from 1 to 0>?
      <In context 3 at event 3, the mode changed from 0 to 1>?
      <In context 3 at event 4, the mode changed from 1 to 0>?
      <In context 3 at event 5, the mode changed from 0 to 1>?
      <In context 3 at event 6, the mode changed from 1 to 0>?
      <In context 3 at event 7, the mode changed from 0 to 1>?
      <In context 3 at event 8, the mode changed from 1 to 0>?
      <In context 3 at event 9, the mode changed from 0 to 1>?
      <In context 3 at event 10, the mode changed from 1 to 0>?
      <In context 3 at event 11, the mode changed from 0 to 1>?
      <In context 3 at event 12, the mode changed from 1 to 0>?
      <In context 3 at event 13, the mode changed from 0 to 1>?
      <In context 3 at event 14, the mode changed from 1 to 0>?
      <In context 3 at event 15, the mode changed from 0 to 1>?
      <In context 3 at event 16, the mode changed from 1 to 0>?
      <In context 3 at event 17, the mode changed from 0 to 1>?
      <In context 3 at event 18, the mode changed from 1 to 0>?
      <In context 3 at event 19, the mode changed from 0 to 1>?
      <In context 3 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #3' terminates in mode 0>?
      <In context 4 at event 1, the mode changed from 0 to 1>?
      <In context 4 at event 2, the mode changed from 1 to 0>?
      <In context 4 at event 3, the mode changed from 0 to 1>?
      <In context 4 at event 4, the mode changed from 1 to 0>?
      <In context 4 at event 5, the mode changed from 0 to 1>?
      <In context 4 at event 6, the mode changed from 1 to 0>?
      <In context 4 at event 7, the mode changed from 0 to 1>?
      <In context 4 at event 8, the mode changed from 1 to 0>?
      <In context 4 at event 9, the mode changed from 0 to 1>?
      <In context 4 at event 10, the mode changed from 1 to 0>?
      <In context 4 at event 11, the mode changed from 0 to 1>?
      <In context 4 at event 12, the mode changed from 1 to 0>?
      <In context 4 at event 13, the mode changed from 0 to 1>?
      <In context 4 at event 14, the mode changed from 1 to 0>?
      <In context 4 at event 15, the mode changed from 0 to 1>?
      <In context 4 at event 16, the mode changed from 1 to 0>?
      <In context 4 at event 17, the mode changed from 0 to 1>?
      <In context 4 at event 18, the mode changed from 1 to 0>?
      <In context 4 at event 19, the mode changed from 0 to 1>?
      <In context 4 at event 20, the mode changed from 1 to 0>?
      <In context 4 at event 21, the mode changed from 0 to 1>?
      <In context 4 at event 22, the mode changed from 1 to 0>?
      <In context 4 at event 23, the mode changed from 0 to 1>?
      <In context 4 at event 24, the mode changed from 1 to 0>?
      <In context 4 at event 25, the mode changed from 0 to 1>?
      <In context 4 at event 26, the mode changed from 1 to 0>?
      <In context 4 at event 27, the mode changed from 0 to 1>?
      <In context 4 at event 28, the mode changed from 1 to 0>?
      <In context 4 at event 29, the mode changed from 0 to 1>?
      <In context 4 at event 30, the mode changed from 1 to 0>?
      <In context 4 at event 31, the mode changed from 0 to 1>?
      <In context 4 at event 32, the mode changed from 1 to 0>?
      <In context 4 at event 33, the mode changed from 0 to 1>?
      <In context 4 at event 34, the mode changed from 1 to 0>?
      <In context 4 at event 35, the mode changed from 0 to 1>?
      <In context 4 at event 36, the mode changed from 1 to 0>?
      <In context 4 at event 37, the mode changed from 0 to 1>?
      <In context 4 at event 38, the mode changed from 1 to 0>?
      <In context 4 at event 39, the mode changed from 0 to 1>?
      <In context 4 at event 40, the mode changed from 1 to 0>?
      <Context 'thread-handling' terminates in mode 0>?
\$" TIMEOUT "120" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.annotation-concurrency.bb-truncate-1 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "120" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.dll.dll" "truncate@1" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.exe" "client.annotation-concurrency.appdll.dll" "A" "4")
set_tests_properties(code_api|client.annotation-concurrency.bb-truncate-1 PROPERTIES  PASS_REGULAR_EXPRESSION "^      <Init annotation test client with bb truncation>?
?
    -------------------------------------------------------------------?
     Performance for solving AX=B Linear Equation using Jacobi method?
     Running on DynamoRIO?
     Client version 2\\.2\\.8?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
?
     Matrix Size :  512?
     Threads     :  4?
?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args \\(handler #1\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Initialize mode 0>?
      <Initialize mode 1>?
      <Initialize context 0 'thread #0' in mode 0>?
      <Initialize context 1 'thread #1' in mode 0>?
      <Initialize context 2 'thread #2' in mode 0>?
      <Initialize context 3 'thread #3' in mode 0>?
      <Initialize context 4 'thread-handling' in mode 0>?
?
     Started iteration 1 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 2 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=2, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 3 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=3, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 4 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=4, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 5 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=5, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 6 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=6, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 7 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=7, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 8 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=8, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 9 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=9, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 10 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=10, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
?
     The Jacobi Method For AX=B \\.\\.\\.\\.\\.\\.\\.\\.\\.DONE?
     Total Number Of iterations   :  10?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
      <In context 0 at event 1, the mode changed from 0 to 1>?
      <In context 0 at event 2, the mode changed from 1 to 0>?
      <In context 0 at event 3, the mode changed from 0 to 1>?
      <In context 0 at event 4, the mode changed from 1 to 0>?
      <In context 0 at event 5, the mode changed from 0 to 1>?
      <In context 0 at event 6, the mode changed from 1 to 0>?
      <In context 0 at event 7, the mode changed from 0 to 1>?
      <In context 0 at event 8, the mode changed from 1 to 0>?
      <In context 0 at event 9, the mode changed from 0 to 1>?
      <In context 0 at event 10, the mode changed from 1 to 0>?
      <In context 0 at event 11, the mode changed from 0 to 1>?
      <In context 0 at event 12, the mode changed from 1 to 0>?
      <In context 0 at event 13, the mode changed from 0 to 1>?
      <In context 0 at event 14, the mode changed from 1 to 0>?
      <In context 0 at event 15, the mode changed from 0 to 1>?
      <In context 0 at event 16, the mode changed from 1 to 0>?
      <In context 0 at event 17, the mode changed from 0 to 1>?
      <In context 0 at event 18, the mode changed from 1 to 0>?
      <In context 0 at event 19, the mode changed from 0 to 1>?
      <In context 0 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #0' terminates in mode 0>?
      <In context 1 at event 1, the mode changed from 0 to 1>?
      <In context 1 at event 2, the mode changed from 1 to 0>?
      <In context 1 at event 3, the mode changed from 0 to 1>?
      <In context 1 at event 4, the mode changed from 1 to 0>?
      <In context 1 at event 5, the mode changed from 0 to 1>?
      <In context 1 at event 6, the mode changed from 1 to 0>?
      <In context 1 at event 7, the mode changed from 0 to 1>?
      <In context 1 at event 8, the mode changed from 1 to 0>?
      <In context 1 at event 9, the mode changed from 0 to 1>?
      <In context 1 at event 10, the mode changed from 1 to 0>?
      <In context 1 at event 11, the mode changed from 0 to 1>?
      <In context 1 at event 12, the mode changed from 1 to 0>?
      <In context 1 at event 13, the mode changed from 0 to 1>?
      <In context 1 at event 14, the mode changed from 1 to 0>?
      <In context 1 at event 15, the mode changed from 0 to 1>?
      <In context 1 at event 16, the mode changed from 1 to 0>?
      <In context 1 at event 17, the mode changed from 0 to 1>?
      <In context 1 at event 18, the mode changed from 1 to 0>?
      <In context 1 at event 19, the mode changed from 0 to 1>?
      <In context 1 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #1' terminates in mode 0>?
      <In context 2 at event 1, the mode changed from 0 to 1>?
      <In context 2 at event 2, the mode changed from 1 to 0>?
      <In context 2 at event 3, the mode changed from 0 to 1>?
      <In context 2 at event 4, the mode changed from 1 to 0>?
      <In context 2 at event 5, the mode changed from 0 to 1>?
      <In context 2 at event 6, the mode changed from 1 to 0>?
      <In context 2 at event 7, the mode changed from 0 to 1>?
      <In context 2 at event 8, the mode changed from 1 to 0>?
      <In context 2 at event 9, the mode changed from 0 to 1>?
      <In context 2 at event 10, the mode changed from 1 to 0>?
      <In context 2 at event 11, the mode changed from 0 to 1>?
      <In context 2 at event 12, the mode changed from 1 to 0>?
      <In context 2 at event 13, the mode changed from 0 to 1>?
      <In context 2 at event 14, the mode changed from 1 to 0>?
      <In context 2 at event 15, the mode changed from 0 to 1>?
      <In context 2 at event 16, the mode changed from 1 to 0>?
      <In context 2 at event 17, the mode changed from 0 to 1>?
      <In context 2 at event 18, the mode changed from 1 to 0>?
      <In context 2 at event 19, the mode changed from 0 to 1>?
      <In context 2 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #2' terminates in mode 0>?
      <In context 3 at event 1, the mode changed from 0 to 1>?
      <In context 3 at event 2, the mode changed from 1 to 0>?
      <In context 3 at event 3, the mode changed from 0 to 1>?
      <In context 3 at event 4, the mode changed from 1 to 0>?
      <In context 3 at event 5, the mode changed from 0 to 1>?
      <In context 3 at event 6, the mode changed from 1 to 0>?
      <In context 3 at event 7, the mode changed from 0 to 1>?
      <In context 3 at event 8, the mode changed from 1 to 0>?
      <In context 3 at event 9, the mode changed from 0 to 1>?
      <In context 3 at event 10, the mode changed from 1 to 0>?
      <In context 3 at event 11, the mode changed from 0 to 1>?
      <In context 3 at event 12, the mode changed from 1 to 0>?
      <In context 3 at event 13, the mode changed from 0 to 1>?
      <In context 3 at event 14, the mode changed from 1 to 0>?
      <In context 3 at event 15, the mode changed from 0 to 1>?
      <In context 3 at event 16, the mode changed from 1 to 0>?
      <In context 3 at event 17, the mode changed from 0 to 1>?
      <In context 3 at event 18, the mode changed from 1 to 0>?
      <In context 3 at event 19, the mode changed from 0 to 1>?
      <In context 3 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #3' terminates in mode 0>?
      <In context 4 at event 1, the mode changed from 0 to 1>?
      <In context 4 at event 2, the mode changed from 1 to 0>?
      <In context 4 at event 3, the mode changed from 0 to 1>?
      <In context 4 at event 4, the mode changed from 1 to 0>?
      <In context 4 at event 5, the mode changed from 0 to 1>?
      <In context 4 at event 6, the mode changed from 1 to 0>?
      <In context 4 at event 7, the mode changed from 0 to 1>?
      <In context 4 at event 8, the mode changed from 1 to 0>?
      <In context 4 at event 9, the mode changed from 0 to 1>?
      <In context 4 at event 10, the mode changed from 1 to 0>?
      <In context 4 at event 11, the mode changed from 0 to 1>?
      <In context 4 at event 12, the mode changed from 1 to 0>?
      <In context 4 at event 13, the mode changed from 0 to 1>?
      <In context 4 at event 14, the mode changed from 1 to 0>?
      <In context 4 at event 15, the mode changed from 0 to 1>?
      <In context 4 at event 16, the mode changed from 1 to 0>?
      <In context 4 at event 17, the mode changed from 0 to 1>?
      <In context 4 at event 18, the mode changed from 1 to 0>?
      <In context 4 at event 19, the mode changed from 0 to 1>?
      <In context 4 at event 20, the mode changed from 1 to 0>?
      <In context 4 at event 21, the mode changed from 0 to 1>?
      <In context 4 at event 22, the mode changed from 1 to 0>?
      <In context 4 at event 23, the mode changed from 0 to 1>?
      <In context 4 at event 24, the mode changed from 1 to 0>?
      <In context 4 at event 25, the mode changed from 0 to 1>?
      <In context 4 at event 26, the mode changed from 1 to 0>?
      <In context 4 at event 27, the mode changed from 0 to 1>?
      <In context 4 at event 28, the mode changed from 1 to 0>?
      <In context 4 at event 29, the mode changed from 0 to 1>?
      <In context 4 at event 30, the mode changed from 1 to 0>?
      <In context 4 at event 31, the mode changed from 0 to 1>?
      <In context 4 at event 32, the mode changed from 1 to 0>?
      <In context 4 at event 33, the mode changed from 0 to 1>?
      <In context 4 at event 34, the mode changed from 1 to 0>?
      <In context 4 at event 35, the mode changed from 0 to 1>?
      <In context 4 at event 36, the mode changed from 1 to 0>?
      <In context 4 at event 37, the mode changed from 0 to 1>?
      <In context 4 at event 38, the mode changed from 1 to 0>?
      <In context 4 at event 39, the mode changed from 0 to 1>?
      <In context 4 at event 40, the mode changed from 1 to 0>?
      <Context 'thread-handling' terminates in mode 0>?
\$" TIMEOUT "120" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.annotation-concurrency.bb-truncate-2 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "120" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.dll.dll" "truncate@2" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.exe" "client.annotation-concurrency.appdll.dll" "A" "4")
set_tests_properties(code_api|client.annotation-concurrency.bb-truncate-2 PROPERTIES  PASS_REGULAR_EXPRESSION "^      <Init annotation test client with bb truncation>?
?
    -------------------------------------------------------------------?
     Performance for solving AX=B Linear Equation using Jacobi method?
     Running on DynamoRIO?
     Client version 2\\.2\\.8?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
?
     Matrix Size :  512?
     Threads     :  4?
?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args \\(handler #1\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Initialize mode 0>?
      <Initialize mode 1>?
      <Initialize context 0 'thread #0' in mode 0>?
      <Initialize context 1 'thread #1' in mode 0>?
      <Initialize context 2 'thread #2' in mode 0>?
      <Initialize context 3 'thread #3' in mode 0>?
      <Initialize context 4 'thread-handling' in mode 0>?
?
     Started iteration 1 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 2 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=2, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 3 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=3, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 4 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=4, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 5 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=5, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 6 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=6, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 7 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=7, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 8 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=8, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 9 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=9, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 10 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=10, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
?
     The Jacobi Method For AX=B \\.\\.\\.\\.\\.\\.\\.\\.\\.DONE?
     Total Number Of iterations   :  10?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
      <In context 0 at event 1, the mode changed from 0 to 1>?
      <In context 0 at event 2, the mode changed from 1 to 0>?
      <In context 0 at event 3, the mode changed from 0 to 1>?
      <In context 0 at event 4, the mode changed from 1 to 0>?
      <In context 0 at event 5, the mode changed from 0 to 1>?
      <In context 0 at event 6, the mode changed from 1 to 0>?
      <In context 0 at event 7, the mode changed from 0 to 1>?
      <In context 0 at event 8, the mode changed from 1 to 0>?
      <In context 0 at event 9, the mode changed from 0 to 1>?
      <In context 0 at event 10, the mode changed from 1 to 0>?
      <In context 0 at event 11, the mode changed from 0 to 1>?
      <In context 0 at event 12, the mode changed from 1 to 0>?
      <In context 0 at event 13, the mode changed from 0 to 1>?
      <In context 0 at event 14, the mode changed from 1 to 0>?
      <In context 0 at event 15, the mode changed from 0 to 1>?
      <In context 0 at event 16, the mode changed from 1 to 0>?
      <In context 0 at event 17, the mode changed from 0 to 1>?
      <In context 0 at event 18, the mode changed from 1 to 0>?
      <In context 0 at event 19, the mode changed from 0 to 1>?
      <In context 0 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #0' terminates in mode 0>?
      <In context 1 at event 1, the mode changed from 0 to 1>?
      <In context 1 at event 2, the mode changed from 1 to 0>?
      <In context 1 at event 3, the mode changed from 0 to 1>?
      <In context 1 at event 4, the mode changed from 1 to 0>?
      <In context 1 at event 5, the mode changed from 0 to 1>?
      <In context 1 at event 6, the mode changed from 1 to 0>?
      <In context 1 at event 7, the mode changed from 0 to 1>?
      <In context 1 at event 8, the mode changed from 1 to 0>?
      <In context 1 at event 9, the mode changed from 0 to 1>?
      <In context 1 at event 10, the mode changed from 1 to 0>?
      <In context 1 at event 11, the mode changed from 0 to 1>?
      <In context 1 at event 12, the mode changed from 1 to 0>?
      <In context 1 at event 13, the mode changed from 0 to 1>?
      <In context 1 at event 14, the mode changed from 1 to 0>?
      <In context 1 at event 15, the mode changed from 0 to 1>?
      <In context 1 at event 16, the mode changed from 1 to 0>?
      <In context 1 at event 17, the mode changed from 0 to 1>?
      <In context 1 at event 18, the mode changed from 1 to 0>?
      <In context 1 at event 19, the mode changed from 0 to 1>?
      <In context 1 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #1' terminates in mode 0>?
      <In context 2 at event 1, the mode changed from 0 to 1>?
      <In context 2 at event 2, the mode changed from 1 to 0>?
      <In context 2 at event 3, the mode changed from 0 to 1>?
      <In context 2 at event 4, the mode changed from 1 to 0>?
      <In context 2 at event 5, the mode changed from 0 to 1>?
      <In context 2 at event 6, the mode changed from 1 to 0>?
      <In context 2 at event 7, the mode changed from 0 to 1>?
      <In context 2 at event 8, the mode changed from 1 to 0>?
      <In context 2 at event 9, the mode changed from 0 to 1>?
      <In context 2 at event 10, the mode changed from 1 to 0>?
      <In context 2 at event 11, the mode changed from 0 to 1>?
      <In context 2 at event 12, the mode changed from 1 to 0>?
      <In context 2 at event 13, the mode changed from 0 to 1>?
      <In context 2 at event 14, the mode changed from 1 to 0>?
      <In context 2 at event 15, the mode changed from 0 to 1>?
      <In context 2 at event 16, the mode changed from 1 to 0>?
      <In context 2 at event 17, the mode changed from 0 to 1>?
      <In context 2 at event 18, the mode changed from 1 to 0>?
      <In context 2 at event 19, the mode changed from 0 to 1>?
      <In context 2 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #2' terminates in mode 0>?
      <In context 3 at event 1, the mode changed from 0 to 1>?
      <In context 3 at event 2, the mode changed from 1 to 0>?
      <In context 3 at event 3, the mode changed from 0 to 1>?
      <In context 3 at event 4, the mode changed from 1 to 0>?
      <In context 3 at event 5, the mode changed from 0 to 1>?
      <In context 3 at event 6, the mode changed from 1 to 0>?
      <In context 3 at event 7, the mode changed from 0 to 1>?
      <In context 3 at event 8, the mode changed from 1 to 0>?
      <In context 3 at event 9, the mode changed from 0 to 1>?
      <In context 3 at event 10, the mode changed from 1 to 0>?
      <In context 3 at event 11, the mode changed from 0 to 1>?
      <In context 3 at event 12, the mode changed from 1 to 0>?
      <In context 3 at event 13, the mode changed from 0 to 1>?
      <In context 3 at event 14, the mode changed from 1 to 0>?
      <In context 3 at event 15, the mode changed from 0 to 1>?
      <In context 3 at event 16, the mode changed from 1 to 0>?
      <In context 3 at event 17, the mode changed from 0 to 1>?
      <In context 3 at event 18, the mode changed from 1 to 0>?
      <In context 3 at event 19, the mode changed from 0 to 1>?
      <In context 3 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #3' terminates in mode 0>?
      <In context 4 at event 1, the mode changed from 0 to 1>?
      <In context 4 at event 2, the mode changed from 1 to 0>?
      <In context 4 at event 3, the mode changed from 0 to 1>?
      <In context 4 at event 4, the mode changed from 1 to 0>?
      <In context 4 at event 5, the mode changed from 0 to 1>?
      <In context 4 at event 6, the mode changed from 1 to 0>?
      <In context 4 at event 7, the mode changed from 0 to 1>?
      <In context 4 at event 8, the mode changed from 1 to 0>?
      <In context 4 at event 9, the mode changed from 0 to 1>?
      <In context 4 at event 10, the mode changed from 1 to 0>?
      <In context 4 at event 11, the mode changed from 0 to 1>?
      <In context 4 at event 12, the mode changed from 1 to 0>?
      <In context 4 at event 13, the mode changed from 0 to 1>?
      <In context 4 at event 14, the mode changed from 1 to 0>?
      <In context 4 at event 15, the mode changed from 0 to 1>?
      <In context 4 at event 16, the mode changed from 1 to 0>?
      <In context 4 at event 17, the mode changed from 0 to 1>?
      <In context 4 at event 18, the mode changed from 1 to 0>?
      <In context 4 at event 19, the mode changed from 0 to 1>?
      <In context 4 at event 20, the mode changed from 1 to 0>?
      <In context 4 at event 21, the mode changed from 0 to 1>?
      <In context 4 at event 22, the mode changed from 1 to 0>?
      <In context 4 at event 23, the mode changed from 0 to 1>?
      <In context 4 at event 24, the mode changed from 1 to 0>?
      <In context 4 at event 25, the mode changed from 0 to 1>?
      <In context 4 at event 26, the mode changed from 1 to 0>?
      <In context 4 at event 27, the mode changed from 0 to 1>?
      <In context 4 at event 28, the mode changed from 1 to 0>?
      <In context 4 at event 29, the mode changed from 0 to 1>?
      <In context 4 at event 30, the mode changed from 1 to 0>?
      <In context 4 at event 31, the mode changed from 0 to 1>?
      <In context 4 at event 32, the mode changed from 1 to 0>?
      <In context 4 at event 33, the mode changed from 0 to 1>?
      <In context 4 at event 34, the mode changed from 1 to 0>?
      <In context 4 at event 35, the mode changed from 0 to 1>?
      <In context 4 at event 36, the mode changed from 1 to 0>?
      <In context 4 at event 37, the mode changed from 0 to 1>?
      <In context 4 at event 38, the mode changed from 1 to 0>?
      <In context 4 at event 39, the mode changed from 0 to 1>?
      <In context 4 at event 40, the mode changed from 1 to 0>?
      <Context 'thread-handling' terminates in mode 0>?
\$" TIMEOUT "120" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.annotation-concurrency-opt "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "120" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency-opt.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency-opt.exe" "client.annotation-concurrency-opt.appdll.dll" "A" "4")
set_tests_properties(code_api|client.annotation-concurrency-opt PROPERTIES  PASS_REGULAR_EXPRESSION "^      <Init annotation test client with fast decoding>?
?
    -------------------------------------------------------------------?
     Performance for solving AX=B Linear Equation using Jacobi method?
     Running on DynamoRIO?
     Client version 2\\.2\\.8?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
?
     Matrix Size :  512?
     Threads     :  4?
?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args \\(handler #1\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Initialize mode 0>?
      <Initialize mode 1>?
      <Initialize context 0 'thread #0' in mode 0>?
      <Initialize context 1 'thread #1' in mode 0>?
      <Initialize context 2 'thread #2' in mode 0>?
      <Initialize context 3 'thread #3' in mode 0>?
      <Initialize context 4 'thread-handling' in mode 0>?
?
     Started iteration 1 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 2 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=2, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 3 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=3, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 4 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=4, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 5 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=5, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 6 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=6, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 7 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=7, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 8 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=8, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 9 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=9, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 10 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=10, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
?
     The Jacobi Method For AX=B \\.\\.\\.\\.\\.\\.\\.\\.\\.DONE?
     Total Number Of iterations   :  10?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
      <In context 0 at event 1, the mode changed from 0 to 1>?
      <In context 0 at event 2, the mode changed from 1 to 0>?
      <In context 0 at event 3, the mode changed from 0 to 1>?
      <In context 0 at event 4, the mode changed from 1 to 0>?
      <In context 0 at event 5, the mode changed from 0 to 1>?
      <In context 0 at event 6, the mode changed from 1 to 0>?
      <In context 0 at event 7, the mode changed from 0 to 1>?
      <In context 0 at event 8, the mode changed from 1 to 0>?
      <In context 0 at event 9, the mode changed from 0 to 1>?
      <In context 0 at event 10, the mode changed from 1 to 0>?
      <In context 0 at event 11, the mode changed from 0 to 1>?
      <In context 0 at event 12, the mode changed from 1 to 0>?
      <In context 0 at event 13, the mode changed from 0 to 1>?
      <In context 0 at event 14, the mode changed from 1 to 0>?
      <In context 0 at event 15, the mode changed from 0 to 1>?
      <In context 0 at event 16, the mode changed from 1 to 0>?
      <In context 0 at event 17, the mode changed from 0 to 1>?
      <In context 0 at event 18, the mode changed from 1 to 0>?
      <In context 0 at event 19, the mode changed from 0 to 1>?
      <In context 0 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #0' terminates in mode 0>?
      <In context 1 at event 1, the mode changed from 0 to 1>?
      <In context 1 at event 2, the mode changed from 1 to 0>?
      <In context 1 at event 3, the mode changed from 0 to 1>?
      <In context 1 at event 4, the mode changed from 1 to 0>?
      <In context 1 at event 5, the mode changed from 0 to 1>?
      <In context 1 at event 6, the mode changed from 1 to 0>?
      <In context 1 at event 7, the mode changed from 0 to 1>?
      <In context 1 at event 8, the mode changed from 1 to 0>?
      <In context 1 at event 9, the mode changed from 0 to 1>?
      <In context 1 at event 10, the mode changed from 1 to 0>?
      <In context 1 at event 11, the mode changed from 0 to 1>?
      <In context 1 at event 12, the mode changed from 1 to 0>?
      <In context 1 at event 13, the mode changed from 0 to 1>?
      <In context 1 at event 14, the mode changed from 1 to 0>?
      <In context 1 at event 15, the mode changed from 0 to 1>?
      <In context 1 at event 16, the mode changed from 1 to 0>?
      <In context 1 at event 17, the mode changed from 0 to 1>?
      <In context 1 at event 18, the mode changed from 1 to 0>?
      <In context 1 at event 19, the mode changed from 0 to 1>?
      <In context 1 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #1' terminates in mode 0>?
      <In context 2 at event 1, the mode changed from 0 to 1>?
      <In context 2 at event 2, the mode changed from 1 to 0>?
      <In context 2 at event 3, the mode changed from 0 to 1>?
      <In context 2 at event 4, the mode changed from 1 to 0>?
      <In context 2 at event 5, the mode changed from 0 to 1>?
      <In context 2 at event 6, the mode changed from 1 to 0>?
      <In context 2 at event 7, the mode changed from 0 to 1>?
      <In context 2 at event 8, the mode changed from 1 to 0>?
      <In context 2 at event 9, the mode changed from 0 to 1>?
      <In context 2 at event 10, the mode changed from 1 to 0>?
      <In context 2 at event 11, the mode changed from 0 to 1>?
      <In context 2 at event 12, the mode changed from 1 to 0>?
      <In context 2 at event 13, the mode changed from 0 to 1>?
      <In context 2 at event 14, the mode changed from 1 to 0>?
      <In context 2 at event 15, the mode changed from 0 to 1>?
      <In context 2 at event 16, the mode changed from 1 to 0>?
      <In context 2 at event 17, the mode changed from 0 to 1>?
      <In context 2 at event 18, the mode changed from 1 to 0>?
      <In context 2 at event 19, the mode changed from 0 to 1>?
      <In context 2 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #2' terminates in mode 0>?
      <In context 3 at event 1, the mode changed from 0 to 1>?
      <In context 3 at event 2, the mode changed from 1 to 0>?
      <In context 3 at event 3, the mode changed from 0 to 1>?
      <In context 3 at event 4, the mode changed from 1 to 0>?
      <In context 3 at event 5, the mode changed from 0 to 1>?
      <In context 3 at event 6, the mode changed from 1 to 0>?
      <In context 3 at event 7, the mode changed from 0 to 1>?
      <In context 3 at event 8, the mode changed from 1 to 0>?
      <In context 3 at event 9, the mode changed from 0 to 1>?
      <In context 3 at event 10, the mode changed from 1 to 0>?
      <In context 3 at event 11, the mode changed from 0 to 1>?
      <In context 3 at event 12, the mode changed from 1 to 0>?
      <In context 3 at event 13, the mode changed from 0 to 1>?
      <In context 3 at event 14, the mode changed from 1 to 0>?
      <In context 3 at event 15, the mode changed from 0 to 1>?
      <In context 3 at event 16, the mode changed from 1 to 0>?
      <In context 3 at event 17, the mode changed from 0 to 1>?
      <In context 3 at event 18, the mode changed from 1 to 0>?
      <In context 3 at event 19, the mode changed from 0 to 1>?
      <In context 3 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #3' terminates in mode 0>?
      <In context 4 at event 1, the mode changed from 0 to 1>?
      <In context 4 at event 2, the mode changed from 1 to 0>?
      <In context 4 at event 3, the mode changed from 0 to 1>?
      <In context 4 at event 4, the mode changed from 1 to 0>?
      <In context 4 at event 5, the mode changed from 0 to 1>?
      <In context 4 at event 6, the mode changed from 1 to 0>?
      <In context 4 at event 7, the mode changed from 0 to 1>?
      <In context 4 at event 8, the mode changed from 1 to 0>?
      <In context 4 at event 9, the mode changed from 0 to 1>?
      <In context 4 at event 10, the mode changed from 1 to 0>?
      <In context 4 at event 11, the mode changed from 0 to 1>?
      <In context 4 at event 12, the mode changed from 1 to 0>?
      <In context 4 at event 13, the mode changed from 0 to 1>?
      <In context 4 at event 14, the mode changed from 1 to 0>?
      <In context 4 at event 15, the mode changed from 0 to 1>?
      <In context 4 at event 16, the mode changed from 1 to 0>?
      <In context 4 at event 17, the mode changed from 0 to 1>?
      <In context 4 at event 18, the mode changed from 1 to 0>?
      <In context 4 at event 19, the mode changed from 0 to 1>?
      <In context 4 at event 20, the mode changed from 1 to 0>?
      <In context 4 at event 21, the mode changed from 0 to 1>?
      <In context 4 at event 22, the mode changed from 1 to 0>?
      <In context 4 at event 23, the mode changed from 0 to 1>?
      <In context 4 at event 24, the mode changed from 1 to 0>?
      <In context 4 at event 25, the mode changed from 0 to 1>?
      <In context 4 at event 26, the mode changed from 1 to 0>?
      <In context 4 at event 27, the mode changed from 0 to 1>?
      <In context 4 at event 28, the mode changed from 1 to 0>?
      <In context 4 at event 29, the mode changed from 0 to 1>?
      <In context 4 at event 30, the mode changed from 1 to 0>?
      <In context 4 at event 31, the mode changed from 0 to 1>?
      <In context 4 at event 32, the mode changed from 1 to 0>?
      <In context 4 at event 33, the mode changed from 0 to 1>?
      <In context 4 at event 34, the mode changed from 1 to 0>?
      <In context 4 at event 35, the mode changed from 0 to 1>?
      <In context 4 at event 36, the mode changed from 1 to 0>?
      <In context 4 at event 37, the mode changed from 0 to 1>?
      <In context 4 at event 38, the mode changed from 1 to 0>?
      <In context 4 at event 39, the mode changed from 0 to 1>?
      <In context 4 at event 40, the mode changed from 1 to 0>?
      <Context 'thread-handling' terminates in mode 0>?
\$" TIMEOUT "120" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.annotation-concurrency-opt.full-decode "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "120" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency-opt.dll.dll" "full-decode" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency-opt.exe" "client.annotation-concurrency-opt.appdll.dll" "A" "4")
set_tests_properties(code_api|client.annotation-concurrency-opt.full-decode PROPERTIES  PASS_REGULAR_EXPRESSION "^      <Init annotation test client with full decoding>?
?
    -------------------------------------------------------------------?
     Performance for solving AX=B Linear Equation using Jacobi method?
     Running on DynamoRIO?
     Client version 2\\.2\\.8?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
?
     Matrix Size :  512?
     Threads     :  4?
?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args \\(handler #1\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Initialize mode 0>?
      <Initialize mode 1>?
      <Initialize context 0 'thread #0' in mode 0>?
      <Initialize context 1 'thread #1' in mode 0>?
      <Initialize context 2 'thread #2' in mode 0>?
      <Initialize context 3 'thread #3' in mode 0>?
      <Initialize context 4 'thread-handling' in mode 0>?
?
     Started iteration 1 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 2 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=2, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 3 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=3, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 4 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=4, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 5 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=5, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 6 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=6, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 7 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=7, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 8 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=8, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 9 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=512, b=102, c=103, d=104, e=105, f=106, g=107, h=108>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(concurrent handler\\): a=0, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109>?
      <Test many args \\(handler #2\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #1\\): a=101, b=102, c=103, d=104, e=105, f=106, g=107, h=108, i=109, j=110>?
      <Test many args \\(handler #2\\): a=9, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
     Started iteration 10 of the computation\\.\\.\\.?
      <Test many args \\(handler #2\\): a=10, b=2, c=3, d=4, e=5, f=6, g=7, h=18>?
      <Test many args \\(handler #2\\): a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=28>?
?
     Finished computing current solution distance in mode 1\\.?
     Mode changed to 0\\.?
?
?
     The Jacobi Method For AX=B \\.\\.\\.\\.\\.\\.\\.\\.\\.DONE?
     Total Number Of iterations   :  10?
    \\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.?
      <In context 0 at event 1, the mode changed from 0 to 1>?
      <In context 0 at event 2, the mode changed from 1 to 0>?
      <In context 0 at event 3, the mode changed from 0 to 1>?
      <In context 0 at event 4, the mode changed from 1 to 0>?
      <In context 0 at event 5, the mode changed from 0 to 1>?
      <In context 0 at event 6, the mode changed from 1 to 0>?
      <In context 0 at event 7, the mode changed from 0 to 1>?
      <In context 0 at event 8, the mode changed from 1 to 0>?
      <In context 0 at event 9, the mode changed from 0 to 1>?
      <In context 0 at event 10, the mode changed from 1 to 0>?
      <In context 0 at event 11, the mode changed from 0 to 1>?
      <In context 0 at event 12, the mode changed from 1 to 0>?
      <In context 0 at event 13, the mode changed from 0 to 1>?
      <In context 0 at event 14, the mode changed from 1 to 0>?
      <In context 0 at event 15, the mode changed from 0 to 1>?
      <In context 0 at event 16, the mode changed from 1 to 0>?
      <In context 0 at event 17, the mode changed from 0 to 1>?
      <In context 0 at event 18, the mode changed from 1 to 0>?
      <In context 0 at event 19, the mode changed from 0 to 1>?
      <In context 0 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #0' terminates in mode 0>?
      <In context 1 at event 1, the mode changed from 0 to 1>?
      <In context 1 at event 2, the mode changed from 1 to 0>?
      <In context 1 at event 3, the mode changed from 0 to 1>?
      <In context 1 at event 4, the mode changed from 1 to 0>?
      <In context 1 at event 5, the mode changed from 0 to 1>?
      <In context 1 at event 6, the mode changed from 1 to 0>?
      <In context 1 at event 7, the mode changed from 0 to 1>?
      <In context 1 at event 8, the mode changed from 1 to 0>?
      <In context 1 at event 9, the mode changed from 0 to 1>?
      <In context 1 at event 10, the mode changed from 1 to 0>?
      <In context 1 at event 11, the mode changed from 0 to 1>?
      <In context 1 at event 12, the mode changed from 1 to 0>?
      <In context 1 at event 13, the mode changed from 0 to 1>?
      <In context 1 at event 14, the mode changed from 1 to 0>?
      <In context 1 at event 15, the mode changed from 0 to 1>?
      <In context 1 at event 16, the mode changed from 1 to 0>?
      <In context 1 at event 17, the mode changed from 0 to 1>?
      <In context 1 at event 18, the mode changed from 1 to 0>?
      <In context 1 at event 19, the mode changed from 0 to 1>?
      <In context 1 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #1' terminates in mode 0>?
      <In context 2 at event 1, the mode changed from 0 to 1>?
      <In context 2 at event 2, the mode changed from 1 to 0>?
      <In context 2 at event 3, the mode changed from 0 to 1>?
      <In context 2 at event 4, the mode changed from 1 to 0>?
      <In context 2 at event 5, the mode changed from 0 to 1>?
      <In context 2 at event 6, the mode changed from 1 to 0>?
      <In context 2 at event 7, the mode changed from 0 to 1>?
      <In context 2 at event 8, the mode changed from 1 to 0>?
      <In context 2 at event 9, the mode changed from 0 to 1>?
      <In context 2 at event 10, the mode changed from 1 to 0>?
      <In context 2 at event 11, the mode changed from 0 to 1>?
      <In context 2 at event 12, the mode changed from 1 to 0>?
      <In context 2 at event 13, the mode changed from 0 to 1>?
      <In context 2 at event 14, the mode changed from 1 to 0>?
      <In context 2 at event 15, the mode changed from 0 to 1>?
      <In context 2 at event 16, the mode changed from 1 to 0>?
      <In context 2 at event 17, the mode changed from 0 to 1>?
      <In context 2 at event 18, the mode changed from 1 to 0>?
      <In context 2 at event 19, the mode changed from 0 to 1>?
      <In context 2 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #2' terminates in mode 0>?
      <In context 3 at event 1, the mode changed from 0 to 1>?
      <In context 3 at event 2, the mode changed from 1 to 0>?
      <In context 3 at event 3, the mode changed from 0 to 1>?
      <In context 3 at event 4, the mode changed from 1 to 0>?
      <In context 3 at event 5, the mode changed from 0 to 1>?
      <In context 3 at event 6, the mode changed from 1 to 0>?
      <In context 3 at event 7, the mode changed from 0 to 1>?
      <In context 3 at event 8, the mode changed from 1 to 0>?
      <In context 3 at event 9, the mode changed from 0 to 1>?
      <In context 3 at event 10, the mode changed from 1 to 0>?
      <In context 3 at event 11, the mode changed from 0 to 1>?
      <In context 3 at event 12, the mode changed from 1 to 0>?
      <In context 3 at event 13, the mode changed from 0 to 1>?
      <In context 3 at event 14, the mode changed from 1 to 0>?
      <In context 3 at event 15, the mode changed from 0 to 1>?
      <In context 3 at event 16, the mode changed from 1 to 0>?
      <In context 3 at event 17, the mode changed from 0 to 1>?
      <In context 3 at event 18, the mode changed from 1 to 0>?
      <In context 3 at event 19, the mode changed from 0 to 1>?
      <In context 3 at event 20, the mode changed from 1 to 0>?
      <Context 'thread #3' terminates in mode 0>?
      <In context 4 at event 1, the mode changed from 0 to 1>?
      <In context 4 at event 2, the mode changed from 1 to 0>?
      <In context 4 at event 3, the mode changed from 0 to 1>?
      <In context 4 at event 4, the mode changed from 1 to 0>?
      <In context 4 at event 5, the mode changed from 0 to 1>?
      <In context 4 at event 6, the mode changed from 1 to 0>?
      <In context 4 at event 7, the mode changed from 0 to 1>?
      <In context 4 at event 8, the mode changed from 1 to 0>?
      <In context 4 at event 9, the mode changed from 0 to 1>?
      <In context 4 at event 10, the mode changed from 1 to 0>?
      <In context 4 at event 11, the mode changed from 0 to 1>?
      <In context 4 at event 12, the mode changed from 1 to 0>?
      <In context 4 at event 13, the mode changed from 0 to 1>?
      <In context 4 at event 14, the mode changed from 1 to 0>?
      <In context 4 at event 15, the mode changed from 0 to 1>?
      <In context 4 at event 16, the mode changed from 1 to 0>?
      <In context 4 at event 17, the mode changed from 0 to 1>?
      <In context 4 at event 18, the mode changed from 1 to 0>?
      <In context 4 at event 19, the mode changed from 0 to 1>?
      <In context 4 at event 20, the mode changed from 1 to 0>?
      <In context 4 at event 21, the mode changed from 0 to 1>?
      <In context 4 at event 22, the mode changed from 1 to 0>?
      <In context 4 at event 23, the mode changed from 0 to 1>?
      <In context 4 at event 24, the mode changed from 1 to 0>?
      <In context 4 at event 25, the mode changed from 0 to 1>?
      <In context 4 at event 26, the mode changed from 1 to 0>?
      <In context 4 at event 27, the mode changed from 0 to 1>?
      <In context 4 at event 28, the mode changed from 1 to 0>?
      <In context 4 at event 29, the mode changed from 0 to 1>?
      <In context 4 at event 30, the mode changed from 1 to 0>?
      <In context 4 at event 31, the mode changed from 0 to 1>?
      <In context 4 at event 32, the mode changed from 1 to 0>?
      <In context 4 at event 33, the mode changed from 0 to 1>?
      <In context 4 at event 34, the mode changed from 1 to 0>?
      <In context 4 at event 35, the mode changed from 0 to 1>?
      <In context 4 at event 36, the mode changed from 1 to 0>?
      <In context 4 at event 37, the mode changed from 0 to 1>?
      <In context 4 at event 38, the mode changed from 1 to 0>?
      <In context 4 at event 39, the mode changed from 0 to 1>?
      <In context 4 at event 40, the mode changed from 1 to 0>?
      <Context 'thread-handling' terminates in mode 0>?
\$" TIMEOUT "120" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.annotation-detection "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection.exe")
set_tests_properties(code_api|client.annotation-detection PROPERTIES  PASS_REGULAR_EXPRESSION "^      <Init annotation test client with fast decoding>?
      <test_two_args\\(\\): 1004, 5>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_three_args\\(\\): 1005 \\* 5 \\* 360326 = 1810638150>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_three_args\\(\\): 1003 \\* 5 \\* 360326 = 1807034890>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1015 \\* 2 \\* 3 = 6090>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_three_args\\(\\): 1013 \\* 3 \\* 120 = 364680>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
Triangle \\[4\\.300000 x 5\\.200000 x 6\\.100000\\] area: 360326\\.775900 \\(364680\\)?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_three_args\\(\\): 1013 \\* 49 \\* 5 = 248185>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_three_args\\(\\): 120 \\* 120 \\* 120 = 1728000>?
      <test_three_args\\(\\): 1013 \\* 4 \\* 1728000 = -1588078592>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
Square \\[7\\.000000 x 7\\.000000\\] area: 49\\.000000 \\(-1588078592\\)?
      <Test many args: a=1016, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 5 \\* 49 \\* 4 = 980>?
      <test_two_args\\(\\): 1009, 980>?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 1, 2>?
      <test_two_args\\(\\): 1010, 980>?
Fail! 980?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 2, 4>?
      <test_three_args\\(\\): 1 \\* 2 \\* 3 = 6>?
three args #0: 6?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 9 \\* 8 = 72936>?
      <test_three_args\\(\\): 72936 \\* 2 \\* 1 = 145872>?
three args #1: 145872?
      <test_three_args\\(\\): 1013 \\* 2 \\* 3 = 6078>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 2 \\* 4 \\* 6078 = 48624>?
three args #2: 48624?
      <Test many args: a=1014, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1014, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <Test many args: a=1023, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=0, b=5, c=5, d=0, e=0, f=5, g=5, h=0>?
      <Test many args: a=1024, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1025, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 1 \\* 5 = 5065>?
      <Test many args: a=1026, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1027, b=2, c=3, d=0, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 2 \\* 5 = 10130>?
      <Test many args: a=1026, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1027, b=2, c=3, d=0, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1028, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1029, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1030, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1028, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1029, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1030, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <test_two_args\\(\\): 1011, 5>?
      <Test many args: a=256, b=81, c=3125, d=32, e=8, f=81, g=1, h=3125, i=1>?
      <Test many args: a=1020, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1020, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_three_args\\(\\): 1013 \\* 10 \\* 5 = 50650>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1015 \\* 2 \\* 3 = 6090>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
longjmp 50650 \\(360326\\.775900\\)?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.annotation-detection.full-decode "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection.dll.dll" "full-decode" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection.exe")
set_tests_properties(code_api|client.annotation-detection.full-decode PROPERTIES  PASS_REGULAR_EXPRESSION "^      <Init annotation test client with full decoding>?
      <test_two_args\\(\\): 1004, 5>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_three_args\\(\\): 1005 \\* 5 \\* 360326 = 1810638150>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_three_args\\(\\): 1003 \\* 5 \\* 360326 = 1807034890>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1015 \\* 2 \\* 3 = 6090>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_three_args\\(\\): 1013 \\* 3 \\* 120 = 364680>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
Triangle \\[4\\.300000 x 5\\.200000 x 6\\.100000\\] area: 360326\\.775900 \\(364680\\)?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_three_args\\(\\): 1013 \\* 49 \\* 5 = 248185>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_three_args\\(\\): 120 \\* 120 \\* 120 = 1728000>?
      <test_three_args\\(\\): 1013 \\* 4 \\* 1728000 = -1588078592>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
Square \\[7\\.000000 x 7\\.000000\\] area: 49\\.000000 \\(-1588078592\\)?
      <Test many args: a=1016, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 5 \\* 49 \\* 4 = 980>?
      <test_two_args\\(\\): 1009, 980>?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 1, 2>?
      <test_two_args\\(\\): 1010, 980>?
Fail! 980?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 2, 4>?
      <test_three_args\\(\\): 1 \\* 2 \\* 3 = 6>?
three args #0: 6?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 9 \\* 8 = 72936>?
      <test_three_args\\(\\): 72936 \\* 2 \\* 1 = 145872>?
three args #1: 145872?
      <test_three_args\\(\\): 1013 \\* 2 \\* 3 = 6078>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 2 \\* 4 \\* 6078 = 48624>?
three args #2: 48624?
      <Test many args: a=1014, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1014, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <Test many args: a=1023, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=0, b=5, c=5, d=0, e=0, f=5, g=5, h=0>?
      <Test many args: a=1024, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1025, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 1 \\* 5 = 5065>?
      <Test many args: a=1026, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1027, b=2, c=3, d=0, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 2 \\* 5 = 10130>?
      <Test many args: a=1026, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1027, b=2, c=3, d=0, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1028, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1029, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1030, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1028, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1029, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1030, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <test_two_args\\(\\): 1011, 5>?
      <Test many args: a=256, b=81, c=3125, d=32, e=8, f=81, g=1, h=3125, i=1>?
      <Test many args: a=1020, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1020, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_three_args\\(\\): 1013 \\* 10 \\* 5 = 50650>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1015 \\* 2 \\* 3 = 6090>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
longjmp 50650 \\(360326\\.775900\\)?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.annotation-detection.full-decode.tiny-bb "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-max_bb_instrs" "2" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection.dll.dll" "full-decode" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection.exe")
set_tests_properties(code_api|client.annotation-detection.full-decode.tiny-bb PROPERTIES  PASS_REGULAR_EXPRESSION "^      <Init annotation test client with full decoding>?
      <test_two_args\\(\\): 1004, 5>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_three_args\\(\\): 1005 \\* 5 \\* 360326 = 1810638150>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_three_args\\(\\): 1003 \\* 5 \\* 360326 = 1807034890>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1015 \\* 2 \\* 3 = 6090>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_three_args\\(\\): 1013 \\* 3 \\* 120 = 364680>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
Triangle \\[4\\.300000 x 5\\.200000 x 6\\.100000\\] area: 360326\\.775900 \\(364680\\)?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_three_args\\(\\): 1013 \\* 49 \\* 5 = 248185>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_three_args\\(\\): 120 \\* 120 \\* 120 = 1728000>?
      <test_three_args\\(\\): 1013 \\* 4 \\* 1728000 = -1588078592>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
Square \\[7\\.000000 x 7\\.000000\\] area: 49\\.000000 \\(-1588078592\\)?
      <Test many args: a=1016, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 5 \\* 49 \\* 4 = 980>?
      <test_two_args\\(\\): 1009, 980>?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 1, 2>?
      <test_two_args\\(\\): 1010, 980>?
Fail! 980?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 2, 4>?
      <test_three_args\\(\\): 1 \\* 2 \\* 3 = 6>?
three args #0: 6?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 9 \\* 8 = 72936>?
      <test_three_args\\(\\): 72936 \\* 2 \\* 1 = 145872>?
three args #1: 145872?
      <test_three_args\\(\\): 1013 \\* 2 \\* 3 = 6078>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 2 \\* 4 \\* 6078 = 48624>?
three args #2: 48624?
      <Test many args: a=1014, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1014, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <Test many args: a=1023, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=0, b=5, c=5, d=0, e=0, f=5, g=5, h=0>?
      <Test many args: a=1024, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1025, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 1 \\* 5 = 5065>?
      <Test many args: a=1026, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1027, b=2, c=3, d=0, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 2 \\* 5 = 10130>?
      <Test many args: a=1026, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1027, b=2, c=3, d=0, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1028, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1029, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1030, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1028, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1029, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1030, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <test_two_args\\(\\): 1011, 5>?
      <Test many args: a=256, b=81, c=3125, d=32, e=8, f=81, g=1, h=3125, i=1>?
      <Test many args: a=1020, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1020, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_three_args\\(\\): 1013 \\* 10 \\* 5 = 50650>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1015 \\* 2 \\* 3 = 6090>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
longjmp 50650 \\(360326\\.775900\\)?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.annotation-detection.bb-truncate-1 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection.dll.dll" "truncate@1" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection.exe")
set_tests_properties(code_api|client.annotation-detection.bb-truncate-1 PROPERTIES  PASS_REGULAR_EXPRESSION "^      <Init annotation test client with bb truncation>?
      <test_two_args\\(\\): 1004, 5>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_three_args\\(\\): 1005 \\* 5 \\* 360326 = 1810638150>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_three_args\\(\\): 1003 \\* 5 \\* 360326 = 1807034890>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1015 \\* 2 \\* 3 = 6090>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_three_args\\(\\): 1013 \\* 3 \\* 120 = 364680>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
Triangle \\[4\\.300000 x 5\\.200000 x 6\\.100000\\] area: 360326\\.775900 \\(364680\\)?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_three_args\\(\\): 1013 \\* 49 \\* 5 = 248185>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_three_args\\(\\): 120 \\* 120 \\* 120 = 1728000>?
      <test_three_args\\(\\): 1013 \\* 4 \\* 1728000 = -1588078592>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
Square \\[7\\.000000 x 7\\.000000\\] area: 49\\.000000 \\(-1588078592\\)?
      <Test many args: a=1016, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 5 \\* 49 \\* 4 = 980>?
      <test_two_args\\(\\): 1009, 980>?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 1, 2>?
      <test_two_args\\(\\): 1010, 980>?
Fail! 980?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 2, 4>?
      <test_three_args\\(\\): 1 \\* 2 \\* 3 = 6>?
three args #0: 6?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 9 \\* 8 = 72936>?
      <test_three_args\\(\\): 72936 \\* 2 \\* 1 = 145872>?
three args #1: 145872?
      <test_three_args\\(\\): 1013 \\* 2 \\* 3 = 6078>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 2 \\* 4 \\* 6078 = 48624>?
three args #2: 48624?
      <Test many args: a=1014, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1014, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <Test many args: a=1023, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=0, b=5, c=5, d=0, e=0, f=5, g=5, h=0>?
      <Test many args: a=1024, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1025, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 1 \\* 5 = 5065>?
      <Test many args: a=1026, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1027, b=2, c=3, d=0, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 2 \\* 5 = 10130>?
      <Test many args: a=1026, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1027, b=2, c=3, d=0, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1028, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1029, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1030, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1028, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1029, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1030, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <test_two_args\\(\\): 1011, 5>?
      <Test many args: a=256, b=81, c=3125, d=32, e=8, f=81, g=1, h=3125, i=1>?
      <Test many args: a=1020, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1020, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_three_args\\(\\): 1013 \\* 10 \\* 5 = 50650>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1015 \\* 2 \\* 3 = 6090>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
longjmp 50650 \\(360326\\.775900\\)?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.annotation-detection.bb-truncate-2 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection.dll.dll" "truncate@2" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection.exe")
set_tests_properties(code_api|client.annotation-detection.bb-truncate-2 PROPERTIES  PASS_REGULAR_EXPRESSION "^      <Init annotation test client with bb truncation>?
      <test_two_args\\(\\): 1004, 5>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_three_args\\(\\): 1005 \\* 5 \\* 360326 = 1810638150>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_three_args\\(\\): 1003 \\* 5 \\* 360326 = 1807034890>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1015 \\* 2 \\* 3 = 6090>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_three_args\\(\\): 1013 \\* 3 \\* 120 = 364680>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
Triangle \\[4\\.300000 x 5\\.200000 x 6\\.100000\\] area: 360326\\.775900 \\(364680\\)?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_three_args\\(\\): 1013 \\* 49 \\* 5 = 248185>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_three_args\\(\\): 120 \\* 120 \\* 120 = 1728000>?
      <test_three_args\\(\\): 1013 \\* 4 \\* 1728000 = -1588078592>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
Square \\[7\\.000000 x 7\\.000000\\] area: 49\\.000000 \\(-1588078592\\)?
      <Test many args: a=1016, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 5 \\* 49 \\* 4 = 980>?
      <test_two_args\\(\\): 1009, 980>?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 1, 2>?
      <test_two_args\\(\\): 1010, 980>?
Fail! 980?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 2, 4>?
      <test_three_args\\(\\): 1 \\* 2 \\* 3 = 6>?
three args #0: 6?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 9 \\* 8 = 72936>?
      <test_three_args\\(\\): 72936 \\* 2 \\* 1 = 145872>?
three args #1: 145872?
      <test_three_args\\(\\): 1013 \\* 2 \\* 3 = 6078>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 2 \\* 4 \\* 6078 = 48624>?
three args #2: 48624?
      <Test many args: a=1014, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1014, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <Test many args: a=1023, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=0, b=5, c=5, d=0, e=0, f=5, g=5, h=0>?
      <Test many args: a=1024, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1025, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 1 \\* 5 = 5065>?
      <Test many args: a=1026, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1027, b=2, c=3, d=0, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 2 \\* 5 = 10130>?
      <Test many args: a=1026, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1027, b=2, c=3, d=0, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1028, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1029, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1030, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1028, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1029, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1030, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <test_two_args\\(\\): 1011, 5>?
      <Test many args: a=256, b=81, c=3125, d=32, e=8, f=81, g=1, h=3125, i=1>?
      <Test many args: a=1020, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1020, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_three_args\\(\\): 1013 \\* 10 \\* 5 = 50650>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1015 \\* 2 \\* 3 = 6090>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
longjmp 50650 \\(360326\\.775900\\)?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.annotation-detection-opt "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection-opt.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-detection-opt.exe")
set_tests_properties(code_api|client.annotation-detection-opt PROPERTIES  PASS_REGULAR_EXPRESSION "^      <Init annotation test client with fast decoding>?
      <test_two_args\\(\\): 1004, 5>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_three_args\\(\\): 1005 \\* 5 \\* 360326 = 1810638150>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_three_args\\(\\): 1003 \\* 5 \\* 360326 = 1807034890>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1015 \\* 2 \\* 3 = 6090>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_three_args\\(\\): 1013 \\* 3 \\* 120 = 364680>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
Triangle \\[4\\.300000 x 5\\.200000 x 6\\.100000\\] area: 360326\\.775900 \\(364680\\)?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_three_args\\(\\): 1013 \\* 49 \\* 5 = 248185>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 4 \\* 5 \\* 6 = 120>?
      <test_three_args\\(\\): 120 \\* 120 \\* 120 = 1728000>?
      <test_three_args\\(\\): 1013 \\* 4 \\* 1728000 = -1588078592>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
Square \\[7\\.000000 x 7\\.000000\\] area: 49\\.000000 \\(-1588078592\\)?
      <Test many args: a=1016, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
      <test_three_args\\(\\): 5 \\* 49 \\* 4 = 980>?
      <test_two_args\\(\\): 1009, 980>?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 1, 2>?
      <test_two_args\\(\\): 1010, 980>?
Fail! 980?
      <test_two_args\\(\\): 1011, 5>?
      <test_two_args\\(\\): 2, 4>?
      <test_three_args\\(\\): 1 \\* 2 \\* 3 = 6>?
three args #0: 6?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 9 \\* 8 = 72936>?
      <test_three_args\\(\\): 72936 \\* 2 \\* 1 = 145872>?
three args #1: 145872?
      <test_three_args\\(\\): 1013 \\* 2 \\* 3 = 6078>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 2 \\* 4 \\* 6078 = 48624>?
three args #2: 48624?
      <Test many args: a=1014, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1014, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1002, 49>?
      <test_two_args\\(\\): 1001, 7>?
      <test_two_args\\(\\): 1001, 7>?
      <Test many args: a=1023, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=0, b=5, c=5, d=0, e=0, f=5, g=5, h=0>?
      <Test many args: a=1024, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1025, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 1 \\* 5 = 5065>?
      <Test many args: a=1026, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1027, b=2, c=3, d=0, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1013 \\* 2 \\* 5 = 10130>?
      <Test many args: a=1026, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1027, b=2, c=3, d=0, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1028, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1029, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1030, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <Test many args: a=1028, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1029, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1030, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10>?
      <test_two_args\\(\\): 1011, 5>?
      <Test many args: a=256, b=81, c=3125, d=32, e=8, f=81, g=1, h=3125, i=1>?
      <Test many args: a=1020, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1020, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <Test many args: a=1021, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9>?
      <Test many args: a=1022, b=2, c=3, d=4, e=5, f=6, g=7, h=8>?
      <test_three_args\\(\\): 1013 \\* 10 \\* 5 = 50650>?
      <test_two_args\\(\\): 1011, 5>?
      <test_three_args\\(\\): 1015 \\* 2 \\* 3 = 6090>?
get_area\\(\\): s with a: 27\\.300000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
      <test_two_args\\(\\): 1006, 6>?
get_area\\(\\): s with b: 603\\.330000?
      <test_two_args\\(\\): 1007, 4>?
      <test_three_args\\(\\): 1008 \\* 119 \\* 30864 = -592768768>?
get_area\\(\\): s with c: 360326\\.775900?
longjmp 50650 \\(360326\\.775900\\)?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.segfault "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.segfault.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.segfault.exe")
set_tests_properties(code_api|client.segfault PROPERTIES  PASS_REGULAR_EXPRESSION "^accessing the first page?
app handler was not called?
app handler was not called?
accessing both pages?
i=1?
dr handler ok?
app handler ok?
dr handler ok?
app handler ok?
i=2?
dr handler ok?
app handler ok?
dr handler ok?
app handler ok?
i=3?
dr handler ok?
app handler ok?
dr handler ok?
app handler ok?
accessing the second page?
i=4?
dr handler ok?
app handler ok?
dr handler ok?
app handler ok?
i=5?
dr handler ok?
app handler ok?
dr handler ok?
app handler ok?
i=6?
dr handler ok?
app handler ok?
dr handler ok?
app handler ok?
i=7?
dr handler ok?
app handler ok?
dr handler ok?
app handler ok?
accessing NULL?
dr handler ok?
app handler aborting?
dr exit handler aborting?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.execfault "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.execfault.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.execfault.exe")
set_tests_properties(code_api|client.execfault PROPERTIES  PASS_REGULAR_EXPRESSION "^executing from illegal addresses?
dr handler got exception c0000005 with addr 0x0*000002a?
app handler got exception c0000005 with addr 0x0*000002a?
dr handler got exception c0000005 with addr 0x0*000004d?
app handler got exception c0000005 with addr 0x0*000004d?
all done?
dr exit handler?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.vg-annot "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot.exe")
set_tests_properties(code_api|client.vg-annot PROPERTIES  PASS_REGULAR_EXPRESSION "^Init vg-annot with fast decoding\\.?
Make 567 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
Make 1234 bytes defined if addressable\\.?
Make 89 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
The Valgrind annotation test thinks it is running on Valgrind\\.?
Before annotation: j=1?
After annotation: j=1?
Before annotation: j=8?
After annotation: j=8?
Before annotation: j=12?
After annotation: j=12?
Before annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
After annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
Before annotation: j=9?
After annotation: j=9?
?
--------?
?
Final matrix values:?
Row 00: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 01: 01 04 07 10 13 16 00 00 00 00 00 00?
Row 02: 02 05 08 11 14 17 00 04 00 00 00 00?
Row 03: 03 06 09 12 15 18 00 00 00 00 00 00?
Row 04: 04 07 10 13 16 19 01 00 00 00 00 00?
Row 05: 05 08 11 14 17 20 00 00 00 00 00 00?
Row 06: 00 12 06 04 03 02 02 00 00 00 00 00?
Row 07: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 08: 00 16 08 05 04 03 02 00 04 00 00 00?
Row 09: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 10: 00 20 10 06 05 04 03 12 13 14 04 00?
Row 11: 00 00 00 00 00 00 00 00 00 00 00 00?
?
--------?
?
Received 5 'define memory' requests for a total of 3024 bytes\\.?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.vg-annot.full-decode "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot.dll.dll" "full-decode" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot.exe")
set_tests_properties(code_api|client.vg-annot.full-decode PROPERTIES  PASS_REGULAR_EXPRESSION "^Init vg-annot with full decoding\\.?
Make 567 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
Make 1234 bytes defined if addressable\\.?
Make 89 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
The Valgrind annotation test thinks it is running on Valgrind\\.?
Before annotation: j=1?
After annotation: j=1?
Before annotation: j=8?
After annotation: j=8?
Before annotation: j=12?
After annotation: j=12?
Before annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
After annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
Before annotation: j=9?
After annotation: j=9?
?
--------?
?
Final matrix values:?
Row 00: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 01: 01 04 07 10 13 16 00 00 00 00 00 00?
Row 02: 02 05 08 11 14 17 00 04 00 00 00 00?
Row 03: 03 06 09 12 15 18 00 00 00 00 00 00?
Row 04: 04 07 10 13 16 19 01 00 00 00 00 00?
Row 05: 05 08 11 14 17 20 00 00 00 00 00 00?
Row 06: 00 12 06 04 03 02 02 00 00 00 00 00?
Row 07: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 08: 00 16 08 05 04 03 02 00 04 00 00 00?
Row 09: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 10: 00 20 10 06 05 04 03 12 13 14 04 00?
Row 11: 00 00 00 00 00 00 00 00 00 00 00 00?
?
--------?
?
Received 5 'define memory' requests for a total of 3024 bytes\\.?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.vg-annot.full-decode.tiny-bb "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-max_bb_instrs" "2" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot.dll.dll" "full-decode" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot.exe")
set_tests_properties(code_api|client.vg-annot.full-decode.tiny-bb PROPERTIES  PASS_REGULAR_EXPRESSION "^Init vg-annot with full decoding\\.?
Make 567 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
Make 1234 bytes defined if addressable\\.?
Make 89 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
The Valgrind annotation test thinks it is running on Valgrind\\.?
Before annotation: j=1?
After annotation: j=1?
Before annotation: j=8?
After annotation: j=8?
Before annotation: j=12?
After annotation: j=12?
Before annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
After annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
Before annotation: j=9?
After annotation: j=9?
?
--------?
?
Final matrix values:?
Row 00: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 01: 01 04 07 10 13 16 00 00 00 00 00 00?
Row 02: 02 05 08 11 14 17 00 04 00 00 00 00?
Row 03: 03 06 09 12 15 18 00 00 00 00 00 00?
Row 04: 04 07 10 13 16 19 01 00 00 00 00 00?
Row 05: 05 08 11 14 17 20 00 00 00 00 00 00?
Row 06: 00 12 06 04 03 02 02 00 00 00 00 00?
Row 07: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 08: 00 16 08 05 04 03 02 00 04 00 00 00?
Row 09: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 10: 00 20 10 06 05 04 03 12 13 14 04 00?
Row 11: 00 00 00 00 00 00 00 00 00 00 00 00?
?
--------?
?
Received 5 'define memory' requests for a total of 3024 bytes\\.?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.vg-annot.bb-truncate-1 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot.dll.dll" "truncate@1" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot.exe")
set_tests_properties(code_api|client.vg-annot.bb-truncate-1 PROPERTIES  PASS_REGULAR_EXPRESSION "^Init vg-annot with bb truncation\\.?
Make 567 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
Make 1234 bytes defined if addressable\\.?
Make 89 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
The Valgrind annotation test thinks it is running on Valgrind\\.?
Before annotation: j=1?
After annotation: j=1?
Before annotation: j=8?
After annotation: j=8?
Before annotation: j=12?
After annotation: j=12?
Before annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
After annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
Before annotation: j=9?
After annotation: j=9?
?
--------?
?
Final matrix values:?
Row 00: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 01: 01 04 07 10 13 16 00 00 00 00 00 00?
Row 02: 02 05 08 11 14 17 00 04 00 00 00 00?
Row 03: 03 06 09 12 15 18 00 00 00 00 00 00?
Row 04: 04 07 10 13 16 19 01 00 00 00 00 00?
Row 05: 05 08 11 14 17 20 00 00 00 00 00 00?
Row 06: 00 12 06 04 03 02 02 00 00 00 00 00?
Row 07: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 08: 00 16 08 05 04 03 02 00 04 00 00 00?
Row 09: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 10: 00 20 10 06 05 04 03 12 13 14 04 00?
Row 11: 00 00 00 00 00 00 00 00 00 00 00 00?
?
--------?
?
Received 5 'define memory' requests for a total of 3024 bytes\\.?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.vg-annot.bb-truncate-2 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot.dll.dll" "truncate@2" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot.exe")
set_tests_properties(code_api|client.vg-annot.bb-truncate-2 PROPERTIES  PASS_REGULAR_EXPRESSION "^Init vg-annot with bb truncation\\.?
Make 567 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
Make 1234 bytes defined if addressable\\.?
Make 89 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
The Valgrind annotation test thinks it is running on Valgrind\\.?
Before annotation: j=1?
After annotation: j=1?
Before annotation: j=8?
After annotation: j=8?
Before annotation: j=12?
After annotation: j=12?
Before annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
After annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
Before annotation: j=9?
After annotation: j=9?
?
--------?
?
Final matrix values:?
Row 00: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 01: 01 04 07 10 13 16 00 00 00 00 00 00?
Row 02: 02 05 08 11 14 17 00 04 00 00 00 00?
Row 03: 03 06 09 12 15 18 00 00 00 00 00 00?
Row 04: 04 07 10 13 16 19 01 00 00 00 00 00?
Row 05: 05 08 11 14 17 20 00 00 00 00 00 00?
Row 06: 00 12 06 04 03 02 02 00 00 00 00 00?
Row 07: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 08: 00 16 08 05 04 03 02 00 04 00 00 00?
Row 09: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 10: 00 20 10 06 05 04 03 12 13 14 04 00?
Row 11: 00 00 00 00 00 00 00 00 00 00 00 00?
?
--------?
?
Received 5 'define memory' requests for a total of 3024 bytes\\.?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.vg-annot-opt "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot-opt.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot-opt.exe")
set_tests_properties(code_api|client.vg-annot-opt PROPERTIES  PASS_REGULAR_EXPRESSION "^Init vg-annot with fast decoding\\.?
Make 567 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
Make 1234 bytes defined if addressable\\.?
Make 89 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
The Valgrind annotation test thinks it is running on Valgrind\\.?
Before annotation: j=1?
After annotation: j=1?
Before annotation: j=8?
After annotation: j=8?
Before annotation: j=12?
After annotation: j=12?
Before annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
After annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
Before annotation: j=9?
After annotation: j=9?
?
--------?
?
Final matrix values:?
Row 00: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 01: 01 04 07 10 13 16 00 00 00 00 00 00?
Row 02: 02 05 08 11 14 17 00 04 00 00 00 00?
Row 03: 03 06 09 12 15 18 00 00 00 00 00 00?
Row 04: 04 07 10 13 16 19 01 00 00 00 00 00?
Row 05: 05 08 11 14 17 20 00 00 00 00 00 00?
Row 06: 00 12 06 04 03 02 02 00 00 00 00 00?
Row 07: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 08: 00 16 08 05 04 03 02 00 04 00 00 00?
Row 09: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 10: 00 20 10 06 05 04 03 12 13 14 04 00?
Row 11: 00 00 00 00 00 00 00 00 00 00 00 00?
?
--------?
?
Received 5 'define memory' requests for a total of 3024 bytes\\.?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.vg-annot-opt.full-decode "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot.dll.dll" "full-decode" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot-opt.exe")
set_tests_properties(code_api|client.vg-annot-opt.full-decode PROPERTIES  PASS_REGULAR_EXPRESSION "^Init vg-annot with full decoding\\.?
Make 567 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
Make 1234 bytes defined if addressable\\.?
Make 89 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
The Valgrind annotation test thinks it is running on Valgrind\\.?
Before annotation: j=1?
After annotation: j=1?
Before annotation: j=8?
After annotation: j=8?
Before annotation: j=12?
After annotation: j=12?
Before annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
After annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
Before annotation: j=9?
After annotation: j=9?
?
--------?
?
Final matrix values:?
Row 00: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 01: 01 04 07 10 13 16 00 00 00 00 00 00?
Row 02: 02 05 08 11 14 17 00 04 00 00 00 00?
Row 03: 03 06 09 12 15 18 00 00 00 00 00 00?
Row 04: 04 07 10 13 16 19 01 00 00 00 00 00?
Row 05: 05 08 11 14 17 20 00 00 00 00 00 00?
Row 06: 00 12 06 04 03 02 02 00 00 00 00 00?
Row 07: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 08: 00 16 08 05 04 03 02 00 04 00 00 00?
Row 09: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 10: 00 20 10 06 05 04 03 12 13 14 04 00?
Row 11: 00 00 00 00 00 00 00 00 00 00 00 00?
?
--------?
?
Received 5 'define memory' requests for a total of 3024 bytes\\.?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.vg-annot-opt.full-decode.tiny-bb "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-max_bb_instrs" "3" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot.dll.dll" "full-decode" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot-opt.exe")
set_tests_properties(code_api|client.vg-annot-opt.full-decode.tiny-bb PROPERTIES  PASS_REGULAR_EXPRESSION "^Init vg-annot with full decoding\\.?
Make 567 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
Make 1234 bytes defined if addressable\\.?
Make 89 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
The Valgrind annotation test thinks it is running on Valgrind\\.?
Before annotation: j=1?
After annotation: j=1?
Before annotation: j=8?
After annotation: j=8?
Before annotation: j=12?
After annotation: j=12?
Before annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
After annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
Before annotation: j=9?
After annotation: j=9?
?
--------?
?
Final matrix values:?
Row 00: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 01: 01 04 07 10 13 16 00 00 00 00 00 00?
Row 02: 02 05 08 11 14 17 00 04 00 00 00 00?
Row 03: 03 06 09 12 15 18 00 00 00 00 00 00?
Row 04: 04 07 10 13 16 19 01 00 00 00 00 00?
Row 05: 05 08 11 14 17 20 00 00 00 00 00 00?
Row 06: 00 12 06 04 03 02 02 00 00 00 00 00?
Row 07: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 08: 00 16 08 05 04 03 02 00 04 00 00 00?
Row 09: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 10: 00 20 10 06 05 04 03 12 13 14 04 00?
Row 11: 00 00 00 00 00 00 00 00 00 00 00 00?
?
--------?
?
Received 5 'define memory' requests for a total of 3024 bytes\\.?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.vg-annot-opt.bb-truncate "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot.dll.dll" "truncate@2" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.vg-annot-opt.exe")
set_tests_properties(code_api|client.vg-annot-opt.bb-truncate PROPERTIES  PASS_REGULAR_EXPRESSION "^Init vg-annot with bb truncation\\.?
Make 567 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
Make 1234 bytes defined if addressable\\.?
Make 89 bytes defined if addressable\\.?
Make 567 bytes defined if addressable\\.?
The Valgrind annotation test thinks it is running on Valgrind\\.?
Before annotation: j=1?
After annotation: j=1?
Before annotation: j=8?
After annotation: j=8?
Before annotation: j=12?
After annotation: j=12?
Before annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
After annotation: data\\[i/2\\]\\[j \\+ data\\[i\\]\\[j\\]\\]=4?
Before annotation: j=9?
After annotation: j=9?
?
--------?
?
Final matrix values:?
Row 00: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 01: 01 04 07 10 13 16 00 00 00 00 00 00?
Row 02: 02 05 08 11 14 17 00 04 00 00 00 00?
Row 03: 03 06 09 12 15 18 00 00 00 00 00 00?
Row 04: 04 07 10 13 16 19 01 00 00 00 00 00?
Row 05: 05 08 11 14 17 20 00 00 00 00 00 00?
Row 06: 00 12 06 04 03 02 02 00 00 00 00 00?
Row 07: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 08: 00 16 08 05 04 03 02 00 04 00 00 00?
Row 09: 00 00 00 00 00 00 00 00 00 00 00 00?
Row 10: 00 20 10 06 05 04 03 12 13 14 04 00?
Row 11: 00 00 00 00 00 00 00 00 00 00 00 00?
?
--------?
?
Received 5 'define memory' requests for a total of 3024 bytes\\.?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.events "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.exe" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.appdll.dll")
set_tests_properties(code_api|client.events PROPERTIES  PASS_REGULAR_EXPRESSION "^appdll initialized?
exception event redirect?
Redirect success!?
exit event 2?
exit event 1?
module load event 1 is called 1 time?
module load event 2 is called 1 time?
thread init event 1 is called 1 time?
thread init event 2 is called 1 time?
bb event 1 is called 1 time?
bb event 2 is called 1 time?
end trace event 1 is called 1 time?
end trace event 2 is called 1 time?
trace event 1 is called 1 time?
trace event 2 is called 1 time?
delete event 1 is called 1 time?
delete event 2 is called 1 time?
(filter syscall event 1 is called 1 time?
)?(filter syscall event 2 is called 1 time?
)?pre syscall event 1 is called 1 time?
pre syscall event 2 is called 1 time?
post syscall event 1 is called 1 time?
post syscall event 2 is called 1 time?
kernel xfer event 1 is called 1 time?
kernel xfer event 2 is called >1 time?
module unload event 1 is called 1 time?
module unload event 2 is called 1 time?
thread exit event 1 is called 1 time?
thread exit event 2 is called 1 time?
exception event 1 is called 1 time?
exception event 2 is called 1 time?
restore state event 1 is called 1 time?
restore state event 2 is called 1 time?
restore state ex event 1 is called 1 time?
restore state ex event 2 is called 1 time?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.events_cpp "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events_cpp.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events_cpp.exe" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.appdll.dll")
set_tests_properties(code_api|client.events_cpp PROPERTIES  PASS_REGULAR_EXPRESSION "^appdll initialized?
exception event redirect?
Redirect success!?
exit event 2?
exit event 1?
module load event 1 is called 1 time?
module load event 2 is called 1 time?
thread init event 1 is called 1 time?
thread init event 2 is called 1 time?
bb event 1 is called 1 time?
bb event 2 is called 1 time?
end trace event 1 is called 1 time?
end trace event 2 is called 1 time?
trace event 1 is called 1 time?
trace event 2 is called 1 time?
delete event 1 is called 1 time?
delete event 2 is called 1 time?
(filter syscall event 1 is called 1 time?
)?(filter syscall event 2 is called 1 time?
)?pre syscall event 1 is called 1 time?
pre syscall event 2 is called 1 time?
post syscall event 1 is called 1 time?
post syscall event 2 is called 1 time?
kernel xfer event 1 is called 1 time?
kernel xfer event 2 is called >1 time?
module unload event 1 is called 1 time?
module unload event 2 is called 1 time?
thread exit event 1 is called 1 time?
thread exit event 2 is called 1 time?
exception event 1 is called 1 time?
exception event 2 is called 1 time?
restore state event 1 is called 1 time?
restore state event 2 is called 1 time?
restore state ex event 1 is called 1 time?
restore state ex event 2 is called 1 time?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.cbr3 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.cbr3.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.cbr3.exe")
set_tests_properties(code_api|client.cbr3 PROPERTIES  PASS_REGULAR_EXPRESSION "^cbr taken?
cbr not taken?
cbr taken?
cbr taken?
cbr not taken?
y=5?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.cbr4 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-thread_private" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.cbr4.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.cbr4.exe")
set_tests_properties(code_api|client.cbr4 PROPERTIES  PASS_REGULAR_EXPRESSION "^cbr taken?
cbr not taken?
cbr taken?
cbr taken?
cbr not taken?
y=5?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.nudge_test "C:/Program Files/CMake/bin/cmake.exe" "-D" "toolbindir=E:/svn/PowerResearch/dynamorio-master-x86/bin32" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/bin32/run_in_bg@-out@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/client.nudge_test-out@E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe@-pidfile@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/client.nudge_test-pid@-quiet@-debug@-use_dll@E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll@-exit0@-stderr_mask@0xC@-msgbox_mask@0@-dumpcore_mask@0x7d@-staged@-code_api@-c@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.nudge_test.dll.dll@--@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.infloop.exe" "-D" "out=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/client.nudge_test-out" "-D" "nudge=-client;0;10" "-D" "clear=" "-D" "pidfile=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/client.nudge_test-pid" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runall.cmake")
set_tests_properties(code_api|client.nudge_test PROPERTIES  PASS_REGULAR_EXPRESSION "^thank you for testing the client interface?
nudge delivered 10?
nudge delivered 11?
MessageBox closed?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1384;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.cbr-retarget "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.cbr-retarget.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.cbr-retarget.exe")
set_tests_properties(code_api|client.cbr-retarget PROPERTIES  PASS_REGULAR_EXPRESSION "^called bar\\(\\)?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.fibers "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events_cpp.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.fibers.exe")
set_tests_properties(code_api|client.fibers PROPERTIES  PASS_REGULAR_EXPRESSION "^in main fiber?
uninit values:?
  flsA = 0x00000000?
  flsB = 0x00000000?
fls_delete val=0x12345678?
for main, set FLS to:?
  flsA = 0x12345678?
  flsB = 0xdeadbeef?
ran out of FLS slots?
creating worker fiber 0?
switching to worker fiber first time?
in worker fiber?
for worker, set FLS to:?
  flsA = 0xdeadbeef?
  flsB = 0x12345678?
back to main?
  flsA = 0x12345678?
  flsB = 0xdeadbeef?
switching to worker fiber second time?
in worker fiber again?
  flsA = 0xdeadbeef?
  flsB = 0x12345678?
back to main?
  flsA = 0x12345678?
  flsB = 0xdeadbeef?
deleting worker fiber 0?
fls_delete val=(0xdeadbeef|0x12345678)?
fls_delete val=(0x12345678|0xdeadbeef)?
creating worker fiber 1?
switching to worker fiber first time?
in worker fiber?
for worker, set FLS to:?
  flsA = 0xdeadbeef?
  flsB = 0x12345678?
back to main?
  flsA = 0x12345678?
  flsB = 0xdeadbeef?
switching to worker fiber second time?
in worker fiber again?
  flsA = 0xdeadbeef?
  flsB = 0x12345678?
back to main?
  flsA = 0x12345678?
  flsB = 0xdeadbeef?
deleting worker fiber 1?
fls_delete val=(0xdeadbeef|0x12345678)?
fls_delete val=(0x12345678|0xdeadbeef)?
all done?
fls_delete val=(0x12345678|0xdeadbeef)?
fls_delete val=(0xdeadbeef|0x12345678)?
exit event 2?
exit event 1?
module load event 1 is called 1 time?
module load event 2 is called 1 time?
thread init event 1 is called 1 time?
thread init event 2 is called 1 time?
bb event 1 is called 1 time?
bb event 2 is called 1 time?
end trace event 1 is called 1 time?
end trace event 2 is called 1 time?
trace event 1 is called 1 time?
trace event 2 is called 1 time?
delete event 1 is called 1 time?
delete event 2 is called 1 time?
(filter syscall event 1 is called 1 time?
filter syscall event 2 is called 1 time?
)?pre syscall event 1 is called 1 time?
pre syscall event 2 is called 1 time?
post syscall event 1 is called 1 time?
post syscall event 2 is called 1 time?
thread exit event 1 is called 1 time?
thread exit event 2 is called 1 time?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.loader "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.loader.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.loader.exe")
set_tests_properties(code_api|client.loader PROPERTIES  PASS_REGULAR_EXPRESSION "^in init?
Hello, world!?
in exit?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.winxfer "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.winxfer.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.winxfer.exe")
set_tests_properties(code_api|client.winxfer PROPERTIES  PASS_REGULAR_EXPRESSION "^About to create thread?
kernel_xfer_event: type 2?
kernel_xfer_event: type 7?
kernel_xfer_event: type 5?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
(kernel_xfer_event: type 5?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
)?kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
kernel_xfer_event: type 6?
(kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
kernel_xfer_event: type 6?
)?kernel_xfer_event: type 5?
in wnd_callback 0x0*0000024 0?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
in wnd_callback 0x0*0000081 0?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
(kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
)?in wnd_callback 0x0*0000083 0?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
in wnd_callback 0x0*0000001 0?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
in wnd_callback 0x0*0008001 3 0?
About to crash?
exception c0000005 addr 0x0*0000040?
kernel_xfer_event: type 3?
kernel_xfer_event: type 7?
Inside handler?
kernel_xfer_event: type 6?
kernel_xfer_event: type 5?
in wnd_callback 0x0*0008001 0 2?
kernel_xfer_event: type 6?
Got message 0x0*0008001 1 3?
Before _beginthreadex?
kernel_xfer_event: type 2?
kernel_xfer_event: type 7?
QueueUserAPC returned 1?
kernel_xfer_event: type 2?
kernel_xfer_event: type 7?
SleepEx returned 192?
Apc arg = 37?
Result = 100?
After _beginthreadex?
All done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.file_io "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.file_io.dll.dll" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/client-interface/file_io_data.txt" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.file_io.exe")
set_tests_properties(code_api|client.file_io PROPERTIES  PASS_REGULAR_EXPRESSION "^0123456789?
01234?
abcdefg?
x?
EOF?
?
dummy_func is rx?
writable_buf is rw?
read_only_buf is r?
dr_safe_read\\(\\) check?
DR_TRY_EXCEPT check?
dr_safe_write\\(\\) check?
vfprintf check: 1234?
file separation check?
float i/o test: 3\\.1416?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.flush "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.flush.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.flush.exe")
set_tests_properties(code_api|client.flush PROPERTIES  PASS_REGULAR_EXPRESSION "^options = ?
kernel_xfer_event: type 9?
Flush completion id=200?
kernel_xfer_event: type 9?
Flush completion id=400?
count = 402?
0 undeleted fragments?
constructed BB 5-15 times?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.thread "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.thread.dll.dll" "-paramx" "-paramy" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.thread.exe")
set_tests_properties(code_api|client.thread PROPERTIES  PASS_REGULAR_EXPRESSION "^PR 216931: client options are -paramx -paramy?
inside app client\\.thread\\.exe?
PR 198871 locking test\\.\\.\\.\\.\\.\\.passed?
client thread is alive tls=42?
client thread is dying?
PR 222812: client thread test passed?
thread\\.appdll\\.dll process attach?
loaded library?
PR 210591: testing client transparency?
client thread is alive tls=42?
thread\\.appdll\\.dll process detach?
i#1489 last-thread test?
thank you for testing the client interface?
TLS slot 0 is 0xbadcab42?
TLS slot 1 is 0xbadcab43?
TLS slot 2 is 0xbadcab44?
TLS slot 3 is 0xbadcab45?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.strace "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.strace.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.strace.exe")
set_tests_properties(code_api|client.strace PROPERTIES  PASS_REGULAR_EXPRESSION "^Goodbye world!?
Goodbye world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.truncate "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.truncate.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.truncate PROPERTIES  PASS_REGULAR_EXPRESSION "^thank you for testing the client interface?
Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.truncate.thread-churn-1 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.truncate.dll.dll" "1" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.threadchurn.exe")
set_tests_properties(code_api|client.truncate.thread-churn-1 PROPERTIES  PASS_REGULAR_EXPRESSION "^thank you for testing the client interface?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.truncate.thread-churn-2 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.truncate.dll.dll" "2" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/win32.threadchurn.exe")
set_tests_properties(code_api|client.truncate.thread-churn-2 PROPERTIES  PASS_REGULAR_EXPRESSION "^thank you for testing the client interface?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.dr_options "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-native_exec_list" "foo.dll,bar.dll" "-opt_cleancall" "3" "-thread_private" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.dr_options.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.dr_options PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.unregister "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.unregister.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.unregister PROPERTIES  PASS_REGULAR_EXPRESSION "^got BB event?
Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.cleancall-opt-1 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-opt_cleancall" "1" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.cleancall-opt-1.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.cleancall-opt-1.exe")
set_tests_properties(code_api|client.cleancall-opt-1 PROPERTIES  PASS_REGULAR_EXPRESSION "^INIT?
(<Application .*client\\.avx512cleancall-opt-1.*AVX-512 was detected at PC 0x[0-9a-f]+. AVX-512 is not fully supported yet.>?
)?Calling func empty...?
Called func empty.?
(<Application .*client\\.cleancall-opt-1.*AVX-512 was detected at PC 0x[0-9a-f]+. AVX-512 is not fully supported yet.>?
)?Calling func out_of_line...?
Called func out_of_line.?
Calling func inscount...?
Called func inscount.?
Calling func compiler_inscount...?
Called func compiler_inscount.?
Calling func bbcount...?
Called func bbcount.?
Calling func aflags_clobber...?
Called func aflags_clobber.?
PASSED?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.inline "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-opt_cleancall" "3" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.inline.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.inline.exe")
set_tests_properties(code_api|client.inline PROPERTIES  PASS_REGULAR_EXPRESSION "^INIT?
Calling func empty\\.\\.\\.?
Called func empty\\.?
Calling func empty_1arg\\.\\.\\.?
Called func empty_1arg\\.?
Calling func inscount\\.\\.\\.?
Called func inscount\\.?
Calling func compiler_inscount\\.\\.\\.?
Called func compiler_inscount\\.?
Calling func gcc47_inscount\\.\\.\\.?
Called func gcc47_inscount\\.?
Calling func callpic_pop\\.\\.\\.?
Called func callpic_pop\\.?
Calling func callpic_mov\\.\\.\\.?
Called func callpic_mov\\.?
Calling func nonleaf\\.\\.\\.?
Called func nonleaf\\.?
Calling func cond_br\\.\\.\\.?
Called func cond_br\\.?
Calling func tls_clobber\\.\\.\\.?
Called func tls_clobber\\.?
Calling func aflags_clobber\\.\\.\\.?
actual: d701, expected: d701?
passed for d701?
actual: 0200, expected: 0200?
passed for 0200?
Called func aflags_clobber\\.?
Calling func bbcount\\.\\.\\.?
Called func bbcount\\.?
PASSED?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.null_instrument "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.null_instrument.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.null_instrument.exe")
set_tests_properties(code_api|client.null_instrument PROPERTIES  PASS_REGULAR_EXPRESSION "^foo?
bar: baz?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.large_options "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.large_options.dll.dll" "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.large_options.exe")
set_tests_properties(code_api|client.large_options PROPERTIES  PASS_REGULAR_EXPRESSION "^client opts: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx?
parent?
client opts: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx?
child?
parent exiting?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.blackbox "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.blackbox.dll.A.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.blackbox PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.option_parse "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.option_parse.dll.dll" "-l" "-4" "-ll" "-3220721071790640321" "-ul" "4" "-ull" "1384772493926445887" "-x" "4" "-y" "quoted string" "-z" "first" "-z" "single quotes -dash --dashes" "-front" "value" "-y" "accum" "-front2" "value2" "-no_flag" "-takes2" "1_of_4" "2_of_4" "-takes2" "3_of_4" "4_of_4" "-val_sep" "v1.1 v1.2" "-val_sep" "v2.1 v2.2" "-val_sep2" "v1" "v2" "-val_sep2" "v3" "v4" "-large_bytesize" "9999999999" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.option_parse PROPERTIES  PASS_REGULAR_EXPRESSION "^param l = -4?
param ll = -3220721071790640321?
param ul = 4?
param ull = 1384772493926445887?
param x = 4?
param y = \\|quoted string accum\\|?
param z = \\|single quotes -dash --dashes\\|?
param foo = 8?
param bar = \\|some string with spaces\\|?
param flag = \\|0\\|?
param sweep = \\|-front value -front2 value2\\|?
param takes2 = \\|1_of_4 3_of_4\\|,\\|2_of_4 4_of_4\\|?
param val_sep = \\|v1\\.1 v1\\.2\\+v2\\.1 v2\\.2\\|?
param val_sep2 = \\|v1\\+v3\\|,\\|v2\\+v4\\|?
param large_bytesize = 9999999999?
Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.thread_exit_xl8 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.thread_exit_xl8.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.thread_exit_xl8 PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
.* DynamoRIO usage error : dr_app_pc_from_cache_pc not supported from the thread exit event.*?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drcontainers-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drcontainers-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.drcontainers-test PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drmgr-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drmgr-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drmgr-test.exe" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.appdll.dll")
set_tests_properties(code_api|client.drmgr-test PROPERTIES  PASS_REGULAR_EXPRESSION "^in event_thread_init_null_user_data?
in event_thread_init_user_data?
in event_thread_init_ex?
in event_thread_init?
in insert A?
in insert B?
in insert C?
in pre_sys_B_user_data?
in pre_sys_B?
in pre_sys_A_user_data?
in pre_sys_A?
in post_sys_B_user_data?
in post_sys_B?
in post_sys_A_user_data?
in post_sys_A?
About to create thread?
in wnd_callback 0x0*0000024 0?
in wnd_callback 0x0*0000081 0?
in wnd_callback 0x0*0000083 0?
in wnd_callback 0x0*0000001 0?
in wnd_callback 0x0*0008001 3 0?
About to crash?
Inside handler?
in wnd_callback 0x0*0008001 0 2?
Got message 0x0*0008001 1 3?
All done?
appdll initialized?
saw event_thread_exit?
saw event_thread_exit_ex?
saw event_thread_exit_user_data?
saw event_thread_exit_null_user_data?
saw event_mod_load?
saw event_mod_unload?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drx_buf-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drx_buf-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drx_buf-test.exe")
set_tests_properties(code_api|client.drx_buf-test PROPERTIES  PASS_REGULAR_EXPRESSION "^Starting drx_buf threaded test?
Ending drx_buf threaded test?
Starting drx_buf signal test?
drx_buf signal test PASS?
Ending drx_buf signal test?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drbbdup-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drbbdup-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.drbbdup-test PROPERTIES  PASS_REGULAR_EXPRESSION "^case 2?
case 1?
Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drbbdup-no-encode-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drbbdup-no-encode-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.drbbdup-no-encode-test PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drbbdup-analysis-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drbbdup-analysis-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.drbbdup-analysis-test PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drreg-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drreg-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drreg-test.exe")
set_tests_properties(code_api|client.drreg-test PROPERTIES  PASS_REGULAR_EXPRESSION "^drreg-test running?
drreg-test finished?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drreg-end-restore "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drreg-end-restore.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.drreg-end-restore PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drreg-flow "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drreg-flow.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.drreg-flow PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drreg-cross "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drreg-cross.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.drreg-cross PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drx-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drx-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drx-test.exe")
set_tests_properties(code_api|client.drx-test PROPERTIES  PASS_REGULAR_EXPRESSION "^creating child #1?
terminating child #1 by NtTerminateProcess?
event_nudge exit code 42?
event_exit?
child #1 exit code = 42?
creating child #2?
terminating child #2 by NtTerminateJobObject?
event_nudge exit code 123456?
event_exit?
child #2 exit code = 123456?
creating child #3?
terminating child #3 by closing job handle?
event_nudge exit code 0?
event_exit?
child #3 exit code = 0?
creating child #4?
terminating child #4 by closing both job handles?
event_nudge exit code 0?
event_exit?
child #4 exit code = 0?
event_exit?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drxmgr-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drxmgr-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.drxmgr-test PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
event_exit?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.low_on_memory "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-enable_reset" "-reset_at_vmm_percent_free_limit" "10" "-vm_size" "4M" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.low_on_memory.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.low_on_memory.exe")
set_tests_properties(code_api|client.low_on_memory PROPERTIES  PASS_REGULAR_EXPRESSION "^low on memory event!?
priority A?
priority B?
My total is 1800?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.tls "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.tls.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.tls.exe")
set_tests_properties(code_api|client.tls PROPERTIES  PASS_REGULAR_EXPRESSION "^in foo_t::foo_t?
in foo_t::foo_t?
in foo_t::foo_t?
sum is 14?
static TLS is 0xdeadbeef?
foo\\.val is 0xdeadbeef?
vector holds 0xdeadbeef?
in foo_t::foo_t?
sum is 14?
static TLS is 0xdeadbeef?
foo\\.val is 0xdeadbeef?
vector holds 0xdeadbeef?
static TLS is 0xdeadbef0?
foo\\.val is 0xdeadbeee?
vector holds 0xdeadbeee?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drx-scattergather "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drx-scattergather.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drx-scattergather.exe")
set_tests_properties(code_api|client.drx-scattergather PROPERTIES  PASS_REGULAR_EXPRESSION "^AVX2/AVX-512 scatter/gather checks ok?
event_exit, 0 scatter/gather instructions?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drwrap-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drwrap-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drwrap-test.exe" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drwrap-test.appdll.dll")
set_tests_properties(code_api|client.drwrap-test PROPERTIES  PASS_REGULAR_EXPRESSION "^thread\\.appdll process init?
  <pre-level0>?
in level0 42?
  <pre-level1>?
in level1 42 1111?
  <pre-makes_tailcall>?
  <pre-level2>?
in level2 1153?
  <post-level2>?
  <post-makes_tailcall>?
  <post-level1>?
level1 returned -4?
  <post-level0>?
level0 returned 42?
  <pre-skipme>?
skipme returned 7 and x=3?
  <pre-repeat#1>?
in repeatme with arg 3?
  <post-repeat#1>?
  <pre-repeat#2>?
in repeatme with arg 2?
  <post-repeat#2>?
repeatme returned 2?
replaceme returned 0 and x=6?
replaceme2 returned 1 and x=999?
replace_callsite returned 2 and x=777?
  <pre-preonly>?
in preonly?
in postonly?
  <post-postonly>?
in skipme?
in postonly?
  <pre-direct1>?
  <post-direct1>?
  <pre-direct2>?
  <pre-direct1>?
  <post-direct1>?
  <post-direct2>?
  <pre-direct1>?
in runlots 1024?
  <pre-long0>?
  <pre-long1>?
long0 A?
  <pre-long2>?
  <pre-long3>?
long1 A?
  <pre-long4>?
  <pre-long5>?
long2 A?
  <pre-long6>?
  <pre-long7>?
long3 A?
  <post-long7 abnormal>?
  <post-long6 abnormal>?
  <post-long5 abnormal>?
  <post-long4 abnormal>?
  <post-long3 abnormal>?
  <post-long2 abnormal>?
  <post-long1 abnormal>?
  <post-long0 abnormal>?
longdone?
  <pre-called_indirectly>?
  <pre-called_indirectly_subcall>?
called_indirectly_subcall 43?
  <post-called_indirectly_subcall>?
called_indirectly 42 => 44?
  <post-called_indirectly>?
  <pre-tailcall_test2>?
print_from_asm 1?
  <pre-tailcall_tail>?
print_from_asm 7?
  <post-tailcall_tail>?
  <post-tailcall_test2>?
loaded library?
thread\\.appdll process init?
  <pre-level0>?
in level0 42?
  <pre-level1>?
in level1 42 1111?
  <pre-makes_tailcall>?
  <pre-level2>?
in level2 1153?
  <post-level2>?
  <post-makes_tailcall>?
  <post-level1>?
level1 returned -4?
  <post-level0>?
level0 returned 42?
  <pre-skipme>?
skipme returned 7 and x=3?
  <pre-repeat#1>?
in repeatme with arg 3?
  <post-repeat#1>?
  <pre-repeat#2>?
in repeatme with arg 2?
  <post-repeat#2>?
repeatme returned 2?
replaceme returned 0 and x=6?
replaceme2 returned 1 and x=999?
replace_callsite returned 2 and x=777?
  <pre-preonly>?
in preonly?
in postonly?
  <post-postonly>?
in skipme?
in postonly?
  <pre-direct1>?
  <post-direct1>?
  <pre-direct2>?
  <pre-direct1>?
  <post-direct1>?
  <post-direct2>?
  <pre-direct1>?
in runlots 1024?
  <pre-long0>?
long0 A?
  <pre-long1>?
long1 A?
  <pre-long2>?
long2 A?
  <pre-long3>?
long3 A?
  <post-long3 abnormal>?
  <post-long2 abnormal>?
  <post-long1 abnormal>?
  <post-long0 abnormal>?
longdone?
  <pre-called_indirectly>?
  <pre-called_indirectly_subcall>?
called_indirectly_subcall 43?
  <post-called_indirectly_subcall>?
called_indirectly 42 => 44?
  <post-called_indirectly>?
  <pre-tailcall_test2>?
print_from_asm 1?
  <pre-tailcall_tail>?
print_from_asm 7?
  <post-tailcall_tail>?
  <post-tailcall_test2>?
loaded library?
thank you for testing the client interface?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drwrap-test-callconv "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drwrap-test-callconv.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drwrap-test-callconv.exe")
set_tests_properties(code_api|client.drwrap-test-callconv PROPERTIES  PASS_REGULAR_EXPRESSION "^Computed weight 480 for volume 48?
Changing length from 8 to 7?
Computed weight 420 for volume 42?
Calculate displacement for contact at \\[1, 2, 3\\] with velocity 4 and weight 5 on a surface having viscosity 6 and angle \\[7, 8, 9\\]?
Calculate displacement for contact at \\[9, 8, 7\\] with velocity 6 and weight 5 on a surface having viscosity 4 and angle \\[3, 2, 1\\]?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drsyms-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drsyms-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drsyms-test.exe" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drsyms-test.appdll.dll")
set_tests_properties(code_api|client.drsyms-test PROPERTIES  PASS_REGULAR_EXPRESSION "^compound arg std::nothrow_t has 0 field\\(s\\), size 1?
(compound arg `anonymous-namespace'::HasFields has 4 field\\(s\\), size 12?
  class field 0 is type 1 and size 4?
  class field 1 is type 1 and size 1?
  class field 2 is type 1 and size 2?
  class field 3 is type 6 and size 4?
compound arg `anonymous-namespace'::Foo has 1 field\\(s\\), size 1?
  class field 0 is type 3 and size 0?
    func has 1 args?
      arg 0 is type 1 and size 4?
|compound arg `anonymous-namespace'::Foo has 1 field\\(s\\), size 1?
  class field 0 is type 3 and size 0?
    func has 1 args?
      arg 0 is type 1 and size 4?
compound arg `anonymous-namespace'::HasFields has 4 field\\(s\\), size 12?
  class field 0 is type 1 and size 4?
  class field 1 is type 1 and size 1?
  class field 2 is type 1 and size 2?
  class field 3 is type 6 and size 4?
)found all overloads?
found name_outer::name_middle::name_inner::sample_class<>::nested_class<>::templated_func<>?
found name_outer::name_middle::name_inner::sample_class<>::nested_class<>::templated_func<>?
found name_outer::name_middle::name_inner::sample_class<>::nested_class<>::templated_func<>?
found name_outer::name_middle::name_inner::sample_class<>::nested_class<>::templated_func<>?
found name_outer::name_middle::name_inner::sample_class<>::nested_class<>::templated_func<>?
found name_outer::name_middle::name_inner::sample_class<>::nested_class<>::templated_func<>?
found name_outer::name_middle::name_inner::sample_class<char>::nested_class<int>::templated_func<int>?
found name_outer::name_middle::name_inner::sample_class<char>::nested_class<int>::templated_func<int>?
found name_outer::name_middle::name_inner::sample_class<char>::nested_class<int>::templated_func<int>?
found name_outer::name_middle::name_inner::sample_class<char>::nested_class<int>::templated_func<int>?
drsym_get_type_by_name successfully found HasFields type?
Failed to unmangle _ZN10linked_ptrIN12CrxInstaller14WhitelistEntryEE4copyIS1_EEvPKS_IT_E?
got correct overflow?
Failed to unmangle std::operator<<<<<std::char_traits<char, truncated?
got correct overflow?
finished unmangling.?
enumerating with DRSYM_LEAVE_MANGLED?
enumerating with DRSYM_DEMANGLE?
enumerating with DRSYM_DEMANGLE_FULL?
found drsyms-test.appdll.cpp?
found tools.h?
stack trace:?
drsyms-test\\.appdll\\.cpp:60!dll_public?
drsyms-test\\.appdll\\.cpp:67!dll_static?
drsyms-test\\.appdll\\.cpp:73!dll_export?
drsyms-test\\.cpp:77!.anonymous namespace.::Foo::Bar?
drsyms-test\\.cpp:84!exe_export?
drsyms-test\\.cpp:90!exe_public?
drsyms-test\\.cpp:96!exe_static?
drsyms-test\\.cpp:214!main?
overloaded: 1?
overloaded: 2?
overloaded: 4?
app num_calls: 7?
got back 4?
got back 4?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drsyms-testgcc "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-stack_size" "36K" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drsyms-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drsyms-testgcc.exe" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drsyms-testgcc.appdll.dll")
set_tests_properties(code_api|client.drsyms-testgcc PROPERTIES  PASS_REGULAR_EXPRESSION "^Failed to unmangle _ZN10linked_ptrIN12CrxInstaller14WhitelistEntryEE4copyIS1_EEvPKS_IT_E?
got correct overflow?
Failed to unmangle std::operator<<<<<std::char_traits<char, truncated?
got correct overflow?
finished unmangling.?
enumerating with DRSYM_LEAVE_MANGLED?
enumerating with DRSYM_DEMANGLE?
enumerating with DRSYM_DEMANGLE_FULL?
found drsyms-test.appdll.cpp?
stack trace:?
drsyms-test\\.appdll\\.cpp:60!dll_public(\\(\\))??
drsyms-test\\.appdll\\.cpp:67!dll_static(\\(\\))??
drsyms-test\\.appdll\\.cpp:73!dll_export?
drsyms-test\\.cpp:7.!.anonymous namespace.::Foo::Bar(\\(\\))??
drsyms-test\\.cpp:8.!exe_export?
drsyms-test\\.cpp:8.!exe_public(\\(\\))??
drsyms-test\\.cpp:9.!exe_static(\\(\\))??
drsyms-test\\.cpp:1..!main?
overloaded: 1?
overloaded: 2?
overloaded: 4?
app num_calls: 7?
got back 4?
got back 4?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drutil-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drutil-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drutil-test.exe")
set_tests_properties(code_api|client.drutil-test PROPERTIES  PASS_REGULAR_EXPRESSION "^About to create thread?
in wnd_callback 0x0*0000024 0?
in wnd_callback 0x0*0000081 0?
in wnd_callback 0x0*0000083 0?
in wnd_callback 0x0*0000001 0?
in wnd_callback 0x0*0008001 3 0?
About to crash?
Inside handler?
in wnd_callback 0x0*0008001 0 2?
Got message 0x0*0008001 1 3?
All done?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drmodtrack-test "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drmodtrack-test.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.drmodtrack-test PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.pcache "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-persist" "-no_use_persisted" "-no_coarse_disk_merge" "-no_coarse_lone_merge" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.pcache.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.pcache.exe")
set_tests_properties(code_api|client.pcache PROPERTIES  PASS_REGULAR_EXPRESSION "^thank you for testing the client interface?
Estimation of pi is 3\\.142425985001098?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.pcache-use "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-persist" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.pcache.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.pcache.exe")
set_tests_properties(code_api|client.pcache-use PROPERTIES  DEPENDS "code_api|client.pcache" PASS_REGULAR_EXPRESSION "^thank you for testing the client interface?
Estimation of pi is 3\\.142425985001098?
successfully resurrected at least one pcache?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.fcache_shift "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-thread_private" "-cache_bb_unit_init" "4K" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.fcache_shift.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.fcache_shift.exe")
set_tests_properties(code_api|client.fcache_shift PROPERTIES  PASS_REGULAR_EXPRESSION "^app start?
app end?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.reachability "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.reachability.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|client.reachability PROPERTIES  PASS_REGULAR_EXPRESSION "^inside clean call arg=42?
Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.nudge_ex "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.nudge_ex.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.nudge_ex.exe")
set_tests_properties(code_api|client.nudge_ex PROPERTIES  PASS_REGULAR_EXPRESSION "^thank you for testing the client interface?
nudge delivered 101?
self?
thank you for testing the client interface?
nudge delivered 101?
self?
nudge delivered 102?
printing?
nudge delivered 103?
terminating?
client exiting?
child has exited with status 42?
app exiting?
client exiting?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.retaddr "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.retaddr.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.retaddr.exe")
set_tests_properties(code_api|client.retaddr PROPERTIES  PASS_REGULAR_EXPRESSION "^thank you for testing the client interface?
in callee?
retaddr 0x0?
retaddr 0x0?
retaddr 0x0?
All done?
instrumentation for return ok?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.translate_sandbox "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.translate_sandbox.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.translate_sandbox.exe")
set_tests_properties(code_api|client.translate_sandbox PROPERTIES  PASS_REGULAR_EXPRESSION "^start of test, count = 0?
access violation exception?
end of test, count = 3?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.destructor "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.destructor.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.destructor.exe")
set_tests_properties(code_api|client.destructor PROPERTIES  PASS_REGULAR_EXPRESSION "^hasdtr::hasdtr?
all done?
hasdtr::~hasdtr?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcov.fib "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe@-s@90@-quiet@-debug@-use_dll@E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll@-exit0@-stderr_mask@0xC@-msgbox_mask@0@-dumpcore_mask@0x7d@-staged@-code_api@-c@E:/svn/PowerResearch/dynamorio-master-x86/clients/lib32/debug/drcov.dll@--@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.fib.exe" "-D" "postcmd=E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/drcov2lcov.exe" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/tool.drcov.fib.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/clients/drcov/runtest.cmake")
set_tests_properties(code_api|tool.drcov.fib PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.simple "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_simple" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.drcachesim.simple PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
---- <application exited with code 0> ----?
Cache simulation results:?
Core #0 \\(1 thread\\(s\\)\\)?
  L1I stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*    Miss rate:                        [0-1][,\\.]..%?
  L1D stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Miss rate:                        [0-9][,\\.]..%?
Core #1 \\(0 thread\\(s\\)\\)?
Core #2 \\(0 thread\\(s\\)\\)?
Core #3 \\(0 thread\\(s\\)\\)?
LL stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Local miss rate:        *[0-9,.]*%?
    Child hits:                   *[0-9,\\.]*?
    Total miss rate:                  [0-3][,\\.]..%?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.simple-config-file "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_simple-config-file" "-config_file" "E:/svn/PowerResearch/dynamorio-master-x86/clients/drcachesim/tests/cores-1-levels-3-no-missfile.conf" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.drcachesim.simple-config-file PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
---- <application exited with code 0> ----?
Cache simulation results:?
Core #0 \\(1 thread\\(s\\)\\)?
  L1I stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *[0-9,\\.]*?
.*    Miss rate:                        [0-9][,\\.]..%?
  L1D stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *[0-9,\\.]*?
.*   Miss rate:                        [0-9][,\\.]..%?
L2 stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *[0-9,\\.]*?
.*   Local miss rate:        *[0-9,.]*%?
    Child hits:                   *[0-9,\\.]*?
    Total miss rate:                  [0-3][,\\.]..%?
LLC stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Local miss rate:         *[0-9,\\.]*%?
    Child hits:                   *[0-9,\\.]*?
    Total miss rate:          *[0-9,\\.]*%?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.TLB-simple "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_TLB-simple" "-simulator_type" "TLB" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.drcachesim.TLB-simple PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
---- <application exited with code 0> ----?
TLB simulation results:?
Core #0 \\(1 thread\\(s\\)\\)?
  L1I stats:?
    Hits:                      *[0-9,\\.]*?
    Misses:                    *[0-9,\\.]*?
    Invalidations:             *0?
    Miss rate:                        [0-3][,\\.]..%?
  L1D stats:?
    Hits:                      *[0-9,\\.]*?
    Misses:                    *[0-9,\\.]*?
    Invalidations:             *0?
    Miss rate:                 *[0-9]*[,\\.]..%?
  LL stats:?
    Hits:                      *[0-9,\\.]*?
    Misses:                           *[0-9]..??
    Invalidations:             *0?
    Local miss rate:        *[0-9,.]*%?
    Child hits:                *[0-9,\\.]*?
    Total miss rate:                  0[,\\.]..%?
Core #1 \\(0 thread\\(s\\)\\)?
Core #2 \\(0 thread\\(s\\)\\)?
Core #3 \\(0 thread\\(s\\)\\)?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.missfile "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_missfile" "-LL_miss_file" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/drtestmf.gz" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.drcachesim.missfile PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
---- <application exited with code 0> ----?
Cache simulation results:?
Core #0 \\(1 thread\\(s\\)\\)?
  L1I stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*    Miss rate:                        [0-1][,\\.]..%?
  L1D stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Miss rate:                        [0-9][,\\.]..%?
Core #1 \\(0 thread\\(s\\)\\)?
Core #2 \\(0 thread\\(s\\)\\)?
Core #3 \\(0 thread\\(s\\)\\)?
LL stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Local miss rate:        *[0-9,.]*%?
    Child hits:                   *[0-9,\\.]*?
    Total miss rate:                  [0-3][,\\.]..%?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.missfile-config-file "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_missfile-config-file" "-config_file" "E:/svn/PowerResearch/dynamorio-master-x86/clients/drcachesim/tests/cores-1-levels-3-with-missfile.conf" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.drcachesim.missfile-config-file PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
---- <application exited with code 0> ----?
Cache simulation results:?
Core #0 \\([0-9] traced CPU\\(s\\): #.*\\)?
  L1I stats:?
    Warmup hits:                  *[0-9,\\.]*?
    Warmup misses:                *[0-9,\\.]*?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *[0-9,\\.]*?
.*L1D stats:?
    Warmup hits:                  *[0-9,\\.]*?
    Warmup misses:                *[0-9,\\.]*?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *[0-9,\\.]*?
.*L2 stats:?
    Warmup hits:                  *[0-9,\\.]*?
    Warmup misses:                *[0-9,\\.]*?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *[0-9,\\.]*?
.*LLC stats:?
    Warmup hits:                  *[0-9,\\.]*?
    Warmup misses:                *[0-9,\\.]*?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0.*?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.filter-simple "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_filter-simple" "-L0_filter" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.drcachesim.filter-simple PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
---- <application exited with code 0> ----?
Cache simulation results:?
Core #0 \\(1 thread\\(s\\)\\)?
  L1I stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Miss rate:                   *[1-9][0-9][,\\.]..%?
  L1D stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Miss rate:                   *[1-9][0-9][,\\.]..%?
Core #1 \\(0 thread\\(s\\)\\)?
Core #2 \\(0 thread\\(s\\)\\)?
Core #3 \\(0 thread\\(s\\)\\)?
LL stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Local miss rate:        *[0-9,.]*%?
    Child hits:                   *[0-9,\\.]*?
    Total miss rate:              *[1-9][0-9][,\\.]..%?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.filter-no-i "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_filter-no-i" "-L0_filter" "-L0I_size" "0" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.drcachesim.filter-no-i PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
---- <application exited with code 0> ----?
Cache simulation results:?
Core #0 \\(1 thread\\(s\\)\\)?
  L1I stats:?
    Hits:                                0?
    Misses:                              0?
    Invalidations:                       0?
  L1D stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Miss rate:                   *[1-9][0-9][,\\.]..%?
Core #1 \\(0 thread\\(s\\)\\)?
Core #2 \\(0 thread\\(s\\)\\)?
Core #3 \\(0 thread\\(s\\)\\)?
LL stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Local miss rate:        *[0-9,.]*%?
    Child hits:                   *[0-9,\\.]*?
    Total miss rate:              *[1-9][0-9][,\\.]..%?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.filter-no-d "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_filter-no-d" "-L0_filter" "-L0D_size" "0" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.drcachesim.filter-no-d PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
---- <application exited with code 0> ----?
Cache simulation results:?
Core #0 \\(1 thread\\(s\\)\\)?
  L1I stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Miss rate:                   *[1-9][0-9][,\\.]..%?
  L1D stats:?
    Hits:                                0?
    Misses:                              0?
    Invalidations:                       0?
Core #1 \\(0 thread\\(s\\)\\)?
Core #2 \\(0 thread\\(s\\)\\)?
Core #3 \\(0 thread\\(s\\)\\)?
LL stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Local miss rate:        *[0-9,.]*%?
    Child hits:                   *[0-9,\\.]*?
    Total miss rate:              *[1-9][0-9][,\\.]..%?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.delay-simple "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_delay-simple" "-trace_after_instrs" "20000" "-exit_after_tracing" "10000" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.drcachesim.delay-simple PROPERTIES  PASS_REGULAR_EXPRESSION "^Hit delay threshold: enabling tracing.?
Exiting process after ~1.... references.?
---- <application exited with code 0> ----?
Cache simulation results:?
Core #0 \\(1 thread\\(s\\)\\)?
  L1I stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Miss rate:                   *[0-9,\\.]*%?
  L1D stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Miss rate:                   *[0-9,\\.]*%?
Core #1 \\(0 thread\\(s\\)\\)?
Core #2 \\(0 thread\\(s\\)\\)?
Core #3 \\(0 thread\\(s\\)\\)?
LL stats:?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Local miss rate:        *[0-9,.]*%?
    Child hits:                   *[0-9,\\.]*?
    Total miss rate:              *[0-9,\\.]*%?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.warmup-valid "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_warmup-valid" "-warmup_refs" "1" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.drcachesim.warmup-valid PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
---- <application exited with code 0> ----?
Cache simulation results:?
Core #0 \\(1 thread\\(s\\)\\)?
  L1I stats:?
    Warmup hits:                  *[0-9,\\.]*?
    Warmup misses:                *[0-9,\\.]*?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*    Miss rate:                        [0-1][,\\.]..%?
  L1D stats:?
    Warmup hits:                  *[0-9,\\.]*?
    Warmup misses:                *[0-9,\\.]*?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Miss rate:                        [0-9][,\\.]..%?
Core #1 \\(0 thread\\(s\\)\\)?
Core #2 \\(0 thread\\(s\\)\\)?
Core #3 \\(0 thread\\(s\\)\\)?
LL stats:?
    Warmup hits:                  *[0-9,\\.]*?
    Warmup misses:                *[0-9,\\.]*?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Local miss rate:        *[0-9,.]*%?
    Child hits:                   *[0-9,\\.]*?
    Total miss rate:                  [0-3][,\\.]..%?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.warmup-zeros "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_warmup-zeros" "-warmup_refs" "1000000000" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.drcachesim.warmup-zeros PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
---- <application exited with code 0> ----?
Cache simulation results:?
Core #0 \\(1 thread\\(s\\)\\)?
  L1I stats:?
    Warmup hits:                  *[0]*?
    Warmup misses:                *[0]*?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*    Miss rate:                        [0-1][,\\.]..%?
  L1D stats:?
    Warmup hits:                  *[0]*?
    Warmup misses:                *[0]*?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Miss rate:                        [0-9][,\\.]..%?
Core #1 \\(0 thread\\(s\\)\\)?
Core #2 \\(0 thread\\(s\\)\\)?
Core #3 \\(0 thread\\(s\\)\\)?
LL stats:?
    Warmup hits:                  *[0]*?
    Warmup misses:                *[0]*?
    Hits:                         *[0-9,\\.]*?
    Misses:                       *[0-9,\\.]*?
    Invalidations:                *0?
.*   Local miss rate:        *[0-9,.]*%?
    Child hits:                   *[0-9,\\.]*?
    Total miss rate:                  [0-3][,\\.]..%?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.threads "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "150" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_threads" "-cpu_scheduling" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.exe" "client.annotation-concurrency.appdll.dll" "A" "4" "64" "3")
set_tests_properties(code_api|tool.drcachesim.threads PROPERTIES  PASS_REGULAR_EXPRESSION "^?
    -------------------------------------------------------------------?
     Performance for solving AX=B Linear Equation using Jacobi method?
     Running on DynamoRIO?
     Client version .*?
    ...................................................................?
?
     Matrix Size :  64?
     Threads     :  4?
?
?
     Started iteration 1 of the computation...?
?
     Finished computing current solution distance in mode 0.?
     Mode changed to 0.?
?
     Started iteration 2 of the computation...?
?
     Finished computing current solution distance in mode 0.?
     Mode changed to 0.?
?
     Started iteration 3 of the computation...?
?
     Finished computing current solution distance in mode 0.?
     Mode changed to 0.?
?
?
     The Jacobi Method For AX=B .........DONE?
     Total Number Of iterations   :  3?
    ...................................................................?
---- <application exited with code 0> ----?
Cache simulation results:?
Core #0 \\([0-9] traced CPU\\(s\\): [#0-9, ]+\\)?
  L1I stats:?
    Hits:                       *[0-9,\\.]*?
    Misses:                     *[0-9,\\.]*?
    Invalidations:              *0?
.*    Miss rate:                *[0-9,\\.]*%?
  L1D stats:?
    Hits:                       *[0-9,\\.]*?
    Misses:                     *[0-9,\\.]*?
    Invalidations:              *0?
.*    Miss rate:                *[0-9,\\.]*%?
Core #1 \\([0-9] traced CPU\\(s\\).*?
Core #2 \\([0-9] traced CPU\\(s\\).*?
Core #3 \\([0-9] traced CPU\\(s\\).*?
LL stats:?
    Hits:                    *[0-9,\\.]*?
    Misses:                  *[0-9,\\.]*?
    Invalidations:           *0?
.*    Local miss rate:        *[0-9,.]*%?
    Child hits:              *[0-9,\\.]*?
    Total miss rate:                  0[\\.,]..%?
\$" TIMEOUT "150" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.threads-with-config-file "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_threads-with-config-file" "-config_file" "E:/svn/PowerResearch/dynamorio-master-x86/clients/drcachesim/tests/cores-1-levels-3-no-missfile.conf" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.exe" "client.annotation-concurrency.appdll.dll" "A" "4" "64" "3")
set_tests_properties(code_api|tool.drcachesim.threads-with-config-file PROPERTIES  PASS_REGULAR_EXPRESSION "^?
    -------------------------------------------------------------------?
     Performance for solving AX=B Linear Equation using Jacobi method?
     Running on DynamoRIO?
     Client version .*?
    ...................................................................?
?
     Matrix Size :  64?
     Threads     :  4?
?
?
     Started iteration 1 of the computation...?
?
     Finished computing current solution distance in mode 0.?
     Mode changed to 0.?
?
     Started iteration 2 of the computation...?
?
     Finished computing current solution distance in mode 0.?
     Mode changed to 0.?
?
     Started iteration 3 of the computation...?
?
     Finished computing current solution distance in mode 0.?
     Mode changed to 0.?
?
?
     The Jacobi Method For AX=B .........DONE?
     Total Number Of iterations   :  3?
    ...................................................................?
---- <application exited with code 0> ----?
Cache simulation results:?
Core #0 \\(.*\\)?
  L1I stats:?
    Hits:                       *[0-9,\\.]*?
    Misses:                     *[0-9,\\.]*?
    Invalidations:              *[0-9,\\.]*?
.*    Miss rate:                *[0-9,\\.]*%?
  L1D stats:?
    Hits:                       *[0-9,\\.]*?
    Misses:                     *[0-9,\\.]*?
    Invalidations:              *[0-9,\\.]*?
.*    Miss rate:                *[0-9,\\.]*%?
L2 stats:?
    Hits:                       *[0-9,\\.]*?
    Misses:                     *[0-9,\\.]*?
    Invalidations:              *[0-9,\\.]*?
.*    Local miss rate:        *[0-9,.]*%?
    Child hits:                 *[0-9,\\.]*?
    Total miss rate:            *[0-9,\\.]*%?
LLC stats:?
    Hits:                       *[0-9,\\.]*?
    Misses:                     *[0-9,\\.]*?
    Invalidations:                      *0?
.*    Local miss rate:        *[0-9,.]*%?
    Child hits:                 *[0-9,\\.]*?
    Total miss rate:            *[0-9,\\.]*%?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.coherence "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "150" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_coherence" "-coherence" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.exe" "client.annotation-concurrency.appdll.dll" "A" "4" "64" "3")
set_tests_properties(code_api|tool.drcachesim.coherence PROPERTIES  PASS_REGULAR_EXPRESSION "^?
    -------------------------------------------------------------------?
     Performance for solving AX=B Linear Equation using Jacobi method?
     Running on DynamoRIO?
     Client version .*?
    ...................................................................?
?
     Matrix Size :  64?
     Threads     :  4?
?
?
     Started iteration 1 of the computation...?
?
     Finished computing current solution distance in mode 0.?
     Mode changed to 0.?
?
     Started iteration 2 of the computation...?
?
     Finished computing current solution distance in mode 0.?
     Mode changed to 0.?
?
     Started iteration 3 of the computation...?
?
     Finished computing current solution distance in mode 0.?
     Mode changed to 0.?
?
?
     The Jacobi Method For AX=B .........DONE?
     Total Number Of iterations   :  3?
    ...................................................................?
---- <application exited with code 0> ----?
Cache simulation results:?
Core #0 \\(.*\\)?
  L1I stats:?
    Hits:                       *[0-9,\\.]*?
    Misses:                     *[0-9,\\.]*?
    Parent invalidations:       *[0-9,\\.]*?
    Write invalidations:        *[0-9,\\.]*?
.*    Miss rate:                *[0-9,\\.]*%?
  L1D stats:?
    Hits:                       *[0-9,\\.]*?
    Misses:                     *[0-9,\\.]*?
    Parent invalidations:       *[0-9,\\.]*?
    Write invalidations:        *[0-9,\\.]*?
.*    Miss rate:                *[0-9,\\.]*%?
Core #1 \\(.*\\).*?
Core #2 \\(.*\\).*?
Core #3 \\(.*\\).*?
LL stats:?
    Hits:                    *[0-9,\\.]*?
    Misses:                  *[0-9,\\.]*?
    Invalidations:           *0?
.*    Local miss rate:        *[0-9,.]*%?
    Child hits:              *[0-9,\\.]*?
    Total miss rate:                  0[\\.,]..%?
Coherence stats:?
    Total writes:               *[0-9,\\.]*?
    Invalidations:              *[0-9,\\.]*?
    Writebacks:                 *[0-9,\\.]*?
\$" TIMEOUT "150" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.TLB-threads "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "150" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_TLB-threads" "-simulator_type" "TLB" "-cpu_scheduling" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.annotation-concurrency.exe" "client.annotation-concurrency.appdll.dll" "A" "4" "64" "3")
set_tests_properties(code_api|tool.drcachesim.TLB-threads PROPERTIES  PASS_REGULAR_EXPRESSION "^?
    -------------------------------------------------------------------?
     Performance for solving AX=B Linear Equation using Jacobi method?
     Running on DynamoRIO?
     Client version .*?
    ...................................................................?
?
     Matrix Size :  64?
     Threads     :  4?
?
?
     Started iteration 1 of the computation...?
?
     Finished computing current solution distance in mode 0.?
     Mode changed to 0.?
?
     Started iteration 2 of the computation...?
?
     Finished computing current solution distance in mode 0.?
     Mode changed to 0.?
?
     Started iteration 3 of the computation...?
?
     Finished computing current solution distance in mode 0.?
     Mode changed to 0.?
?
?
     The Jacobi Method For AX=B .........DONE?
     Total Number Of iterations   :  3?
    ...................................................................?
---- <application exited with code 0> ----?
TLB simulation results:?
Core #0 \\([0-9] traced CPU\\(s\\): [#0-9, ]+\\)?
  L1I stats:?
    Hits:                    *[0-9,\\.]*?
    Misses:                  *[0-9,\\.]*?
    Invalidations:           *[0-9]*?
    Miss rate:               *[0-9,\\.]*%?
  L1D stats:?
    Hits:                    *[0-9,\\.]*?
    Misses:                  *[0-9,\\.]*?
    Invalidations:           *[0-9[*?
    Miss rate:               *[0-9,\\.]*%?
  LL stats:?
    Hits:                    *[0-9,\\.]*?
    Misses:                  *[0-9,\\.]*?
    Invalidations:           *[0-9]*?
    Local miss rate:        *[0-9,.]*%?
    Child hits:              *[0-9,\\.]*?
    Total miss rate:         *[0-9,\\.]*%?
Core #1 \\([0-9] traced CPU\\(s\\).*?
Core #2 \\([0-9] traced CPU\\(s\\).*?
Core #3 \\([0-9] traced CPU\\(s\\).*?
\$" TIMEOUT "150" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.histogram "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_histogram" "-simulator_type" "histogram" "-report_top" "20" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.histogram PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
---- <application exited with code 0> ----?
Cache line histogram tool results:?
icache: [0-9]+ unique cache lines?
dcache: [0-9]+ unique cache lines?
icache top 20?
.*?
dcache top 20?
.*?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.reuse_distance "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_reuse_distance" "-simulator_type" "reuse_distance" "-reuse_distance_threshold" "256" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.reuse_distance PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
---- <application exited with code 0> ----?
Reuse distance tool aggregated results:?
Total accesses: [0-9]+?
Unique accesses: [0-9]+?
Unique cache lines accessed: [0-9]+?
.*?
Reuse distance mean: [0-9\\.]+?
Reuse distance median: 1?
Reuse distance standard deviation: [0-9\\.]+?
\\(Pass -reuse_distance_histogram to see all the data\\.\\)?
.*?
Reuse distance threshold = [0-9]+ cache lines?
Top 10 frequently referenced cache lines?
.*?
Top 10 distant repeatedly referenced cache lines?
.*?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.basic_counts "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_basic_counts" "-simulator_type" "basic_counts" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.decode-bad.exe")
set_tests_properties(code_api|tool.basic_counts PROPERTIES  PASS_REGULAR_EXPRESSION "^Privileged instructions about to happen?
Privileged instruction, instance 1?
Privileged instruction, instance 2?
Privileged instruction, instance 3?
Privileged instruction, instance 4?
OK instr about to happen?
Bad instr about to happen?
Invalid lock sequence, instance 1?
eax=1 ebx=2 ecx=3 edx=4 edi=5 esi=6 ebp=7?
Invalid instructions about to happen?
Bad instruction, instance 1?
Bad instruction, instance 2?
Bad instruction, instance 3?
Bad instruction, instance 4?
Bad instruction, instance 5?
Bad instruction, instance 6?
Bad instruction, instance 7?
Bad instruction, instance 8?
All done?
---- <application exited with code 0> ----?
Basic counts tool results:?
Total counts:?
     .* total \\(fetched\\) instructions?
     .* total unique \\(fetched\\) instructions?
     .* total non-fetched instructions?
     .* total prefetches?
     .* total data loads?
     .* total data stores?
           1 total threads?
     .* total scheduling markers?
          26 total transfer markers?
     .* total function id markers?
     .* total function return address markers?
     .* total function argument markers?
     .* total function return value markers?
           0 total other markers?
Thread .* counts:?
     .* \\(fetched\\) instructions?
     .* unique \\(fetched\\) instructions?
     .* non-fetched instructions?
     .* prefetches?
     .* data loads?
     .* data stores?
     .* scheduling markers?
          26 transfer markers?
     .* function id markers?
     .* function return address markers?
     .* function argument markers?
     .* function return value markers?
           0 other markers?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcachesim.invariants "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcachesim" "-ipc_name" "drtestpipe_invariants" "-test_mode" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.winxfer.exe")
set_tests_properties(code_api|tool.drcachesim.invariants PROPERTIES  PASS_REGULAR_EXPRESSION "^.*?
Trace invariant checks passed?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcacheoff.simple "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=foreach@C:/Program Files/CMake/bin/cmake.exe@-E@remove_directory@tool.drcacheoff.simple.*.dir" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe@-s@90@-quiet@-debug@-use_dll@E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll@-exit0@-stderr_mask@0xC@-msgbox_mask@0@-dumpcore_mask@0x7d@-staged@-code_api@-t@drcachesim@-offline@-subdir_prefix@tool.drcacheoff.simple@-max_trace_size@1M@--@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe" "-D" "postcmd=firstglob@E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/drcachesim.exe@-indir@tool.drcacheoff.simple.*.dir" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/offline-simple.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runmulti.cmake")
set_tests_properties(code_api|tool.drcacheoff.simple PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcacheoff.filter "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=foreach@C:/Program Files/CMake/bin/cmake.exe@-E@remove_directory@tool.drcacheoff.filter.*.dir" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe@-s@90@-quiet@-debug@-use_dll@E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll@-exit0@-stderr_mask@0xC@-msgbox_mask@0@-dumpcore_mask@0x7d@-staged@-code_api@-t@drcachesim@-offline@-subdir_prefix@tool.drcacheoff.filter@-max_trace_size@1M@-L0_filter@--@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe" "-D" "postcmd=firstglob@E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/drcachesim.exe@-indir@tool.drcacheoff.filter.*.dir" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/offline-filter.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runmulti.cmake")
set_tests_properties(code_api|tool.drcacheoff.filter PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcacheoff.basic_counts "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=foreach@C:/Program Files/CMake/bin/cmake.exe@-E@remove_directory@tool.drcacheoff.basic_counts.*.dir" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe@-s@90@-quiet@-debug@-use_dll@E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll@-exit0@-stderr_mask@0xC@-msgbox_mask@0@-dumpcore_mask@0x7d@-staged@-code_api@-t@drcachesim@-offline@-subdir_prefix@tool.drcacheoff.basic_counts@--@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.decode-bad.exe" "-D" "postcmd=firstglob@E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/drcachesim.exe@-indir@tool.drcacheoff.basic_counts.*.dir@-simulator_type@basic_counts" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/offline-basic_counts.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runmulti.cmake")
set_tests_properties(code_api|tool.drcacheoff.basic_counts PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcacheoff.opcode_mix "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=foreach@C:/Program Files/CMake/bin/cmake.exe@-E@remove_directory@tool.drcacheoff.opcode_mix.*.dir" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe@-s@90@-quiet@-debug@-use_dll@E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll@-exit0@-stderr_mask@0xC@-msgbox_mask@0@-dumpcore_mask@0x7d@-staged@-code_api@-t@drcachesim@-offline@-subdir_prefix@tool.drcacheoff.opcode_mix@-max_trace_size@1M@--@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe" "-D" "postcmd=firstglob@E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/drcachesim.exe@-indir@tool.drcacheoff.opcode_mix.*.dir@-simulator_type@opcode_mix" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/offline-opcode_mix.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runmulti.cmake")
set_tests_properties(code_api|tool.drcacheoff.opcode_mix PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcacheoff.view "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=foreach@C:/Program Files/CMake/bin/cmake.exe@-E@remove_directory@tool.drcacheoff.view.*.dir" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe@-s@90@-quiet@-debug@-use_dll@E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll@-exit0@-stderr_mask@0xC@-msgbox_mask@0@-dumpcore_mask@0x7d@-staged@-code_api@-t@drcachesim@-offline@-subdir_prefix@tool.drcacheoff.view@-max_trace_size@1M@--@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe" "-D" "postcmd=firstglob@E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/drcachesim.exe@-indir@tool.drcacheoff.view.*.dir@-simulator_type@view@-sim_refs@16384" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/offline-view.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runmulti.cmake")
set_tests_properties(code_api|tool.drcacheoff.view PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcacheoff.func_view "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=foreach@C:/Program Files/CMake/bin/cmake.exe@-E@remove_directory@tool.drcacheoff.func_view.*.dir" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe@-s@90@-quiet@-debug@-use_dll@E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll@-exit0@-stderr_mask@0xC@-msgbox_mask@0@-dumpcore_mask@0x7d@-staged@-code_api@-t@drcachesim@-offline@-subdir_prefix@tool.drcacheoff.func_view@-record_function@fib|1@--@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/common.fib.exe@only_5" "-D" "postcmd=firstglob@E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/drcachesim.exe@-indir@tool.drcacheoff.func_view.*.dir@-simulator_type@func_view" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/offline-func_view.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runmulti.cmake")
set_tests_properties(code_api|tool.drcacheoff.func_view PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcacheoff.burst_static "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=foreach@C:/Program Files/CMake/bin/cmake.exe@-E@remove_directory@drmemtrace.tool.drcacheoff.burst_static.*.dir" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/tool.drcacheoff.burst_static.exe" "-D" "postcmd=firstglob@E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/drcachesim.exe@-indir@drmemtrace.tool.drcacheoff.burst_static.*.dir" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/offline-burst_static.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runmulti.cmake")
set_tests_properties(code_api|tool.drcacheoff.burst_static PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcacheoff.burst_replace "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=foreach@C:/Program Files/CMake/bin/cmake.exe@-E@remove_directory@drmemtrace.tool.drcacheoff.burst_replace.*.dir" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/tool.drcacheoff.burst_replace.exe" "-D" "postcmd=firstglob@E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/drcachesim.exe@-indir@drmemtrace.tool.drcacheoff.burst_replace.*.dir" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/offline-burst_replace.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runmulti.cmake")
set_tests_properties(code_api|tool.drcacheoff.burst_replace PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcacheoff.burst_replaceall "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=foreach@C:/Program Files/CMake/bin/cmake.exe@-E@remove_directory@drmemtrace.tool.drcacheoff.burst_replaceall.*.dir" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/tool.drcacheoff.burst_replaceall.exe" "-D" "postcmd=firstglob@E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/drcachesim.exe@-indir@drmemtrace.tool.drcacheoff.burst_replaceall.*.dir" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/offline-burst_replaceall.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runmulti.cmake")
set_tests_properties(code_api|tool.drcacheoff.burst_replaceall PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcacheoff.burst_traceopts "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=foreach@C:/Program Files/CMake/bin/cmake.exe@-E@remove_directory@drmemtrace.tool.drcacheoff.burst_traceopts.*.dir" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/tool.drcacheoff.burst_traceopts.exe" "-D" "postcmd=" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/offline-burst_traceopts.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runmulti.cmake")
set_tests_properties(code_api|tool.drcacheoff.burst_traceopts PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.histogram.offline "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=foreach@C:/Program Files/CMake/bin/cmake.exe@-E@remove_directory@tool.histogram.offline.*.dir" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe@-s@180@-quiet@-debug@-use_dll@E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll@-exit0@-stderr_mask@0xC@-msgbox_mask@0@-dumpcore_mask@0x7d@-staged@-code_api@-t@drcachesim@-offline@-subdir_prefix@tool.histogram.offline@-trace_after_instrs@5K@-exit_after_tracing@50K@--@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.winxfer.exe" "-D" "postcmd=E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/drcachesim.exe@-indir@tool.histogram.offline.*.dir" "-D" "postcmd2=E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/histogram_launcher.exe@-test_mode@-trace_dir@tool.histogram.offline.*.dir/trace" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/histogram-offline.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runmulti.cmake")
set_tests_properties(code_api|tool.histogram.offline PROPERTIES  TIMEOUT "180" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcpusim.simple "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcpusim" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/simple_app.exe")
set_tests_properties(code_api|tool.drcpusim.simple PROPERTIES  PASS_REGULAR_EXPRESSION "^Hello, world!?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcpusim.cpuid-Klamath "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcpusim" "-cpu" "Klamath" "-ignore_all_libs" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/tool.cpuid.exe")
set_tests_properties(code_api|tool.drcpusim.cpuid-Klamath PROPERTIES  PASS_REGULAR_EXPRESSION "^Running on an Intel processor?
Type = 0, family = 6, model = 3, stepping = 4?
Raw features:?
  edx = 0x0080f9ff?
  ecx = 0x00000000?
  ext_edx = 0x00000000?
  ext_ecx = 0x00000000?
  sext_ebx = 0x00000000?
Major ISA features:?
  MMX?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcpusim.cpuid-Deschutes "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcpusim" "-cpu" "Deschutes" "-ignore_all_libs" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/tool.cpuid.exe")
set_tests_properties(code_api|tool.drcpusim.cpuid-Deschutes PROPERTIES  PASS_REGULAR_EXPRESSION "^Running on an Intel processor?
Type = 0, family = 6, model = 5, stepping = 2?
Raw features:?
  edx = 0x0183f9ff?
  ecx = 0x00000000?
  ext_edx = 0x00000000?
  ext_ecx = 0x00000000?
  sext_ebx = 0x00000000?
Major ISA features:?
  MMX?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcpusim.cpuid-Pentium3 "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcpusim" "-cpu" "Pentium3" "-ignore_all_libs" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/tool.cpuid.exe")
set_tests_properties(code_api|tool.drcpusim.cpuid-Pentium3 PROPERTIES  PASS_REGULAR_EXPRESSION "^Running on an Intel processor?
Type = 0, family = 6, model = 7, stepping = 2?
Raw features:?
  edx = 0x0383f9ff?
  ecx = 0x00000000?
  ext_edx = 0x00000000?
  ext_ecx = 0x00000000?
  sext_ebx = 0x00000000?
Major ISA features:?
  MMX?
  SSE?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcpusim.cpuid-Banias "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcpusim" "-cpu" "Banias" "-ignore_all_libs" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/tool.cpuid.exe")
set_tests_properties(code_api|tool.drcpusim.cpuid-Banias PROPERTIES  PASS_REGULAR_EXPRESSION "^Running on an Intel processor?
Type = 0, family = 15, model = 2, stepping = 4?
Raw features:?
  edx = 0x2febfbff?
  ecx = 0x00000000?
  ext_edx = 0x00000000?
  ext_ecx = 0x00000000?
  sext_ebx = 0x00000000?
Major ISA features:?
  MMX?
  SSE?
  SSE2?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcpusim.cpuid-Prescott "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcpusim" "-cpu" "Prescott" "-ignore_all_libs" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/tool.cpuid.exe")
set_tests_properties(code_api|tool.drcpusim.cpuid-Prescott PROPERTIES  PASS_REGULAR_EXPRESSION "^Running on an Intel processor?
Type = 0, family = 15, model = 4, stepping = 10?
Raw features:?
  edx = 0xbfebfbff?
  ecx = 0x0000659d?
  ext_edx = 0x20100000?
  ext_ecx = 0x00000001?
  sext_ebx = 0x00000000?
Major ISA features:?
  MMX?
  SSE?
  SSE2?
  SSE3?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcpusim.cpuid-Presler "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcpusim" "-cpu" "Presler" "-ignore_all_libs" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/tool.cpuid.exe")
set_tests_properties(code_api|tool.drcpusim.cpuid-Presler PROPERTIES  PASS_REGULAR_EXPRESSION "^Running on an Intel processor?
Type = 0, family = 15, model = 4, stepping = 10?
Raw features:?
  edx = 0xbfebfbff?
  ecx = 0x0000659d?
  ext_edx = 0x20100000?
  ext_ecx = 0x00000001?
  sext_ebx = 0x00000000?
Major ISA features:?
  MMX?
  SSE?
  SSE2?
  SSE3?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcpusim.cpuid-Merom "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcpusim" "-cpu" "Merom" "-ignore_all_libs" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/tool.cpuid.exe")
set_tests_properties(code_api|tool.drcpusim.cpuid-Merom PROPERTIES  PASS_REGULAR_EXPRESSION "^Running on an Intel processor?
Type = 0, family = 6, model = 15, stepping = 11?
Raw features:?
  edx = 0xafebfbff?
  ecx = 0x0000e7fd?
  ext_edx = 0x20100000?
  ext_ecx = 0x00000001?
  sext_ebx = 0x00000000?
Major ISA features:?
  MMX?
  SSE?
  SSE2?
  SSE3?
  SSSE3?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcpusim.cpuid-Penryn "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcpusim" "-cpu" "Penryn" "-ignore_all_libs" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/tool.cpuid.exe")
set_tests_properties(code_api|tool.drcpusim.cpuid-Penryn PROPERTIES  PASS_REGULAR_EXPRESSION "^Running on an Intel processor?
Type = 0, family = 6, model = 23, stepping = 6?
Raw features:?
  edx = 0xafebfbff?
  ecx = 0x0008e7fd?
  ext_edx = 0x20100000?
  ext_ecx = 0x00000001?
  sext_ebx = 0x00000000?
Major ISA features:?
  MMX?
  SSE?
  SSE2?
  SSE3?
  SSSE3?
  SSE41?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcpusim.cpuid-Westmere "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcpusim" "-cpu" "Westmere" "-ignore_all_libs" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/tool.cpuid.exe")
set_tests_properties(code_api|tool.drcpusim.cpuid-Westmere PROPERTIES  PASS_REGULAR_EXPRESSION "^Running on an Intel processor?
Type = 0, family = 6, model = 44, stepping = 2?
Raw features:?
  edx = 0xbfebfbff?
  ecx = 0x029ae7ff?
  ext_edx = 0x2c100000?
  ext_ecx = 0x00000001?
  sext_ebx = 0x00000000?
Major ISA features:?
  MMX?
  SSE?
  SSE2?
  SSE3?
  SSSE3?
  SSE41?
  SSE42?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drcpusim.cpuid-Nehalem "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-t" "drcpusim" "-cpu" "Nehalem" "-ignore_all_libs" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/tool.cpuid.exe")
set_tests_properties(code_api|tool.drcpusim.cpuid-Nehalem PROPERTIES  PASS_REGULAR_EXPRESSION "^Running on an Intel processor?
Type = 0, family = 6, model = 26, stepping = 5?
Raw features:?
  edx = 0xbfebfbff?
  ecx = 0x0098e7fd?
  ext_edx = 0x28100000?
  ext_ecx = 0x00000001?
  sext_ebx = 0x00000000?
Major ISA features:?
  MMX?
  SSE?
  SSE2?
  SSE3?
  SSSE3?
  SSE41?
  SSE42?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1589;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|libutil.frontend_test "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/libutil.frontend_test.exe")
set_tests_properties(code_api|libutil.frontend_test PROPERTIES  PASS_REGULAR_EXPRESSION "^drfront_sym_init: success?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|client.drwrap-test-detach "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-noinject" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.drwrap-test-detach.exe")
set_tests_properties(code_api|client.drwrap-test-detach PROPERTIES  PASS_REGULAR_EXPRESSION "^in dr_client_main?
client done?
app done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|api.ir "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-noinject" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/api.ir.exe")
set_tests_properties(code_api|api.ir PROPERTIES  PASS_REGULAR_EXPRESSION "^(<Application .*api\\.ir.*AVX-512 was detected at PC 0x[0-9a-f]+. AVX-512 is not fully supported yet.>?
)?all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|api.dis "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe@-s@90@-quiet@-debug@-use_dll@E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll@-exit0@-noinject@-stderr_mask@0xC@-msgbox_mask@0@-dumpcore_mask@0x7d@-staged@-syntax_intel@-code_api@--@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/api.dis.exe@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/api/dis-udis86-randtest.raw" "-D" "postcmd=" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/dis-x86.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runcmp.cmake")
set_tests_properties(code_api|api.dis PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|api.startstop "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-noinject" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/api.startstop.exe")
set_tests_properties(code_api|api.startstop PROPERTIES  PASS_REGULAR_EXPRESSION "^all done: 10 iters?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|api.detach "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-noinject" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/api.detach.exe")
set_tests_properties(code_api|api.detach PROPERTIES  PASS_REGULAR_EXPRESSION "^all done: 150000 iters?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|api.ir-static "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/api.ir-static.exe")
set_tests_properties(code_api|api.ir-static PROPERTIES  PASS_REGULAR_EXPRESSION "^(<Application .*api\\.ir.*AVX-512 was detected at PC 0x[0-9a-f]+. AVX-512 is not fully supported yet.>?
)?all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|api.drdecode "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/api.drdecode.exe")
set_tests_properties(code_api|api.drdecode PROPERTIES  PASS_REGULAR_EXPRESSION "^ 89 41 25             mov    %eax -> 0x25\\(%ecx\\)\\[4byte\\]?
 bf 11 00 00 00       mov    \\\$0x00000011 -> %edi?
 89 41 25             mov    dword ptr \\[ecx\\+0x25\\], eax?
 bf 11 00 00 00       mov    edi, 0x00000011?
done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|decenc.drdecode_decenc_x86 "C:/Program Files/CMake/bin/cmake.exe" "-D" "precmd=" "-D" "cmd=E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe@-s@90@-quiet@-debug@-use_dll@E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll@-exit0@-noinject@-stderr_mask@0xC@-msgbox_mask@0@-dumpcore_mask@0x7d@-staged@-code_api@--@E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/decenc.drdecode_decenc_x86.exe" "-D" "postcmd=" "-D" "postcmd2=" "-D" "postcmd3=" "-D" "cmp=E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/drdecode_decenc_x86.expect" "-D" "code=" "-P" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/runcmp.cmake")
set_tests_properties(code_api|decenc.drdecode_decenc_x86 PROPERTIES  _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1412;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|api.ibl-stress "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-noinject" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-disable_traces" "-shared_bb_ibt_tables" "-checklevel" "0" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/api.ibl-stress.exe")
set_tests_properties(code_api|api.ibl-stress PROPERTIES  PASS_REGULAR_EXPRESSION "^all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|api.symtest "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-noinject" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/api.symtest.exe" "C:/MinGW/bin/libstdc++-6.dll")
set_tests_properties(code_api|api.symtest PROPERTIES  PASS_REGULAR_EXPRESSION "^Found operator new\\[\\]?
Found operator new\\[\\]?
Found operator new?
Found operator new?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|api.static_startstop "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-noinject" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/api.static_startstop.exe")
set_tests_properties(code_api|api.static_startstop PROPERTIES  PASS_REGULAR_EXPRESSION "^pre-DR init?
in dr_client_main?
pre-DR start?
pre-DR stop?
Saw some bb events?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|api.static_noclient "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-noinject" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/api.static_noclient.exe")
set_tests_properties(code_api|api.static_noclient PROPERTIES  PASS_REGULAR_EXPRESSION "^pre-DR init?
pre-DR start?
pre-DR stop?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|api.static_noinit "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-noinject" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/api.static_noinit.exe")
set_tests_properties(code_api|api.static_noinit PROPERTIES  PASS_REGULAR_EXPRESSION "^pre-DR init?
registering for DR events outside of dr_client_main?
pre-DR start?
pre-DR stop?
Saw some bb events?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|api.static_detach "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-noinject" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/api.static_detach.exe")
set_tests_properties(code_api|api.static_detach PROPERTIES  PASS_REGULAR_EXPRESSION "^pre-DR init?
in dr_client_main?
pre-DR start?
pre-DR detach?
Saw some bb events?
re-attach attempt?
in dr_client_main?
Saw some bb events?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|api.static_prepop "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-noinject" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/api.static_prepop.exe")
set_tests_properties(code_api|api.static_prepop PROPERTIES  PASS_REGULAR_EXPRESSION "^pre-DR init?
in dr_client_main?
bb asm_func?
bb asm_label1?
bb asm_label2?
bb asm_label3?
bb asm_return?
pre-DR start?
pre-DR detach?
Exit event?
pre-DR init?
in dr_client_main?
bb asm_func?
bb asm_label1?
bb asm_label2?
bb asm_label3?
bb asm_return?
pre-DR start?
pre-DR detach with stats?
Exit event?
all done?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drdisas "E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/drdisas.exe" "-syntax" "dr" "66" "90" "c4" "e2" "65" "90" "14" "80" "88")
set_tests_properties(code_api|tool.drdisas PROPERTIES  PASS_REGULAR_EXPRESSION "^ 66 90                nop?
 c4 e2 65 90 14 80    vpgatherdd \\(%eax,%ymm0,4\\)\\[4byte\\] %ymm3 -> %ymm2 %ymm3?
disassembly failed: invalid instruction: not enough bytes: 0x88?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api|tool.drdisas_syntax "E:/svn/PowerResearch/dynamorio-master-x86/clients/bin32/drdisas.exe" "66" "90" "c4" "e2" "65" "90" "14" "80")
set_tests_properties(code_api|tool.drdisas_syntax PROPERTIES  PASS_REGULAR_EXPRESSION "^ 66 90                nop?
 c4 e2 65 90 14 80    vpgatherdd ymm2, ymm3, dword ptr \\[eax\\+ymm0\\*4\\]?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1605;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4237;torun_api;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api,opt_memory|client.events "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-opt_memory" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.exe" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.appdll.dll")
set_tests_properties(code_api,opt_memory|client.events PROPERTIES  PASS_REGULAR_EXPRESSION "^appdll initialized?
exception event redirect?
Redirect success!?
exit event 2?
exit event 1?
module load event 1 is called 1 time?
module load event 2 is called 1 time?
thread init event 1 is called 1 time?
thread init event 2 is called 1 time?
bb event 1 is called 1 time?
bb event 2 is called 1 time?
end trace event 1 is called 1 time?
end trace event 2 is called 1 time?
trace event 1 is called 1 time?
trace event 2 is called 1 time?
delete event 1 is called 1 time?
delete event 2 is called 1 time?
(filter syscall event 1 is called 1 time?
)?(filter syscall event 2 is called 1 time?
)?pre syscall event 1 is called 1 time?
pre syscall event 2 is called 1 time?
post syscall event 1 is called 1 time?
post syscall event 2 is called 1 time?
kernel xfer event 1 is called 1 time?
kernel xfer event 2 is called >1 time?
module unload event 1 is called 1 time?
module unload event 2 is called 1 time?
thread exit event 1 is called 1 time?
thread exit event 2 is called 1 time?
exception event 1 is called 1 time?
exception event 2 is called 1 time?
restore state event 1 is called 1 time?
restore state event 2 is called 1 time?
restore state ex event 1 is called 1 time?
restore state ex event 2 is called 1 time?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api,opt_speed|client.events "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-opt_speed" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.exe" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.appdll.dll")
set_tests_properties(code_api,opt_speed|client.events PROPERTIES  PASS_REGULAR_EXPRESSION "^appdll initialized?
exception event redirect?
Redirect success!?
exit event 2?
exit event 1?
module load event 1 is called 1 time?
module load event 2 is called 1 time?
thread init event 1 is called 1 time?
thread init event 2 is called 1 time?
bb event 1 is called 1 time?
bb event 2 is called 1 time?
end trace event 1 is called 1 time?
end trace event 2 is called 1 time?
trace event 1 is called 1 time?
trace event 2 is called 1 time?
delete event 1 is called 1 time?
delete event 2 is called 1 time?
(filter syscall event 1 is called 1 time?
)?(filter syscall event 2 is called 1 time?
)?pre syscall event 1 is called 1 time?
pre syscall event 2 is called 1 time?
post syscall event 1 is called 1 time?
post syscall event 2 is called 1 time?
kernel xfer event 1 is called 1 time?
kernel xfer event 2 is called >1 time?
module unload event 1 is called 1 time?
module unload event 2 is called 1 time?
thread exit event 1 is called 1 time?
thread exit event 2 is called 1 time?
exception event 1 is called 1 time?
exception event 2 is called 1 time?
restore state event 1 is called 1 time?
restore state event 2 is called 1 time?
restore state ex event 1 is called 1 time?
restore state ex event 2 is called 1 time?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api,thread_private|client.events "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-thread_private" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.exe" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.appdll.dll")
set_tests_properties(code_api,thread_private|client.events PROPERTIES  PASS_REGULAR_EXPRESSION "^appdll initialized?
exception event redirect?
Redirect success!?
exit event 2?
exit event 1?
module load event 1 is called 1 time?
module load event 2 is called 1 time?
thread init event 1 is called 1 time?
thread init event 2 is called 1 time?
bb event 1 is called 1 time?
bb event 2 is called 1 time?
end trace event 1 is called 1 time?
end trace event 2 is called 1 time?
trace event 1 is called 1 time?
trace event 2 is called 1 time?
delete event 1 is called 1 time?
delete event 2 is called 1 time?
(filter syscall event 1 is called 1 time?
)?(filter syscall event 2 is called 1 time?
)?pre syscall event 1 is called 1 time?
pre syscall event 2 is called 1 time?
post syscall event 1 is called 1 time?
post syscall event 2 is called 1 time?
kernel xfer event 1 is called 1 time?
kernel xfer event 2 is called >1 time?
module unload event 1 is called 1 time?
module unload event 2 is called 1 time?
thread exit event 1 is called 1 time?
thread exit event 2 is called 1 time?
exception event 1 is called 1 time?
exception event 2 is called 1 time?
restore state event 1 is called 1 time?
restore state event 2 is called 1 time?
restore state ex event 1 is called 1 time?
restore state ex event 2 is called 1 time?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api,disable_traces|client.events "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-disable_traces" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.exe" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.appdll.dll")
set_tests_properties(code_api,disable_traces|client.events PROPERTIES  PASS_REGULAR_EXPRESSION "^appdll initialized?
exception event redirect?
Redirect success!?
exit event 2?
exit event 1?
module load event 1 is called 1 time?
module load event 2 is called 1 time?
thread init event 1 is called 1 time?
thread init event 2 is called 1 time?
bb event 1 is called 1 time?
bb event 2 is called 1 time?
delete event 1 is called 1 time?
delete event 2 is called 1 time?
(filter syscall event 1 is called 1 time?
)?(filter syscall event 2 is called 1 time?
)?pre syscall event 1 is called 1 time?
pre syscall event 2 is called 1 time?
post syscall event 1 is called 1 time?
post syscall event 2 is called 1 time?
kernel xfer event 1 is called 1 time?
kernel xfer event 2 is called >1 time?
module unload event 1 is called 1 time?
module unload event 2 is called 1 time?
thread exit event 1 is called 1 time?
thread exit event 2 is called 1 time?
exception event 1 is called 1 time?
exception event 2 is called 1 time?
restore state event 1 is called 1 time?
restore state event 2 is called 1 time?
restore state ex event 1 is called 1 time?
restore state ex event 2 is called 1 time?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
add_test(code_api,thread_private,disable_traces|client.events "E:/svn/PowerResearch/dynamorio-master-x86/bin32/drrun.exe" "-s" "90" "-quiet" "-debug" "-use_dll" "E:/svn/PowerResearch/dynamorio-master-x86/lib32/debug/dynamorio.dll" "-exit0" "-stderr_mask" "0xC" "-msgbox_mask" "0" "-dumpcore_mask" "0x7d" "-staged" "-code_api" "-thread_private" "-disable_traces" "-c" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.dll.dll" "--" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.exe" "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/bin/client.events.appdll.dll")
set_tests_properties(code_api,thread_private,disable_traces|client.events PROPERTIES  PASS_REGULAR_EXPRESSION "^appdll initialized?
exception event redirect?
Redirect success!?
exit event 2?
exit event 1?
module load event 1 is called 1 time?
module load event 2 is called 1 time?
thread init event 1 is called 1 time?
thread init event 2 is called 1 time?
bb event 1 is called 1 time?
bb event 2 is called 1 time?
delete event 1 is called 1 time?
delete event 2 is called 1 time?
(filter syscall event 1 is called 1 time?
)?(filter syscall event 2 is called 1 time?
)?pre syscall event 1 is called 1 time?
pre syscall event 2 is called 1 time?
post syscall event 1 is called 1 time?
post syscall event 2 is called 1 time?
kernel xfer event 1 is called 1 time?
kernel xfer event 2 is called >1 time?
module unload event 1 is called 1 time?
module unload event 2 is called 1 time?
thread exit event 1 is called 1 time?
thread exit event 2 is called 1 time?
exception event 1 is called 1 time?
exception event 2 is called 1 time?
restore state event 1 is called 1 time?
restore state event 2 is called 1 time?
restore state ex event 1 is called 1 time?
restore state ex event 2 is called 1 time?
\$" _BACKTRACE_TRIPLES "E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1424;add_test;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;1594;torun;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;4230;torun_ci;E:/svn/PowerResearch/dynamorio-master-x86/suite/tests/CMakeLists.txt;0;")
