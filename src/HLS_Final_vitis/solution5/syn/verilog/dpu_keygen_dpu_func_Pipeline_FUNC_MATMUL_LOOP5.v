// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dpu_keygen_dpu_func_Pipeline_FUNC_MATMUL_LOOP5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        this_p1_14,
        this_p2_8,
        this_p3_14,
        this_p4_14,
        this_pMem_address0,
        this_pMem_ce0,
        this_pMem_we0,
        this_pMem_d0,
        this_pMem_q0,
        this_pMem_address1,
        this_pMem_ce1,
        this_pMem_q1,
        idxprom_i550,
        itr_cast,
        this_p1_15_out,
        this_p1_15_out_ap_vld,
        this_p2_9_out,
        this_p2_9_out_ap_vld,
        this_p3_15_out_i,
        this_p3_15_out_o,
        this_p3_15_out_o_ap_vld,
        this_p4_15_out_i,
        this_p4_15_out_o,
        this_p4_15_out_o_ap_vld,
        grp_dpu_unit_fu_2995_p_din1,
        grp_dpu_unit_fu_2995_p_din2,
        grp_dpu_unit_fu_2995_p_din3,
        grp_dpu_unit_fu_2995_p_din4,
        grp_dpu_unit_fu_2995_p_din5,
        grp_dpu_unit_fu_2995_p_dout0_0,
        grp_dpu_unit_fu_2995_p_dout0_1,
        grp_dpu_unit_fu_2995_p_ce
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8191:0] this_p1_14;
input  [8191:0] this_p2_8;
input  [8191:0] this_p3_14;
input  [8191:0] this_p4_14;
output  [7:0] this_pMem_address0;
output   this_pMem_ce0;
output  [1023:0] this_pMem_we0;
output  [8191:0] this_pMem_d0;
input  [8191:0] this_pMem_q0;
output  [7:0] this_pMem_address1;
output   this_pMem_ce1;
input  [8191:0] this_pMem_q1;
input  [6:0] idxprom_i550;
input  [2:0] itr_cast;
output  [8191:0] this_p1_15_out;
output   this_p1_15_out_ap_vld;
output  [8191:0] this_p2_9_out;
output   this_p2_9_out_ap_vld;
input  [8191:0] this_p3_15_out_i;
output  [8191:0] this_p3_15_out_o;
output   this_p3_15_out_o_ap_vld;
input  [8191:0] this_p4_15_out_i;
output  [8191:0] this_p4_15_out_o;
output   this_p4_15_out_o_ap_vld;
output  [8191:0] grp_dpu_unit_fu_2995_p_din1;
output  [8191:0] grp_dpu_unit_fu_2995_p_din2;
output  [8191:0] grp_dpu_unit_fu_2995_p_din3;
output  [8191:0] grp_dpu_unit_fu_2995_p_din4;
output  [7:0] grp_dpu_unit_fu_2995_p_din5;
input  [8191:0] grp_dpu_unit_fu_2995_p_dout0_0;
input  [8191:0] grp_dpu_unit_fu_2995_p_dout0_1;
output   grp_dpu_unit_fu_2995_p_ce;

reg ap_idle;
reg[7:0] this_pMem_address0;
reg this_pMem_ce0;
reg[1023:0] this_pMem_we0;
reg this_pMem_ce1;
reg[8191:0] this_p1_15_out;
reg this_p1_15_out_ap_vld;
reg[8191:0] this_p2_9_out;
reg this_p2_9_out_ap_vld;
reg[8191:0] this_p3_15_out_o;
reg this_p3_15_out_o_ap_vld;
reg[8191:0] this_p4_15_out_o;
reg this_p4_15_out_o_ap_vld;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln258_fu_213_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state4;
wire    ap_block_state4_pp0_stage3_iter0;
reg   [8191:0] reg_168;
wire    ap_CS_fsm_state3;
wire    ap_block_state3_pp0_stage2_iter0;
reg   [0:0] icmp_ln258_reg_301;
reg   [0:0] icmp_ln261_reg_315;
reg   [8191:0] reg_172;
reg   [7:0] this_pMem_addr_reg_296;
wire   [2:0] i_57_fu_219_p2;
reg   [2:0] i_57_reg_305;
wire   [0:0] icmp_ln261_fu_240_p2;
reg   [8191:0] this_pMem_load_reg_319;
wire    ap_CS_fsm_state2;
wire    ap_block_state2_pp0_stage1_iter0;
reg   [8191:0] this_pMem_load_5_reg_325;
reg   [7:0] grp_dpu_unit_fu_141_type_r;
reg    grp_dpu_unit_fu_141_ap_ce;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call0;
wire    ap_block_state3_pp0_stage2_iter0_ignore_call0;
reg   [8191:0] grp_load_fu_154_p1;
wire   [63:0] idxprom_i550_cast_fu_176_p1;
wire   [63:0] idxprom_i561_fu_235_p1;
wire    ap_loop_init;
reg   [8191:0] ap_sig_allocacmp_this_p3_15_out_load_1;
reg   [2:0] i_fu_76;
reg   [2:0] ap_sig_allocacmp_i_56;
wire   [6:0] zext_ln259_fu_225_p1;
wire   [6:0] add_ln259_fu_229_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_done_reg = 1'b0;
end

