set moduleName dpu_func
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dpu_func}
set C_modelType { int 32768 }
set C_modelArgList {
	{ this_0 int 8192 regular {array 158 { 2 3 } 1 1 }  }
	{ p_read int 8192 regular  }
	{ p_read1 int 8192 regular  }
	{ p_read2 int 8192 regular  }
	{ p_read3 int 8192 regular  }
	{ addr1 uint 8 regular  }
	{ addr2 uint 8 regular  }
	{ addr3 uint 8 regular  }
	{ type_r uint 8 regular  }
	{ itr uint 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_0", "interface" : "memory", "bitwidth" : 8192, "direction" : "READWRITE"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "addr1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "addr2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "addr3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "type_r", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "itr", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32768} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_0_address0 sc_out sc_lv 8 signal 0 } 
	{ this_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ this_0_we0 sc_out sc_lv 1024 signal 0 } 
	{ this_0_d0 sc_out sc_lv 8192 signal 0 } 
	{ this_0_q0 sc_in sc_lv 8192 signal 0 } 
	{ p_read sc_in sc_lv 8192 signal 1 } 
	{ p_read1 sc_in sc_lv 8192 signal 2 } 
	{ p_read2 sc_in sc_lv 8192 signal 3 } 
	{ p_read3 sc_in sc_lv 8192 signal 4 } 
	{ addr1 sc_in sc_lv 8 signal 5 } 
	{ addr2 sc_in sc_lv 8 signal 6 } 
	{ addr3 sc_in sc_lv 8 signal 7 } 
	{ type_r sc_in sc_lv 8 signal 8 } 
	{ itr sc_in sc_lv 8 signal 9 } 
	{ ap_return_0 sc_out sc_lv 8192 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8192 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8192 signal -1 } 
	{ ap_return_3 sc_out sc_lv 8192 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "this_0", "role": "address0" }} , 
 	{ "name": "this_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_0", "role": "ce0" }} , 
 	{ "name": "this_0_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "this_0", "role": "we0" }} , 
 	{ "name": "this_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_0", "role": "d0" }} , 
 	{ "name": "this_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_0", "role": "q0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "addr1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "addr1", "role": "default" }} , 
 	{ "name": "addr2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "addr2", "role": "default" }} , 
 	{ "name": "addr3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "addr3", "role": "default" }} , 
 	{ "name": "type_r", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "type_r", "role": "default" }} , 
 	{ "name": "itr", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "itr", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "6", "11", "15", "19", "24", "29", "33", "37", "42", "46", "308", "312", "318", "322", "326", "331", "336", "342", "346", "350", "355", "359", "363", "368", "373"],
		"CDFG" : "dpu_func",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "7803",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_770", "Port" : "this_0", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "6", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_711", "Port" : "this_0", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "15", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_740", "Port" : "this_0", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "318", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_893", "Port" : "this_0", "Inst_start_state" : "126", "Inst_end_state" : "127"},
					{"ID" : "326", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_921", "Port" : "this_0", "Inst_start_state" : "132", "Inst_end_state" : "133"},
					{"ID" : "2", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_697", "Port" : "this_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_813", "Port" : "this_0", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "336", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952", "Port" : "this_0", "Inst_start_state" : "136", "Inst_end_state" : "137"},
					{"ID" : "312", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877", "Port" : "this_0", "Inst_start_state" : "94", "Inst_end_state" : "95"},
					{"ID" : "42", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_829", "Port" : "this_0", "Inst_start_state" : "34", "Inst_end_state" : "35"},
					{"ID" : "1", "SubInstance" : "grp_read_p2_fu_646", "Port" : "this_pMem", "Inst_start_state" : "246", "Inst_end_state" : "247"},
					{"ID" : "350", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_995", "Port" : "this_0", "Inst_start_state" : "186", "Inst_end_state" : "187"},
					{"ID" : "33", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_799", "Port" : "this_0", "Inst_start_state" : "30", "Inst_end_state" : "31"},
					{"ID" : "363", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1040", "Port" : "this_0", "Inst_start_state" : "250", "Inst_end_state" : "251"},
					{"ID" : "368", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_1056", "Port" : "this_0", "Inst_start_state" : "253", "Inst_end_state" : "254"},
					{"ID" : "331", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_936", "Port" : "this_0", "Inst_start_state" : "134", "Inst_end_state" : "135"},
					{"ID" : "346", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_981", "Port" : "this_0", "Inst_start_state" : "184", "Inst_end_state" : "185"},
					{"ID" : "355", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_1011", "Port" : "this_0", "Inst_start_state" : "194", "Inst_end_state" : "195"},
					{"ID" : "359", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1026", "Port" : "this_0", "Inst_start_state" : "248", "Inst_end_state" : "249"},
					{"ID" : "46", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845", "Port" : "this_0", "Inst_start_state" : "36", "Inst_end_state" : "37"},
					{"ID" : "11", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_726", "Port" : "this_0", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "308", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_862", "Port" : "this_0", "Inst_start_state" : "36", "Inst_end_state" : "37"},
					{"ID" : "342", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_967", "Port" : "this_0", "Inst_start_state" : "180", "Inst_end_state" : "181"},
					{"ID" : "322", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_907", "Port" : "this_0", "Inst_start_state" : "130", "Inst_end_state" : "131"},
					{"ID" : "29", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_785", "Port" : "this_0", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "19", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_754", "Port" : "this_0", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr3", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "310", "FirstState" : "ap_ST_fsm_state94", "LastState" : ["ap_ST_fsm_state135"], "QuitState" : ["ap_ST_fsm_state94"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state252"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FUNC_NTT_LOOP0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "310", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state35"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state18"], "PostState" : ["ap_ST_fsm_state252"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FUNC_INTT_LOOP0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "310", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state252"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_read_p2_fu_646", "Parent" : "0",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_697", "Parent" : "0", "Child" : ["3", "4", "5"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "call_ln350_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "3", "SubInstance" : "grp_read_intt_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_26_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_697.grp_read_intt_fu_137", "Parent" : "2",
		"CDFG" : "read_intt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_697.call_ln350_write_p3_fu_153", "Parent" : "2",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_697.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_711", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "call_ln358_write_p3_fu_167", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "9", "SubInstance" : "call_ln359_write_p4_fu_175", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "33"},
					{"ID" : "7", "SubInstance" : "grp_read_p1_fu_151", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret28", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_711.grp_read_p1_fu_151", "Parent" : "6",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_711.call_ln358_write_p3_fu_167", "Parent" : "6",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_711.call_ln359_write_p4_fu_175", "Parent" : "6",
		"CDFG" : "write_p4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_711.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_726", "Parent" : "0", "Child" : ["12", "13", "14"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "call_ln368_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "12", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret42", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_28_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_726.grp_read_p1_fu_137", "Parent" : "11",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_726.call_ln368_write_p3_fu_153", "Parent" : "11",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_726.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_740", "Parent" : "0", "Child" : ["16", "17", "18"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "17", "SubInstance" : "call_ln377_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret51", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_29_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_740.grp_read_p1_fu_137", "Parent" : "15",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_740.call_ln377_write_p4_fu_153", "Parent" : "15",
		"CDFG" : "write_p4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_740.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_754", "Parent" : "0", "Child" : ["20", "21", "22", "23"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "167", "EstimateLatencyMax" : "200",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret51", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_read_p1_fu_118", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "22", "SubInstance" : "call_ln386_write_p3_fu_141", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "21", "SubInstance" : "grp_read_p2_fu_125", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_31_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "this_1_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_754.grp_read_p1_fu_118", "Parent" : "19",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_754.grp_read_p2_fu_125", "Parent" : "19",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_754.call_ln386_write_p3_fu_141", "Parent" : "19",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_754.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_770", "Parent" : "0", "Child" : ["25", "26", "27", "28"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_read_p1_fu_151", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "26", "SubInstance" : "call_ln302_write_p3_fu_167", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "27", "SubInstance" : "call_ln303_write_p4_fu_175", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "33"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret15", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_19_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_770.grp_read_p1_fu_151", "Parent" : "24",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_770.call_ln302_write_p3_fu_167", "Parent" : "24",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_770.call_ln303_write_p4_fu_175", "Parent" : "24",
		"CDFG" : "write_p4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_770.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_785", "Parent" : "0", "Child" : ["30", "31", "32"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "31", "SubInstance" : "call_ln312_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret25", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_20_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_785.grp_read_p1_fu_137", "Parent" : "29",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_785.call_ln312_write_p3_fu_153", "Parent" : "29",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_785.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_799", "Parent" : "0", "Child" : ["34", "35", "36"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "35", "SubInstance" : "call_ln321_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret39", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_21_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_799.grp_read_p1_fu_137", "Parent" : "33",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_799.call_ln321_write_p4_fu_153", "Parent" : "33",
		"CDFG" : "write_p4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_799.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_813", "Parent" : "0", "Child" : ["38", "39", "40", "41"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "167", "EstimateLatencyMax" : "200",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret39", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_read_p1_fu_164", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "40", "SubInstance" : "call_ln330_write_p3_fu_187", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "39", "SubInstance" : "grp_read_p2_fu_171", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_813.grp_read_p1_fu_164", "Parent" : "37",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_813.grp_read_p2_fu_171", "Parent" : "37",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_813.call_ln330_write_p3_fu_187", "Parent" : "37",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_813.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_829", "Parent" : "0", "Child" : ["43", "44", "45"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_2_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_read_ntt_fu_112", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "44", "SubInstance" : "call_ln338_write_p3_fu_128", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_24_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "this_1_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_829.grp_read_ntt_fu_112", "Parent" : "42",
		"CDFG" : "read_ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_829.call_ln338_write_p3_fu_128", "Parent" : "42",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_829.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845", "Parent" : "0", "Child" : ["47", "48", "305", "306", "307"],
		"CDFG" : "dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln51", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "call_ln290_write_p3_fu_181", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "47", "SubInstance" : "grp_read_p1_fu_165", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "306", "SubInstance" : "call_ln291_write_p4_fu_189", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "33"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr3_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_POW2ROUND_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_read_p1_fu_165", "Parent" : "46",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172", "Parent" : "46", "Child" : ["49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304"],
		"CDFG" : "dpu_unit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "27", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U107", "Parent" : "48"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U108", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U109", "Parent" : "48"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U110", "Parent" : "48"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U111", "Parent" : "48"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U112", "Parent" : "48"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U113", "Parent" : "48"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U114", "Parent" : "48"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U115", "Parent" : "48"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U116", "Parent" : "48"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U117", "Parent" : "48"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U118", "Parent" : "48"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U119", "Parent" : "48"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U120", "Parent" : "48"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U121", "Parent" : "48"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U122", "Parent" : "48"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U123", "Parent" : "48"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U124", "Parent" : "48"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U125", "Parent" : "48"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U126", "Parent" : "48"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U127", "Parent" : "48"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U128", "Parent" : "48"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U129", "Parent" : "48"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U130", "Parent" : "48"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U131", "Parent" : "48"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U132", "Parent" : "48"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U133", "Parent" : "48"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U134", "Parent" : "48"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U135", "Parent" : "48"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U136", "Parent" : "48"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U137", "Parent" : "48"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U138", "Parent" : "48"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U139", "Parent" : "48"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U140", "Parent" : "48"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U141", "Parent" : "48"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U142", "Parent" : "48"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U143", "Parent" : "48"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U144", "Parent" : "48"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U145", "Parent" : "48"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U146", "Parent" : "48"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U147", "Parent" : "48"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U148", "Parent" : "48"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U149", "Parent" : "48"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U150", "Parent" : "48"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U151", "Parent" : "48"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U152", "Parent" : "48"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U153", "Parent" : "48"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U154", "Parent" : "48"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U155", "Parent" : "48"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U156", "Parent" : "48"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U157", "Parent" : "48"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U158", "Parent" : "48"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U159", "Parent" : "48"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U160", "Parent" : "48"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U161", "Parent" : "48"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U162", "Parent" : "48"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U163", "Parent" : "48"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U164", "Parent" : "48"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U165", "Parent" : "48"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U166", "Parent" : "48"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U167", "Parent" : "48"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U168", "Parent" : "48"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U169", "Parent" : "48"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U170", "Parent" : "48"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U171", "Parent" : "48"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U172", "Parent" : "48"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U173", "Parent" : "48"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U174", "Parent" : "48"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U175", "Parent" : "48"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U176", "Parent" : "48"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U177", "Parent" : "48"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U178", "Parent" : "48"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U179", "Parent" : "48"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U180", "Parent" : "48"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U181", "Parent" : "48"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U182", "Parent" : "48"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U183", "Parent" : "48"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U184", "Parent" : "48"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U185", "Parent" : "48"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U186", "Parent" : "48"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U187", "Parent" : "48"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U188", "Parent" : "48"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U189", "Parent" : "48"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U190", "Parent" : "48"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U191", "Parent" : "48"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U192", "Parent" : "48"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U193", "Parent" : "48"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U194", "Parent" : "48"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U195", "Parent" : "48"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U196", "Parent" : "48"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U197", "Parent" : "48"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U198", "Parent" : "48"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U199", "Parent" : "48"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U200", "Parent" : "48"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U201", "Parent" : "48"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U202", "Parent" : "48"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U203", "Parent" : "48"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U204", "Parent" : "48"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U205", "Parent" : "48"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U206", "Parent" : "48"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U207", "Parent" : "48"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U208", "Parent" : "48"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U209", "Parent" : "48"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U210", "Parent" : "48"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U211", "Parent" : "48"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U212", "Parent" : "48"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U213", "Parent" : "48"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U214", "Parent" : "48"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U215", "Parent" : "48"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U216", "Parent" : "48"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U217", "Parent" : "48"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U218", "Parent" : "48"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U219", "Parent" : "48"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U220", "Parent" : "48"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U221", "Parent" : "48"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U222", "Parent" : "48"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U223", "Parent" : "48"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U224", "Parent" : "48"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U225", "Parent" : "48"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U226", "Parent" : "48"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U227", "Parent" : "48"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U228", "Parent" : "48"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U229", "Parent" : "48"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U230", "Parent" : "48"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U231", "Parent" : "48"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U232", "Parent" : "48"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U233", "Parent" : "48"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U234", "Parent" : "48"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U235", "Parent" : "48"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U236", "Parent" : "48"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U237", "Parent" : "48"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U238", "Parent" : "48"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U239", "Parent" : "48"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U240", "Parent" : "48"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U241", "Parent" : "48"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U242", "Parent" : "48"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U243", "Parent" : "48"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U244", "Parent" : "48"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U245", "Parent" : "48"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U246", "Parent" : "48"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U247", "Parent" : "48"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U248", "Parent" : "48"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U249", "Parent" : "48"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U250", "Parent" : "48"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U251", "Parent" : "48"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U252", "Parent" : "48"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U253", "Parent" : "48"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U254", "Parent" : "48"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U255", "Parent" : "48"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U256", "Parent" : "48"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U257", "Parent" : "48"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U258", "Parent" : "48"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U259", "Parent" : "48"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U260", "Parent" : "48"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U261", "Parent" : "48"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U262", "Parent" : "48"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U263", "Parent" : "48"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U264", "Parent" : "48"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U265", "Parent" : "48"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U266", "Parent" : "48"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U267", "Parent" : "48"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U268", "Parent" : "48"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U269", "Parent" : "48"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U270", "Parent" : "48"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U271", "Parent" : "48"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U272", "Parent" : "48"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U273", "Parent" : "48"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U274", "Parent" : "48"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U275", "Parent" : "48"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U276", "Parent" : "48"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U277", "Parent" : "48"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U278", "Parent" : "48"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U279", "Parent" : "48"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U280", "Parent" : "48"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U281", "Parent" : "48"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U282", "Parent" : "48"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U283", "Parent" : "48"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U284", "Parent" : "48"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U285", "Parent" : "48"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U286", "Parent" : "48"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U287", "Parent" : "48"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U288", "Parent" : "48"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U289", "Parent" : "48"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U290", "Parent" : "48"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U291", "Parent" : "48"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U292", "Parent" : "48"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U293", "Parent" : "48"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U294", "Parent" : "48"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U295", "Parent" : "48"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U296", "Parent" : "48"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U297", "Parent" : "48"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U298", "Parent" : "48"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U299", "Parent" : "48"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U300", "Parent" : "48"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U301", "Parent" : "48"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U302", "Parent" : "48"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U303", "Parent" : "48"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U304", "Parent" : "48"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U305", "Parent" : "48"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U306", "Parent" : "48"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U307", "Parent" : "48"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U308", "Parent" : "48"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U309", "Parent" : "48"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U310", "Parent" : "48"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U311", "Parent" : "48"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U312", "Parent" : "48"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U313", "Parent" : "48"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U314", "Parent" : "48"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U315", "Parent" : "48"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U316", "Parent" : "48"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U317", "Parent" : "48"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U318", "Parent" : "48"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U319", "Parent" : "48"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U320", "Parent" : "48"},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U321", "Parent" : "48"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U322", "Parent" : "48"},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U323", "Parent" : "48"},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U324", "Parent" : "48"},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U325", "Parent" : "48"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U326", "Parent" : "48"},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U327", "Parent" : "48"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U328", "Parent" : "48"},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U329", "Parent" : "48"},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U330", "Parent" : "48"},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U331", "Parent" : "48"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U332", "Parent" : "48"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U333", "Parent" : "48"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U334", "Parent" : "48"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U335", "Parent" : "48"},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U336", "Parent" : "48"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U337", "Parent" : "48"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U338", "Parent" : "48"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U339", "Parent" : "48"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U340", "Parent" : "48"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U341", "Parent" : "48"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U342", "Parent" : "48"},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U343", "Parent" : "48"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U344", "Parent" : "48"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U345", "Parent" : "48"},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U346", "Parent" : "48"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U347", "Parent" : "48"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U348", "Parent" : "48"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U349", "Parent" : "48"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U350", "Parent" : "48"},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U351", "Parent" : "48"},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U352", "Parent" : "48"},
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U353", "Parent" : "48"},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U354", "Parent" : "48"},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U355", "Parent" : "48"},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U356", "Parent" : "48"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U357", "Parent" : "48"},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U358", "Parent" : "48"},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U359", "Parent" : "48"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U360", "Parent" : "48"},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U361", "Parent" : "48"},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U362", "Parent" : "48"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.call_ln290_write_p3_fu_181", "Parent" : "46",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.call_ln291_write_p4_fu_189", "Parent" : "46",
		"CDFG" : "write_p4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_862", "Parent" : "0", "Child" : ["309", "310", "311"],
		"CDFG" : "dpu_func_Pipeline_FUNC_CADDQ_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln50", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "309", "SubInstance" : "grp_read_p1_fu_145", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "310", "SubInstance" : "call_ln281_write_p3_fu_161", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_CADDQ_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_862.grp_read_p1_fu_145", "Parent" : "308",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_862.call_ln281_write_p3_fu_161", "Parent" : "308",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_862.flow_control_loop_pipe_sequential_init_U", "Parent" : "308"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877", "Parent" : "0", "Child" : ["313", "314", "315", "316", "317"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "172", "EstimateLatencyMax" : "206",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "316", "SubInstance" : "call_ln234_write_p4_fu_196", "Port" : "this_pMem", "Inst_start_state" : "35", "Inst_end_state" : "35"},
					{"ID" : "314", "SubInstance" : "grp_read_p2_fu_172", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "313", "SubInstance" : "grp_read_p1_fu_165", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "315", "SubInstance" : "call_ln233_write_p3_fu_188", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln230_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877.grp_read_p1_fu_165", "Parent" : "312",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877.grp_read_p2_fu_172", "Parent" : "312",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877.call_ln233_write_p3_fu_188", "Parent" : "312",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877.call_ln234_write_p4_fu_196", "Parent" : "312",
		"CDFG" : "write_p4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877.flow_control_loop_pipe_sequential_init_U", "Parent" : "312"},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_893", "Parent" : "0", "Child" : ["319", "320", "321"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "320", "SubInstance" : "call_ln243_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "319", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret21", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_893.grp_read_p1_fu_137", "Parent" : "318",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_893.call_ln243_write_p3_fu_153", "Parent" : "318",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_893.flow_control_loop_pipe_sequential_init_U", "Parent" : "318"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_907", "Parent" : "0", "Child" : ["323", "324", "325"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "323", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "324", "SubInstance" : "call_ln252_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret36", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_907.grp_read_p1_fu_137", "Parent" : "322",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_907.call_ln252_write_p4_fu_153", "Parent" : "322",
		"CDFG" : "write_p4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_907.flow_control_loop_pipe_sequential_init_U", "Parent" : "322"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_921", "Parent" : "0", "Child" : ["327", "328", "329", "330"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "167", "EstimateLatencyMax" : "200",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret36", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "329", "SubInstance" : "call_ln261_write_p3_fu_177", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "327", "SubInstance" : "grp_read_p1_fu_154", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "328", "SubInstance" : "grp_read_p2_fu_161", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "this_3_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_921.grp_read_p1_fu_154", "Parent" : "326",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_921.grp_read_p2_fu_161", "Parent" : "326",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_921.call_ln261_write_p3_fu_177", "Parent" : "326",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_921.flow_control_loop_pipe_sequential_init_U", "Parent" : "326"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_936", "Parent" : "0", "Child" : ["332", "333", "334", "335"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "173", "EstimateLatencyMax" : "207",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_2_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "grp_read_p1_fu_127", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "334", "SubInstance" : "call_ln271_write_p3_fu_151", "Port" : "this_pMem", "Inst_start_state" : "35", "Inst_end_state" : "35"},
					{"ID" : "333", "SubInstance" : "grp_read_p2_fu_134", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "zext_ln265", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_15_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "this_1_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_936.grp_read_p1_fu_127", "Parent" : "331",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_936.grp_read_p2_fu_134", "Parent" : "331",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_936.call_ln271_write_p3_fu_151", "Parent" : "331",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_936.flow_control_loop_pipe_sequential_init_U", "Parent" : "331"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952", "Parent" : "0", "Child" : ["337", "338", "339", "340", "341"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MONTMUL_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "172", "EstimateLatencyMax" : "206",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln48", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "call_ln193_write_p3_fu_178", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "337", "SubInstance" : "grp_read_p1_fu_155", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "340", "SubInstance" : "call_ln194_write_p4_fu_186", "Port" : "this_pMem", "Inst_start_state" : "35", "Inst_end_state" : "35"},
					{"ID" : "338", "SubInstance" : "grp_read_p2_fu_162", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952.grp_read_p1_fu_155", "Parent" : "336",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952.grp_read_p2_fu_162", "Parent" : "336",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952.call_ln193_write_p3_fu_178", "Parent" : "336",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952.call_ln194_write_p4_fu_186", "Parent" : "336",
		"CDFG" : "write_p4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952.flow_control_loop_pipe_sequential_init_U", "Parent" : "336"},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_967", "Parent" : "0", "Child" : ["343", "344", "345"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MONTMUL_LOOP2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln48", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "344", "SubInstance" : "call_ln203_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "343", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_967.grp_read_p1_fu_137", "Parent" : "342",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_967.call_ln203_write_p3_fu_153", "Parent" : "342",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_967.flow_control_loop_pipe_sequential_init_U", "Parent" : "342"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_981", "Parent" : "0", "Child" : ["347", "348", "349"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MONTMUL_LOOP3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln48", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "348", "SubInstance" : "call_ln212_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret18", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_981.grp_read_p1_fu_137", "Parent" : "346",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_981.call_ln212_write_p4_fu_153", "Parent" : "346",
		"CDFG" : "write_p4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_981.flow_control_loop_pipe_sequential_init_U", "Parent" : "346"},
	{"ID" : "350", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_995", "Parent" : "0", "Child" : ["351", "352", "353", "354"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MONTMUL_LOOP4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "167", "EstimateLatencyMax" : "200",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret18", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln48", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "352", "SubInstance" : "grp_read_p2_fu_171", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "351", "SubInstance" : "grp_read_p1_fu_164", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "353", "SubInstance" : "call_ln221_write_p3_fu_187", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "addr3_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_995.grp_read_p1_fu_164", "Parent" : "350",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_995.grp_read_p2_fu_171", "Parent" : "350",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_995.call_ln221_write_p3_fu_187", "Parent" : "350",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_995.flow_control_loop_pipe_sequential_init_U", "Parent" : "350"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_1011", "Parent" : "0", "Child" : ["356", "357", "358"],
		"CDFG" : "dpu_func_Pipeline_FUNC_RD_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_read_p1_fu_147", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "357", "SubInstance" : "call_ln164_write_p3_fu_163", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_1011.grp_read_p1_fu_147", "Parent" : "355",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_1011.call_ln164_write_p3_fu_163", "Parent" : "355",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_1011.flow_control_loop_pipe_sequential_init_U", "Parent" : "355"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1026", "Parent" : "0", "Child" : ["360", "361", "362"],
		"CDFG" : "dpu_func_Pipeline_FUNC_RD_LOOP2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "360", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "361", "SubInstance" : "call_ln173_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret7", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1026.grp_read_p1_fu_137", "Parent" : "359",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1026.call_ln173_write_p3_fu_153", "Parent" : "359",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1026.flow_control_loop_pipe_sequential_init_U", "Parent" : "359"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1040", "Parent" : "0", "Child" : ["364", "365", "366", "367"],
		"CDFG" : "dpu_func_Pipeline_FUNC_RD_LOOP3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "167", "EstimateLatencyMax" : "200",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret7", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_read_p2_fu_169", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "366", "SubInstance" : "call_ln182_write_p3_fu_185", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "364", "SubInstance" : "grp_read_p1_fu_162", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1040.grp_read_p1_fu_162", "Parent" : "363",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1040.grp_read_p2_fu_169", "Parent" : "363",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1040.call_ln182_write_p3_fu_185", "Parent" : "363",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1040.flow_control_loop_pipe_sequential_init_U", "Parent" : "363"},
	{"ID" : "368", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_1056", "Parent" : "0", "Child" : ["369", "370", "371", "372"],
		"CDFG" : "dpu_func_Pipeline_FUNC_ADD_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "167", "EstimateLatencyMax" : "200",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "370", "SubInstance" : "grp_read_p2_fu_185", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "369", "SubInstance" : "grp_read_p1_fu_178", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "371", "SubInstance" : "call_ln144_write_p3_fu_201", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr3_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_ADD_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_1056.grp_read_p1_fu_178", "Parent" : "368",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_1056.grp_read_p2_fu_185", "Parent" : "368",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_1056.call_ln144_write_p3_fu_201", "Parent" : "368",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_1056.flow_control_loop_pipe_sequential_init_U", "Parent" : "368"},
	{"ID" : "373", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638", "Parent" : "0", "Child" : ["374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629"],
		"CDFG" : "dpu_unit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "27", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U107", "Parent" : "373"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U108", "Parent" : "373"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U109", "Parent" : "373"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U110", "Parent" : "373"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U111", "Parent" : "373"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U112", "Parent" : "373"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U113", "Parent" : "373"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U114", "Parent" : "373"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U115", "Parent" : "373"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U116", "Parent" : "373"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U117", "Parent" : "373"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U118", "Parent" : "373"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U119", "Parent" : "373"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U120", "Parent" : "373"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U121", "Parent" : "373"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U122", "Parent" : "373"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U123", "Parent" : "373"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U124", "Parent" : "373"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U125", "Parent" : "373"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U126", "Parent" : "373"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U127", "Parent" : "373"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U128", "Parent" : "373"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U129", "Parent" : "373"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U130", "Parent" : "373"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U131", "Parent" : "373"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U132", "Parent" : "373"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U133", "Parent" : "373"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U134", "Parent" : "373"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U135", "Parent" : "373"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U136", "Parent" : "373"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U137", "Parent" : "373"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U138", "Parent" : "373"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U139", "Parent" : "373"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U140", "Parent" : "373"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U141", "Parent" : "373"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U142", "Parent" : "373"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U143", "Parent" : "373"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U144", "Parent" : "373"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U145", "Parent" : "373"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U146", "Parent" : "373"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U147", "Parent" : "373"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U148", "Parent" : "373"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U149", "Parent" : "373"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U150", "Parent" : "373"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U151", "Parent" : "373"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U152", "Parent" : "373"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U153", "Parent" : "373"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U154", "Parent" : "373"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U155", "Parent" : "373"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U156", "Parent" : "373"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U157", "Parent" : "373"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U158", "Parent" : "373"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U159", "Parent" : "373"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U160", "Parent" : "373"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U161", "Parent" : "373"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U162", "Parent" : "373"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U163", "Parent" : "373"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U164", "Parent" : "373"},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U165", "Parent" : "373"},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U166", "Parent" : "373"},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U167", "Parent" : "373"},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U168", "Parent" : "373"},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U169", "Parent" : "373"},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U170", "Parent" : "373"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U171", "Parent" : "373"},
	{"ID" : "439", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U172", "Parent" : "373"},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U173", "Parent" : "373"},
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U174", "Parent" : "373"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U175", "Parent" : "373"},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U176", "Parent" : "373"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U177", "Parent" : "373"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U178", "Parent" : "373"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U179", "Parent" : "373"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U180", "Parent" : "373"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U181", "Parent" : "373"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U182", "Parent" : "373"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U183", "Parent" : "373"},
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U184", "Parent" : "373"},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U185", "Parent" : "373"},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U186", "Parent" : "373"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U187", "Parent" : "373"},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U188", "Parent" : "373"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U189", "Parent" : "373"},
	{"ID" : "457", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U190", "Parent" : "373"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U191", "Parent" : "373"},
	{"ID" : "459", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U192", "Parent" : "373"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U193", "Parent" : "373"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U194", "Parent" : "373"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U195", "Parent" : "373"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U196", "Parent" : "373"},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U197", "Parent" : "373"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U198", "Parent" : "373"},
	{"ID" : "466", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U199", "Parent" : "373"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U200", "Parent" : "373"},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U201", "Parent" : "373"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U202", "Parent" : "373"},
	{"ID" : "470", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U203", "Parent" : "373"},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U204", "Parent" : "373"},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U205", "Parent" : "373"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U206", "Parent" : "373"},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U207", "Parent" : "373"},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U208", "Parent" : "373"},
	{"ID" : "476", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U209", "Parent" : "373"},
	{"ID" : "477", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U210", "Parent" : "373"},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U211", "Parent" : "373"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U212", "Parent" : "373"},
	{"ID" : "480", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U213", "Parent" : "373"},
	{"ID" : "481", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U214", "Parent" : "373"},
	{"ID" : "482", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U215", "Parent" : "373"},
	{"ID" : "483", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U216", "Parent" : "373"},
	{"ID" : "484", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U217", "Parent" : "373"},
	{"ID" : "485", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U218", "Parent" : "373"},
	{"ID" : "486", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U219", "Parent" : "373"},
	{"ID" : "487", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U220", "Parent" : "373"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U221", "Parent" : "373"},
	{"ID" : "489", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U222", "Parent" : "373"},
	{"ID" : "490", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U223", "Parent" : "373"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U224", "Parent" : "373"},
	{"ID" : "492", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U225", "Parent" : "373"},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U226", "Parent" : "373"},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U227", "Parent" : "373"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U228", "Parent" : "373"},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U229", "Parent" : "373"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U230", "Parent" : "373"},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U231", "Parent" : "373"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U232", "Parent" : "373"},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U233", "Parent" : "373"},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U234", "Parent" : "373"},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U235", "Parent" : "373"},
	{"ID" : "503", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U236", "Parent" : "373"},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U237", "Parent" : "373"},
	{"ID" : "505", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U238", "Parent" : "373"},
	{"ID" : "506", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U239", "Parent" : "373"},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U240", "Parent" : "373"},
	{"ID" : "508", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U241", "Parent" : "373"},
	{"ID" : "509", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U242", "Parent" : "373"},
	{"ID" : "510", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U243", "Parent" : "373"},
	{"ID" : "511", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U244", "Parent" : "373"},
	{"ID" : "512", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U245", "Parent" : "373"},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U246", "Parent" : "373"},
	{"ID" : "514", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U247", "Parent" : "373"},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U248", "Parent" : "373"},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U249", "Parent" : "373"},
	{"ID" : "517", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U250", "Parent" : "373"},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U251", "Parent" : "373"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U252", "Parent" : "373"},
	{"ID" : "520", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U253", "Parent" : "373"},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U254", "Parent" : "373"},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U255", "Parent" : "373"},
	{"ID" : "523", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U256", "Parent" : "373"},
	{"ID" : "524", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U257", "Parent" : "373"},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U258", "Parent" : "373"},
	{"ID" : "526", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U259", "Parent" : "373"},
	{"ID" : "527", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U260", "Parent" : "373"},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U261", "Parent" : "373"},
	{"ID" : "529", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U262", "Parent" : "373"},
	{"ID" : "530", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U263", "Parent" : "373"},
	{"ID" : "531", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U264", "Parent" : "373"},
	{"ID" : "532", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U265", "Parent" : "373"},
	{"ID" : "533", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U266", "Parent" : "373"},
	{"ID" : "534", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U267", "Parent" : "373"},
	{"ID" : "535", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U268", "Parent" : "373"},
	{"ID" : "536", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U269", "Parent" : "373"},
	{"ID" : "537", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U270", "Parent" : "373"},
	{"ID" : "538", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U271", "Parent" : "373"},
	{"ID" : "539", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U272", "Parent" : "373"},
	{"ID" : "540", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U273", "Parent" : "373"},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U274", "Parent" : "373"},
	{"ID" : "542", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U275", "Parent" : "373"},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U276", "Parent" : "373"},
	{"ID" : "544", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U277", "Parent" : "373"},
	{"ID" : "545", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U278", "Parent" : "373"},
	{"ID" : "546", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U279", "Parent" : "373"},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U280", "Parent" : "373"},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U281", "Parent" : "373"},
	{"ID" : "549", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U282", "Parent" : "373"},
	{"ID" : "550", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U283", "Parent" : "373"},
	{"ID" : "551", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U284", "Parent" : "373"},
	{"ID" : "552", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U285", "Parent" : "373"},
	{"ID" : "553", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U286", "Parent" : "373"},
	{"ID" : "554", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U287", "Parent" : "373"},
	{"ID" : "555", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U288", "Parent" : "373"},
	{"ID" : "556", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U289", "Parent" : "373"},
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U290", "Parent" : "373"},
	{"ID" : "558", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U291", "Parent" : "373"},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U292", "Parent" : "373"},
	{"ID" : "560", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U293", "Parent" : "373"},
	{"ID" : "561", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U294", "Parent" : "373"},
	{"ID" : "562", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U295", "Parent" : "373"},
	{"ID" : "563", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U296", "Parent" : "373"},
	{"ID" : "564", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U297", "Parent" : "373"},
	{"ID" : "565", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U298", "Parent" : "373"},
	{"ID" : "566", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U299", "Parent" : "373"},
	{"ID" : "567", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U300", "Parent" : "373"},
	{"ID" : "568", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U301", "Parent" : "373"},
	{"ID" : "569", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U302", "Parent" : "373"},
	{"ID" : "570", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U303", "Parent" : "373"},
	{"ID" : "571", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U304", "Parent" : "373"},
	{"ID" : "572", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U305", "Parent" : "373"},
	{"ID" : "573", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U306", "Parent" : "373"},
	{"ID" : "574", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U307", "Parent" : "373"},
	{"ID" : "575", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U308", "Parent" : "373"},
	{"ID" : "576", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U309", "Parent" : "373"},
	{"ID" : "577", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U310", "Parent" : "373"},
	{"ID" : "578", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U311", "Parent" : "373"},
	{"ID" : "579", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U312", "Parent" : "373"},
	{"ID" : "580", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U313", "Parent" : "373"},
	{"ID" : "581", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U314", "Parent" : "373"},
	{"ID" : "582", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U315", "Parent" : "373"},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U316", "Parent" : "373"},
	{"ID" : "584", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U317", "Parent" : "373"},
	{"ID" : "585", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U318", "Parent" : "373"},
	{"ID" : "586", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U319", "Parent" : "373"},
	{"ID" : "587", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U320", "Parent" : "373"},
	{"ID" : "588", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U321", "Parent" : "373"},
	{"ID" : "589", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U322", "Parent" : "373"},
	{"ID" : "590", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U323", "Parent" : "373"},
	{"ID" : "591", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U324", "Parent" : "373"},
	{"ID" : "592", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U325", "Parent" : "373"},
	{"ID" : "593", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U326", "Parent" : "373"},
	{"ID" : "594", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U327", "Parent" : "373"},
	{"ID" : "595", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U328", "Parent" : "373"},
	{"ID" : "596", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U329", "Parent" : "373"},
	{"ID" : "597", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U330", "Parent" : "373"},
	{"ID" : "598", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U331", "Parent" : "373"},
	{"ID" : "599", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U332", "Parent" : "373"},
	{"ID" : "600", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U333", "Parent" : "373"},
	{"ID" : "601", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U334", "Parent" : "373"},
	{"ID" : "602", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U335", "Parent" : "373"},
	{"ID" : "603", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U336", "Parent" : "373"},
	{"ID" : "604", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U337", "Parent" : "373"},
	{"ID" : "605", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U338", "Parent" : "373"},
	{"ID" : "606", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U339", "Parent" : "373"},
	{"ID" : "607", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U340", "Parent" : "373"},
	{"ID" : "608", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U341", "Parent" : "373"},
	{"ID" : "609", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U342", "Parent" : "373"},
	{"ID" : "610", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U343", "Parent" : "373"},
	{"ID" : "611", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U344", "Parent" : "373"},
	{"ID" : "612", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U345", "Parent" : "373"},
	{"ID" : "613", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U346", "Parent" : "373"},
	{"ID" : "614", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U347", "Parent" : "373"},
	{"ID" : "615", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U348", "Parent" : "373"},
	{"ID" : "616", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U349", "Parent" : "373"},
	{"ID" : "617", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U350", "Parent" : "373"},
	{"ID" : "618", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U351", "Parent" : "373"},
	{"ID" : "619", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U352", "Parent" : "373"},
	{"ID" : "620", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U353", "Parent" : "373"},
	{"ID" : "621", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U354", "Parent" : "373"},
	{"ID" : "622", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U355", "Parent" : "373"},
	{"ID" : "623", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U356", "Parent" : "373"},
	{"ID" : "624", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U357", "Parent" : "373"},
	{"ID" : "625", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U358", "Parent" : "373"},
	{"ID" : "626", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U359", "Parent" : "373"},
	{"ID" : "627", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U360", "Parent" : "373"},
	{"ID" : "628", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U361", "Parent" : "373"},
	{"ID" : "629", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U362", "Parent" : "373"}]}


set ArgLastReadFirstWriteLatency {
	dpu_func {
		this_0 {Type IO LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		addr2 {Type I LastRead 0 FirstWrite -1}
		addr3 {Type I LastRead 0 FirstWrite -1}
		type_r {Type I LastRead 0 FirstWrite -1}
		itr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP1 {
		this_3_26 {Type I LastRead 0 FirstWrite -1}
		this_4_26 {Type I LastRead 0 FirstWrite -1}
		this_1_25 {Type I LastRead 0 FirstWrite -1}
		trunc_ln53 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_27_out {Type O LastRead -1 FirstWrite 0}
		this_4_27_out {Type O LastRead -1 FirstWrite 0}
		this_1_26_out {Type O LastRead -1 FirstWrite 0}}
	read_intt {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP2 {
		this_3_27_reload {Type I LastRead 0 FirstWrite -1}
		this_4_27_reload {Type I LastRead 0 FirstWrite -1}
		this_1_26_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln53 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		call_ret28 {Type I LastRead 0 FirstWrite -1}
		this_3_28_out {Type O LastRead -1 FirstWrite 0}
		this_4_28_out {Type O LastRead -1 FirstWrite 0}
		this_1_27_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP3 {
		this_3_28_reload {Type I LastRead 0 FirstWrite -1}
		this_4_28_reload {Type I LastRead 0 FirstWrite -1}
		this_1_27_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln53 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret42 {Type I LastRead 0 FirstWrite -1}
		this_3_29_out {Type O LastRead -1 FirstWrite 0}
		this_4_29_out {Type O LastRead -1 FirstWrite 0}
		this_1_28_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP4 {
		this_3_29_reload {Type I LastRead 0 FirstWrite -1}
		this_4_29_reload {Type I LastRead 0 FirstWrite -1}
		this_1_28_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln53 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret51 {Type I LastRead 0 FirstWrite -1}
		this_3_30_out {Type O LastRead -1 FirstWrite 0}
		this_4_30_out {Type O LastRead -1 FirstWrite 0}
		this_1_29_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP5 {
		this_3_30_reload {Type I LastRead 0 FirstWrite -1}
		this_4_30_reload {Type I LastRead 0 FirstWrite -1}
		this_1_29_reload {Type I LastRead 0 FirstWrite -1}
		call_ret51 {Type I LastRead 0 FirstWrite -1}
		trunc_ln53 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_31_out {Type O LastRead -1 FirstWrite 0}
		this_4_31_out {Type IO LastRead 5 FirstWrite 0}
		this_1_30_out {Type O LastRead -1 FirstWrite 0}
		this_2_16_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP1 {
		this_3_19 {Type I LastRead 0 FirstWrite -1}
		this_4_19 {Type I LastRead 0 FirstWrite -1}
		this_1_18 {Type I LastRead 0 FirstWrite -1}
		trunc_ln52 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		call_ret15 {Type I LastRead 0 FirstWrite -1}
		this_3_20_out {Type O LastRead -1 FirstWrite 0}
		this_4_20_out {Type O LastRead -1 FirstWrite 0}
		this_1_19_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP2 {
		this_3_20_reload {Type I LastRead 0 FirstWrite -1}
		this_4_20_reload {Type I LastRead 0 FirstWrite -1}
		this_1_19_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln52 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret25 {Type I LastRead 0 FirstWrite -1}
		this_3_21_out {Type O LastRead -1 FirstWrite 0}
		this_4_21_out {Type O LastRead -1 FirstWrite 0}
		this_1_20_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP3 {
		this_3_21_reload {Type I LastRead 0 FirstWrite -1}
		this_4_21_reload {Type I LastRead 0 FirstWrite -1}
		this_1_20_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln52 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret39 {Type I LastRead 0 FirstWrite -1}
		this_3_22_out {Type O LastRead -1 FirstWrite 0}
		this_4_22_out {Type O LastRead -1 FirstWrite 0}
		this_1_21_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP4 {
		this_3_22_reload {Type I LastRead 0 FirstWrite -1}
		this_4_22_reload {Type I LastRead 0 FirstWrite -1}
		this_1_21_reload {Type I LastRead 0 FirstWrite -1}
		call_ret39 {Type I LastRead 0 FirstWrite -1}
		trunc_ln52 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_23_out {Type O LastRead -1 FirstWrite 0}
		this_4_23_out {Type O LastRead -1 FirstWrite 0}
		this_1_22_out {Type O LastRead -1 FirstWrite 0}
		this_2_11_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP5 {
		this_3_23_reload {Type I LastRead 0 FirstWrite -1}
		this_4_23_reload {Type I LastRead 0 FirstWrite -1}
		this_1_22_reload {Type I LastRead 0 FirstWrite -1}
		this_2_11_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln52 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_24_out {Type O LastRead -1 FirstWrite 0}
		this_4_24_out {Type IO LastRead 3 FirstWrite 0}
		this_1_23_out {Type O LastRead -1 FirstWrite 0}
		this_2_12_out {Type O LastRead -1 FirstWrite 0}}
	read_ntt {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		trunc_ln51 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		addr3_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_18_out {Type O LastRead -1 FirstWrite 0}
		this_4_18_out {Type O LastRead -1 FirstWrite 0}
		this_1_17_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_unit {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		type_r {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_CADDQ_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		trunc_ln50 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		this_3_17_out {Type O LastRead -1 FirstWrite 0}
		this_4_17_out {Type O LastRead -1 FirstWrite 0}
		this_1_16_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP1 {
		this_3_9 {Type I LastRead 0 FirstWrite -1}
		this_4_9 {Type I LastRead 0 FirstWrite -1}
		this_1_9 {Type I LastRead 0 FirstWrite -1}
		trunc_ln49 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		zext_ln230_2 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_10_out {Type O LastRead -1 FirstWrite 0}
		this_4_10_out {Type O LastRead -1 FirstWrite 0}
		this_1_10_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP2 {
		this_3_10_reload {Type I LastRead 0 FirstWrite -1}
		this_4_10_reload {Type I LastRead 0 FirstWrite -1}
		this_1_10_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln49 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret21 {Type I LastRead 0 FirstWrite -1}
		this_3_11_out {Type O LastRead -1 FirstWrite 0}
		this_4_11_out {Type O LastRead -1 FirstWrite 0}
		this_1_11_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP3 {
		this_3_11_reload {Type I LastRead 0 FirstWrite -1}
		this_4_11_reload {Type I LastRead 0 FirstWrite -1}
		this_1_11_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln49 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret36 {Type I LastRead 0 FirstWrite -1}
		this_3_12_out {Type O LastRead -1 FirstWrite 0}
		this_4_12_out {Type O LastRead -1 FirstWrite 0}
		this_1_12_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP4 {
		this_3_12_reload {Type I LastRead 0 FirstWrite -1}
		this_4_12_reload {Type I LastRead 0 FirstWrite -1}
		this_1_12_reload {Type I LastRead 0 FirstWrite -1}
		call_ret36 {Type I LastRead 0 FirstWrite -1}
		trunc_ln49 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		this_3_13_out {Type O LastRead -1 FirstWrite 0}
		this_4_13_out {Type O LastRead -1 FirstWrite 0}
		this_1_13_out {Type O LastRead -1 FirstWrite 0}
		this_2_7_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP5 {
		this_3_13_reload {Type I LastRead 0 FirstWrite -1}
		this_4_13_reload {Type I LastRead 0 FirstWrite -1}
		this_1_13_reload {Type I LastRead 0 FirstWrite -1}
		this_2_7_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln49 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		zext_ln265 {Type I LastRead 0 FirstWrite -1}
		this_3_15_out {Type O LastRead -1 FirstWrite 0}
		this_4_15_out {Type IO LastRead 5 FirstWrite 0}
		this_1_15_out {Type O LastRead -1 FirstWrite 0}
		this_2_9_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		trunc_ln48 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_5_out {Type O LastRead -1 FirstWrite 0}
		this_4_5_out {Type O LastRead -1 FirstWrite 0}
		this_1_5_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP2 {
		this_3_5_reload {Type I LastRead 0 FirstWrite -1}
		this_4_5_reload {Type I LastRead 0 FirstWrite -1}
		this_1_5_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln48 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret1 {Type I LastRead 0 FirstWrite -1}
		this_3_6_out {Type O LastRead -1 FirstWrite 0}
		this_4_6_out {Type O LastRead -1 FirstWrite 0}
		this_1_6_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP3 {
		this_3_6_reload {Type I LastRead 0 FirstWrite -1}
		this_4_6_reload {Type I LastRead 0 FirstWrite -1}
		this_1_6_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln48 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret18 {Type I LastRead 0 FirstWrite -1}
		this_3_7_out {Type O LastRead -1 FirstWrite 0}
		this_4_7_out {Type O LastRead -1 FirstWrite 0}
		this_1_7_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP4 {
		this_3_7_reload {Type I LastRead 0 FirstWrite -1}
		this_4_7_reload {Type I LastRead 0 FirstWrite -1}
		this_1_7_reload {Type I LastRead 0 FirstWrite -1}
		call_ret18 {Type I LastRead 0 FirstWrite -1}
		trunc_ln48 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr3_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_8_out {Type O LastRead -1 FirstWrite 0}
		this_4_8_out {Type O LastRead -1 FirstWrite 0}
		this_1_8_out {Type O LastRead -1 FirstWrite 0}
		this_2_4_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_RD_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		trunc_ln47 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		this_3_1_out {Type O LastRead -1 FirstWrite 0}
		this_4_1_out {Type O LastRead -1 FirstWrite 0}
		this_1_1_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_RD_LOOP2 {
		this_3_1_reload {Type I LastRead 0 FirstWrite -1}
		this_4_1_reload {Type I LastRead 0 FirstWrite -1}
		this_1_1_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln47 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret7 {Type I LastRead 0 FirstWrite -1}
		this_3_2_out {Type O LastRead -1 FirstWrite 0}
		this_4_2_out {Type O LastRead -1 FirstWrite 0}
		this_1_2_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_RD_LOOP3 {
		this_3_2_reload {Type I LastRead 0 FirstWrite -1}
		this_4_2_reload {Type I LastRead 0 FirstWrite -1}
		this_1_2_reload {Type I LastRead 0 FirstWrite -1}
		call_ret7 {Type I LastRead 0 FirstWrite -1}
		trunc_ln47 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_3_out {Type O LastRead -1 FirstWrite 0}
		this_4_3_out {Type O LastRead -1 FirstWrite 0}
		this_1_3_out {Type O LastRead -1 FirstWrite 0}
		this_2_1_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_ADD_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		addr3_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_0_out {Type O LastRead -1 FirstWrite 0}
		this_4_0_out {Type O LastRead -1 FirstWrite 0}
		this_1_0_out {Type O LastRead -1 FirstWrite 0}
		this_2_0_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_unit {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		type_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "7803"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "7803"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_0 { ap_memory {  { this_0_address0 mem_address 1 8 }  { this_0_ce0 mem_ce 1 1 }  { this_0_we0 mem_we 1 1024 }  { this_0_d0 mem_din 1 8192 }  { this_0_q0 mem_dout 0 8192 } } }
	p_read { ap_none {  { p_read in_data 0 8192 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8192 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 8192 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 8192 } } }
	addr1 { ap_none {  { addr1 in_data 0 8 } } }
	addr2 { ap_none {  { addr2 in_data 0 8 } } }
	addr3 { ap_none {  { addr3 in_data 0 8 } } }
	type_r { ap_none {  { type_r in_data 0 8 } } }
	itr { ap_none {  { itr in_data 0 8 } } }
}
