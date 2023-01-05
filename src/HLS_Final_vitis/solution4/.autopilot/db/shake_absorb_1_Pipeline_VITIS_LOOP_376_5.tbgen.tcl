set moduleName shake_absorb_1_Pipeline_VITIS_LOOP_376_5
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
set C_modelName {shake_absorb.1_Pipeline_VITIS_LOOP_376_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ div int 5 regular  }
	{ add_ln13_2 int 7 regular  }
	{ seedbuf int 8 regular {array 96 { 1 1 } 1 1 }  }
	{ this_s int 64 regular {array 25 { 0 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "div", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln13_2", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "seedbuf", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "this_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ div sc_in sc_lv 5 signal 0 } 
	{ add_ln13_2 sc_in sc_lv 7 signal 1 } 
	{ seedbuf_address0 sc_out sc_lv 7 signal 2 } 
	{ seedbuf_ce0 sc_out sc_logic 1 signal 2 } 
	{ seedbuf_q0 sc_in sc_lv 8 signal 2 } 
	{ seedbuf_address1 sc_out sc_lv 7 signal 2 } 
	{ seedbuf_ce1 sc_out sc_logic 1 signal 2 } 
	{ seedbuf_q1 sc_in sc_lv 8 signal 2 } 
	{ this_s_address0 sc_out sc_lv 5 signal 3 } 
	{ this_s_ce0 sc_out sc_logic 1 signal 3 } 
	{ this_s_we0 sc_out sc_logic 1 signal 3 } 
	{ this_s_d0 sc_out sc_lv 64 signal 3 } 
	{ this_s_address1 sc_out sc_lv 5 signal 3 } 
	{ this_s_ce1 sc_out sc_logic 1 signal 3 } 
	{ this_s_q1 sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "div", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "div", "role": "default" }} , 
 	{ "name": "add_ln13_2", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "add_ln13_2", "role": "default" }} , 
 	{ "name": "seedbuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "seedbuf", "role": "address0" }} , 
 	{ "name": "seedbuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seedbuf", "role": "ce0" }} , 
 	{ "name": "seedbuf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seedbuf", "role": "q0" }} , 
 	{ "name": "seedbuf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "seedbuf", "role": "address1" }} , 
 	{ "name": "seedbuf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seedbuf", "role": "ce1" }} , 
 	{ "name": "seedbuf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seedbuf", "role": "q1" }} , 
 	{ "name": "this_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "this_s", "role": "address0" }} , 
 	{ "name": "this_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_s", "role": "ce0" }} , 
 	{ "name": "this_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_s", "role": "we0" }} , 
 	{ "name": "this_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "this_s", "role": "d0" }} , 
 	{ "name": "this_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "this_s", "role": "address1" }} , 
 	{ "name": "this_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_s", "role": "ce1" }} , 
 	{ "name": "this_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "this_s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake_absorb_1_Pipeline_VITIS_LOOP_376_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "82",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "div", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln13_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_376_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	shake_absorb_1_Pipeline_VITIS_LOOP_376_5 {
		div {Type I LastRead 0 FirstWrite -1}
		add_ln13_2 {Type I LastRead 0 FirstWrite -1}
		seedbuf {Type I LastRead 4 FirstWrite -1}
		this_s {Type IO LastRead 0 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "82"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "82"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	div { ap_none {  { div in_data 0 5 } } }
	add_ln13_2 { ap_none {  { add_ln13_2 in_data 0 7 } } }
	seedbuf { ap_memory {  { seedbuf_address0 mem_address 1 7 }  { seedbuf_ce0 mem_ce 1 1 }  { seedbuf_q0 in_data 0 8 }  { seedbuf_address1 MemPortADDR2 1 7 }  { seedbuf_ce1 MemPortCE2 1 1 }  { seedbuf_q1 in_data 0 8 } } }
	this_s { ap_memory {  { this_s_address0 mem_address 1 5 }  { this_s_ce0 mem_ce 1 1 }  { this_s_we0 mem_we 1 1 }  { this_s_d0 mem_din 1 64 }  { this_s_address1 MemPortADDR2 1 5 }  { this_s_ce1 MemPortCE2 1 1 }  { this_s_q1 MemPortDOUT2 0 64 } } }
}