dpu_keygen_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        i_fu_76 <= 3'd0;
    end else if (((icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        i_fu_76 <= i_57_reg_305;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_57_reg_305 <= i_57_fu_219_p2;
        icmp_ln258_reg_301 <= icmp_ln258_fu_213_p2;
        this_pMem_addr_reg_296[6 : 0] <= idxprom_i550_cast_fu_176_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln258_fu_213_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        icmp_ln261_reg_315 <= icmp_ln261_fu_240_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln261_reg_315 == 1'd1) & (icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln261_reg_315 == 1'd0) & (icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        reg_168 <= grp_dpu_unit_fu_2995_p_dout0_0;
        reg_172 <= grp_dpu_unit_fu_2995_p_dout0_1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        this_pMem_load_5_reg_325 <= this_pMem_q0;
        this_pMem_load_reg_319 <= this_pMem_q1;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if (((icmp_ln258_fu_213_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_56 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_56 = i_fu_76;
    end
end

always @ (*) begin
    if ((((icmp_ln261_reg_315 == 1'd1) & (icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln261_reg_315 == 1'd0) & (icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        ap_sig_allocacmp_this_p3_15_out_load_1 = reg_168;
    end else begin
        ap_sig_allocacmp_this_p3_15_out_load_1 = this_p3_15_out_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        grp_dpu_unit_fu_141_ap_ce = 1'b1;
    end else begin
        grp_dpu_unit_fu_141_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        if ((icmp_ln261_reg_315 == 1'd1)) begin
            grp_dpu_unit_fu_141_type_r = 8'd5;
        end else if ((icmp_ln261_reg_315 == 1'd0)) begin
            grp_dpu_unit_fu_141_type_r = 8'd0;
        end else begin
            grp_dpu_unit_fu_141_type_r = 'bx;
        end
    end else begin
        grp_dpu_unit_fu_141_type_r = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        grp_load_fu_154_p1 = ap_sig_allocacmp_this_p3_15_out_load_1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_load_fu_154_p1 = this_p3_15_out_i;
    end else begin
        grp_load_fu_154_p1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        this_p1_15_out = this_p1_14;
    end else if (((icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        this_p1_15_out = this_pMem_load_reg_319;
    end else begin
        this_p1_15_out = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1)))) begin
        this_p1_15_out_ap_vld = 1'b1;
    end else begin
        this_p1_15_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        this_p2_9_out = this_p2_8;
    end else if (((icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        this_p2_9_out = this_pMem_load_5_reg_325;
    end else begin
        this_p2_9_out = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1)))) begin
        this_p2_9_out_ap_vld = 1'b1;
    end else begin
        this_p2_9_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        this_p3_15_out_o = this_p3_14;
    end else if ((((icmp_ln261_reg_315 == 1'd1) & (icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln261_reg_315 == 1'd0) & (icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        this_p3_15_out_o = reg_168;
    end else begin
        this_p3_15_out_o = this_p3_15_out_i;
    end
end

always @ (*) begin
    if ((((icmp_ln261_reg_315 == 1'd1) & (icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln261_reg_315 == 1'd0) & (icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1)))) begin
        this_p3_15_out_o_ap_vld = 1'b1;
    end else begin
        this_p3_15_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        this_p4_15_out_o = this_p4_14;
    end else if ((((icmp_ln261_reg_315 == 1'd1) & (icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln261_reg_315 == 1'd0) & (icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        this_p4_15_out_o = reg_172;
    end else begin
        this_p4_15_out_o = this_p4_15_out_i;
    end
end

always @ (*) begin
    if ((((icmp_ln261_reg_315 == 1'd1) & (icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln261_reg_315 == 1'd0) & (icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1)))) begin
        this_p4_15_out_o_ap_vld = 1'b1;
    end else begin
        this_p4_15_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        this_pMem_address0 = this_pMem_addr_reg_296;
    end else if (((icmp_ln258_fu_213_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        this_pMem_address0 = idxprom_i550_cast_fu_176_p1;
    end else begin
        this_pMem_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln258_fu_213_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        this_pMem_ce0 = 1'b1;
    end else begin
        this_pMem_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        this_pMem_ce1 = 1'b1;
    end else begin
        this_pMem_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln258_reg_301 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        this_pMem_we0 = 1024'd179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137215;
    end else begin
        this_pMem_we0 = 1024'd0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln258_fu_213_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln259_fu_229_p2 = ($signed(zext_ln259_fu_225_p1) + $signed(7'd76));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0_ignore_call0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_dpu_unit_fu_2995_p_ce = grp_dpu_unit_fu_141_ap_ce;

assign grp_dpu_unit_fu_2995_p_din1 = this_pMem_q1;

assign grp_dpu_unit_fu_2995_p_din2 = this_pMem_q0;

assign grp_dpu_unit_fu_2995_p_din3 = grp_load_fu_154_p1;

assign grp_dpu_unit_fu_2995_p_din4 = this_p4_15_out_i;

assign grp_dpu_unit_fu_2995_p_din5 = grp_dpu_unit_fu_141_type_r;

assign i_57_fu_219_p2 = (ap_sig_allocacmp_i_56 + 3'd1);

assign icmp_ln258_fu_213_p2 = ((ap_sig_allocacmp_i_56 == itr_cast) ? 1'b1 : 1'b0);

assign icmp_ln261_fu_240_p2 = ((ap_sig_allocacmp_i_56 == 3'd0) ? 1'b1 : 1'b0);

assign idxprom_i550_cast_fu_176_p1 = idxprom_i550;

assign idxprom_i561_fu_235_p1 = add_ln259_fu_229_p2;

assign this_pMem_address1 = idxprom_i561_fu_235_p1;

assign this_pMem_d0 = grp_load_fu_154_p1;

assign zext_ln259_fu_225_p1 = ap_sig_allocacmp_i_56;

always @ (posedge ap_clk) begin
    this_pMem_addr_reg_296[7] <= 1'b0;
end

endmodule //dpu_keygen_dpu_func_Pipeline_FUNC_MATMUL_LOOP5