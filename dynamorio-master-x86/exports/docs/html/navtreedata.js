/*
@licstart  The following is the entire license notice for the
JavaScript code in this file.

Copyright (C) 1997-2019 by Dimitri van Heesch

This program is free software; you can redistribute it and/or modify
it under the terms of version 2 of the GNU General Public License as published by
the Free Software Foundation

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

@licend  The above is the entire license notice
for the JavaScript code in this file
*/
var NAVTREE =
[
  [ "DynamoRIO API", "index.html", [
    [ "The DynamoRIO API", "index.html", null ],
    [ "Code Manipulation API", "API_BT.html", [
      [ "Instruction Representation", "API_BT.html#sec_IR", [
        [ "AArch64 IR Variations", "API_BT.html#sec_IR_AArch64", null ]
      ] ],
      [ "Events", "API_BT.html#sec_events_bt", [
        [ "Transformation Versus Execution Time", "API_BT.html#sec_control_points", null ],
        [ "Basic Block Creation", "API_BT.html#sec_events_bb", null ],
        [ "Application Versus Meta Instructions", "API_BT.html#sec_Meta", null ],
        [ "Trace Creation", "API_BT.html#sec_events_trace", null ],
        [ "State Restoration", "API_BT.html#sec_events_translation", null ],
        [ "Basic Block and Trace Deletion", "API_BT.html#sec_events_del", null ],
        [ "Special System Calls", "API_BT.html#sec_events_wow64", null ]
      ] ],
      [ "Decoding and Encoding", "API_BT.html#sec_decode", [
        [ "Decoding", "API_BT.html#sec_Decoding", null ],
        [ "Instruction Generation", "API_BT.html#sec_InstrGen", null ],
        [ "Encoding", "API_BT.html#sec_Encoding", null ],
        [ "Disassembly", "API_BT.html#sec_disasm", null ],
        [ "Instruction Heap Allocation", "API_BT.html#sec_IR_heap", null ]
      ] ],
      [ "Instruction Set Modes", "API_BT.html#sec_isa", [
        [ "64-bit Versus 32-bit Instructions", "API_BT.html#sec_64bit", null ],
        [ "Thumb Mode Addresses", "API_BT.html#sec_thumb", null ]
      ] ],
      [ "Utilities", "API_BT.html#sec_IR_utils", [
        [ "Clean Calls", "API_BT.html#sec_clean_call", null ],
        [ "State Preservation", "API_BT.html#sec_state", null ],
        [ "Branch Instrumentation", "API_BT.html#sec_branch_instru", null ],
        [ "Dynamic Instrumentation", "API_BT.html#sec_adaptive", null ],
        [ "Custom Traces", "API_BT.html#sec_custom_traces", null ]
      ] ],
      [ "Register Stolen by DynamoRIO", "API_BT.html#sec_reg_stolen", null ],
      [ "State Translation", "API_BT.html#sec_translation", null ],
      [ "Conditionally Executed Instructions", "API_BT.html#sec_predication", [
        [ "IT Blocks", "API_BT.html#sec_it_blocks", null ]
      ] ],
      [ "Exclusive Monitor Instrumentation Constraints", "API_BT.html#sec_ldrex", null ],
      [ "Restartable Sequence Instrumentation Constraints", "API_BT.html#sec_rseq", null ],
      [ "Persisting Code", "API_BT.html#sec_pcache", null ],
      [ "Running a Subset of an Application", "API_BT.html#sec_startstop", null ]
    ] ],
    [ "DynamoRIO Extensions", "page_ext.html", "page_ext" ],
    [ "DynamoRIO System Details", "overview.html", "overview" ],
    [ "Deployment", "page_deploy.html", [
      [ "Windows Deployment", "page_deploy.html#win_deploy", null ],
      [ "Linux Deployment", "page_deploy.html#lin_deploy", null ],
      [ "Android Deployment", "page_deploy.html#android_deploy", null ],
      [ "Passing Options to Clients", "page_deploy.html#client_ops", null ],
      [ "Multiple Clients", "page_deploy.html#multi_client", null ],
      [ "End-User Tools", "page_deploy.html#tool_frontend", null ]
    ] ],
    [ "Usage Model for DynamoRIO", "using.html", [
      [ "Common Events", "using.html#sec_events", null ],
      [ "Common Utilities", "using.html#sec_utils", null ],
      [ "64-Bit Reachability", "using.html#sec_64bit_reach", null ],
      [ "String Encoding", "using.html#sec_utf8", null ],
      [ "Building a Client", "using.html#sec_build", null ],
      [ "DynamoRIO Extensions", "using.html#sec_extensions", null ],
      [ "Using External Libraries", "using.html#sec_extlibs", [
        [ "Avoid Alertable System Calls", "using.html#sec_alertable", null ],
        [ "DynamoRIO Library Search Paths", "using.html#sec_rpath", null ],
        [ "Deliberately Invoking Application Routines", "using.html#subsec_avoid_redir", null ],
        [ "When Private Loader is Disabled", "using.html#subsec_no_loader", null ],
        [ "C++ Clients", "using.html#subsec_cpp", null ]
      ] ],
      [ "Communication", "using.html#sec_comm", null ],
      [ "Annotations", "using.html#sec_annotations", [
        [ "Annotating an Application", "using.html#subsec_annotate_app", null ],
        [ "Instrumenting Annotations", "using.html#subsec_instr_annotations", null ],
        [ "Creating Custom Annotations", "using.html#subsec_create_annotations", null ]
      ] ],
      [ "Fine-Tuning DynamoRIO: Runtime Parameters", "using.html#sec_options", null ],
      [ "Diagnosing and Reporting Problems", "using.html#sec_debugging", [
        [ "Obtaining Help and Reporting Problems", "using.html#sec_reporting", null ],
        [ "Troubleshooting", "using.html#sec_diagnosing", null ],
        [ "Using Debuggers", "using.html#sec_using_debugger", null ]
      ] ]
    ] ],
    [ "IA-32/AMD64/ARM/AArch64 Disassembly Library", "page_standalone.html", [
      [ "Using DynamoRIO as a Standalone Library", "page_standalone.html#sec_standalone", null ],
      [ "DynamoRIO Shared Library Issues", "page_standalone.html#sec_standalone_shared", null ]
    ] ],
    [ "Licenses", "page_license.html", [
      [ "Primary DynamoRIO License: BSD", "page_license.html#sec_bsd", null ],
      [ "libelftc License", "page_license.html#sec_libelftc", null ],
      [ "Certain Extensions are instead under the LGPL 2.1 License", "page_license.html#sec_lgpl_licenses", null ],
      [ "Code coverage \\p genhtml script is under GPL 2", "page_license.html#sec_gpl_licenses", null ]
    ] ],
    [ "Release Notes for Version 8.0.0", "release_notes.html", [
      [ "Distribution Contents", "release_notes.html#sec_package", null ],
      [ "Changes Since Prior Releases", "release_notes.html#sec_changes", null ],
      [ "Limitations", "release_notes.html#sec_limits", [
        [ "Client Limitations", "release_notes.html#sec_limit_clients", null ],
        [ "Platform Limitations", "release_notes.html#sec_limit_platforms", null ],
        [ "Performance Limitations", "release_notes.html#sec_limit_perf", null ],
        [ "Deployment Limitations", "release_notes.html#sec_limit_deploy", null ]
      ] ],
      [ "Plans for Future Releases", "release_notes.html#sec_future", null ]
    ] ],
    [ "Sample Use Cases", "API_samples.html", [
      [ "List of Samples", "API_samples.html#sample_list", null ],
      [ "Discussion of Selected Samples", "API_samples.html#bt_examples", [
        [ "Instruction Counting", "API_samples.html#sec_ex1", null ],
        [ "Instruction Profiling", "API_samples.html#sec_ex2", null ],
        [ "Modifying Existing Instrumentation", "API_samples.html#sec_ex3", null ],
        [ "Optimization", "API_samples.html#sec_ex4", null ],
        [ "Custom Tracing", "API_samples.html#sec_ex5", null ],
        [ "Use of Floating Point Operation in a Client", "API_samples.html#sec_ex6", null ],
        [ "Use of Custom Client Statistics with the Windows GUI", "API_samples.html#sec_drstats", null ],
        [ "Use of Standalone API", "API_samples.html#sec_ex8", null ]
      ] ]
    ] ],
    [ "DynamoRIO-Based Tools", "page_tool.html", "page_tool" ],
    [ "API Usage Tutorial", "API_tutorial.html", "API_tutorial" ],
    [ "Deprecated List", "deprecated.html", null ],
    [ "DynamoRIO Extension Details", "modules.html", "modules" ],
    [ "Data Structures", "annotated.html", [
      [ "Data Structures", "annotated.html", "annotated_dup" ],
      [ "Class Hierarchy", "hierarchy.html", "hierarchy" ],
      [ "Data Fields", "functions.html", [
        [ "All", "functions.html", "functions_dup" ],
        [ "Functions", "functions_func.html", null ],
        [ "Variables", "functions_vars.html", "functions_vars" ]
      ] ]
    ] ],
    [ "Files", "files.html", [
      [ "File List", "files.html", "files_dup" ],
      [ "Globals", "globals.html", [
        [ "All", "globals.html", "globals_dup" ],
        [ "Functions", "globals_func.html", "globals_func" ],
        [ "Variables", "globals_vars.html", null ],
        [ "Typedefs", "globals_type.html", null ],
        [ "Enumerations", "globals_enum.html", null ],
        [ "Enumerator", "globals_eval.html", "globals_eval" ],
        [ "Macros", "globals_defs.html", "globals_defs" ]
      ] ]
    ] ],
    [ "DynamoRIO Home Page", "^http://www.dynamorio.org", null ]
  ] ]
];

