set moduleName shake_absorb_Pipeline_VITIS_LOOP_360_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {shake_absorb_Pipeline_VITIS_LOOP_360_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ select_ln13_1 int 4 regular  }
	{ zext_ln13_37 int 4 regular  }
	{ zext_ln361_1 int 4 regular  }
	{ trunc_ln342_2 int 5 regular  }
	{ this_s int 64 regular {array 25 { 0 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "select_ln13_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln13_37", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln361_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln342_2", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "this_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ select_ln13_1 sc_in sc_lv 4 signal 0 } 
	{ zext_ln13_37 sc_in sc_lv 4 signal 1 } 
	{ zext_ln361_1 sc_in sc_lv 4 signal 2 } 
	{ trunc_ln342_2 sc_in sc_lv 5 signal 3 } 
	{ this_s_address0 sc_out sc_lv 5 signal 4 } 
	{ this_s_ce0 sc_out sc_logic 1 signal 4 } 
	{ this_s_we0 sc_out sc_logic 1 signal 4 } 
	{ this_s_d0 sc_out sc_lv 64 signal 4 } 
	{ this_s_address1 sc_out sc_lv 5 signal 4 } 
	{ this_s_ce1 sc_out sc_logic 1 signal 4 } 
	{ this_s_q1 sc_in sc_lv 64 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "select_ln13_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "select_ln13_1", "role": "default" }} , 
 	{ "name": "zext_ln13_37", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln13_37", "role": "default" }} , 
 	{ "name": "zext_ln361_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln361_1", "role": "default" }} , 
 	{ "name": "trunc_ln342_2", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "trunc_ln342_2", "role": "default" }} , 
 	{ "name": "this_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "this_s", "role": "address0" }} , 
 	{ "name": "this_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_s", "role": "ce0" }} , 
 	{ "name": "this_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_s", "role": "we0" }} , 
 	{ "name": "this_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "this_s", "role": "d0" }} , 
 	{ "name": "this_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "this_s", "role": "address1" }} , 
 	{ "name": "this_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_s", "role": "ce1" }} , 
 	{ "name": "this_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "this_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_360_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln13_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln13_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln361_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln342_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_360_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	shake_absorb_Pipeline_VITIS_LOOP_360_2 {
		select_ln13_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln13_37 {Type I LastRead 0 FirstWrite -1}
		zext_ln361_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln342_2 {Type I LastRead 0 FirstWrite -1}
		this_s {Type IO LastRead 1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	select_ln13_1 { ap_none {  { select_ln13_1 in_data 0 4 } } }
	zext_ln13_37 { ap_none {  { zext_ln13_37 in_data 0 4 } } }
	zext_ln361_1 { ap_none {  { zext_ln361_1 in_data 0 4 } } }
	trunc_ln342_2 { ap_none {  { trunc_ln342_2 in_data 0 5 } } }
	this_s { ap_memory {  { this_s_address0 mem_address 1 5 }  { this_s_ce0 mem_ce 1 1 }  { this_s_we0 mem_we 1 1 }  { this_s_d0 mem_din 1 64 }  { this_s_address1 MemPortADDR2 1 5 }  { this_s_ce1 MemPortCE2 1 1 }  { this_s_q1 in_data 0 64 } } }
}