var NAVTREEINDEX =
[
"API_BT.html",
"dr__defines_8h.html#a145cc4ecf7cf2041207f0382d50f9620a08debf81dc1518e3c52dcb5b6f40120a",
"dr__ir__instr_8h.html#a385c44f6fb256e5716a2302a5b940388ad4d56500271d500e241e46fdd7fdddb4",
"dr__ir__instr_8h.html#afa533378650b8a86c903410a8abe5789",
"dr__ir__macros__aarch64_8h.html#af1fd49a9899d018c12622a89dc456500",
"dr__ir__macros__arm_8h.html#a2cbcfa27ed694e9765c8c9958f2196bb",
"dr__ir__macros__arm_8h.html#a63fe9dc1c4e51338d1725cc62cf0dc4c",
"dr__ir__macros__arm_8h.html#a96cbb26b194f7fbe1ab0eefd536b2b41",
"dr__ir__macros__arm_8h.html#ac5b290a794660fa7ce8d99f2bd51b08e",
"dr__ir__macros__arm_8h.html#af7503b3c0c6eddfd2233518609f4f58d",
"dr__ir__macros__x86_8h.html#a214b1334f81b1242dd38209da78f7c8e",
"dr__ir__macros__x86_8h.html#a4657c9496b70df52f590d9b430ac36e6",
"dr__ir__macros__x86_8h.html#a6c173841b7e3ce7650d7f3bca4e8c934",
"dr__ir__macros__x86_8h.html#a91dda5ecbae1179e485685c930d3e1dd",
"dr__ir__macros__x86_8h.html#ab6ec5c8a4db648188d5f6748cecf506f",
"dr__ir__macros__x86_8h.html#adf177c3434c7d1ed441ef8c0c06c2890",
"dr__ir__opcodes__arm_8h.html#ac36f475ca5b446f4fde4c9b90bec77c8a0205dc56eaa1e1ab9f0c8f0cce750082",
"dr__ir__opcodes__arm_8h.html#ac36f475ca5b446f4fde4c9b90bec77c8a48327d3f19f39963e5900c192eca5020",
"dr__ir__opcodes__arm_8h.html#ac36f475ca5b446f4fde4c9b90bec77c8a8ba50ef83acbca6d03a2a3c41d1c6adc",
"dr__ir__opcodes__arm_8h.html#ac36f475ca5b446f4fde4c9b90bec77c8ad2e5f7130daca112069d02076780716b",
"dr__ir__opcodes__x86_8h.html#a05589fbab0657f08285ebdfe93f5ec9ea0d5137afeab0bf721143fce832b13956",
"dr__ir__opcodes__x86_8h.html#a05589fbab0657f08285ebdfe93f5ec9ea369e9327d921a85395e8828e3ced0fee",
"dr__ir__opcodes__x86_8h.html#a05589fbab0657f08285ebdfe93f5ec9ea6413d9b162702c114620b86111cbda93",
"dr__ir__opcodes__x86_8h.html#a05589fbab0657f08285ebdfe93f5ec9ea8e67fd079f29bcd2f82d0b7e01edcfb6",
"dr__ir__opcodes__x86_8h.html#a05589fbab0657f08285ebdfe93f5ec9eabdcafac99fd5848ee67bfd9a30b8e41d",
"dr__ir__opcodes__x86_8h.html#a05589fbab0657f08285ebdfe93f5ec9eaedc70a0f0830109659846d0f56cab2aa",
"dr__ir__opnd_8h.html#a16af7b253440dadd46a80a4b9fddba4da5a4e943d15f08c4ddc25fb0527b88c53",
"dr__ir__opnd_8h.html#a7fd06e4caec9a02043d179ee25a9f60ca490b34bc0a05f85577cc770755cc7bf0",
"dr__ir__utils_8h.html#a56568d24667f5d64264d0bad398727b3",
"dr__proc_8h.html#ae7083ecc492e2b0ed2a6dfb2cb6bf3e0",
"dr__tools_8h.html#ab23dff0c2d6d045cd938fc5f2c77a1ff",
"drmgr_8h.html#a5afd374b143bb438d486c60bdf7cbc4e",
"drwrap_8h.html#ab82c71baab4fe0c5f9962383818b9c92",
"page_drbbdup.html#sec_drbbdup_bb",
"struct__dr__stats__t.html",
"structtlb__simulator__knobs__t.html"
];

var SYNCONMSG = 'click to disable panel synchronisation';
var SYNCOFFMSG = 'click to enable panel synchronisation';