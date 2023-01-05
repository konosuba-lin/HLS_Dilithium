// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dpu_keygen_dpu_func_Pipeline_FUNC_RD_LOOP2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        this_3_1_reload,
        this_4_1_reload,
        this_1_1_reload,
        itr_cast,
        this_0_address0,
        this_0_ce0,
        this_0_we0,
        this_0_d0,
        this_0_q0,
        call_ret7,
        this_3_2_out,
        this_3_2_out_ap_vld,
        this_4_2_out,
        this_4_2_out_ap_vld,
        this_1_2_out,
        this_1_2_out_ap_vld,
        grp_dpu_unit_fu_2908_p_din1,
        grp_dpu_unit_fu_2908_p_din2,
        grp_dpu_unit_fu_2908_p_din3,
        grp_dpu_unit_fu_2908_p_din4,
        grp_dpu_unit_fu_2908_p_din5,
        grp_dpu_unit_fu_2908_p_dout0_0,
        grp_dpu_unit_fu_2908_p_dout0_1,
        grp_dpu_unit_fu_2908_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8191:0] this_3_1_reload;
input  [8191:0] this_4_1_reload;
input  [8191:0] this_1_1_reload;
input  [2:0] itr_cast;
output  [7:0] this_0_address0;
output   this_0_ce0;
output  [1023:0] this_0_we0;
output  [8191:0] this_0_d0;
input  [8191:0] this_0_q0;
input  [8191:0] call_ret7;
output  [8191:0] this_3_2_out;
output   this_3_2_out_ap_vld;
output  [8191:0] this_4_2_out;
output   this_4_2_out_ap_vld;
output  [8191:0] this_1_2_out;
output   this_1_2_out_ap_vld;
output  [8191:0] grp_dpu_unit_fu_2908_p_din1;
output  [8191:0] grp_dpu_unit_fu_2908_p_din2;
output  [8191:0] grp_dpu_unit_fu_2908_p_din3;
output  [8191:0] grp_dpu_unit_fu_2908_p_din4;
output  [7:0] grp_dpu_unit_fu_2908_p_din5;
input  [8191:0] grp_dpu_unit_fu_2908_p_dout0_0;
input  [8191:0] grp_dpu_unit_fu_2908_p_dout0_1;
output   grp_dpu_unit_fu_2908_p_ce;

reg ap_idle;
reg[7:0] this_0_address0;
reg this_0_ce0;
reg[1023:0] this_0_we0;
reg this_3_2_out_ap_vld;
reg this_4_2_out_ap_vld;
reg this_1_2_out_ap_vld;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln157_fu_186_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] i_34_reg_293;
reg   [0:0] icmp_ln157_reg_298;
wire   [7:0] zext_ln159_1_fu_212_p1;
reg   [7:0] zext_ln159_1_reg_302;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
reg   [8191:0] this_3_ret7_reg_308;
wire    ap_block_pp0_stage3_11001;
reg   [8191:0] this_4_ret7_reg_314;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_read_p1_fu_137_ap_start;
wire    grp_read_p1_fu_137_ap_done;
wire    grp_read_p1_fu_137_ap_idle;
wire    grp_read_p1_fu_137_ap_ready;
wire   [7:0] grp_read_p1_fu_137_this_pMem_address0;
wire    grp_read_p1_fu_137_this_pMem_ce0;
wire   [7:0] grp_read_p1_fu_137_addr;
wire   [8191:0] grp_read_p1_fu_137_ap_return;
reg    grp_dpu_unit_fu_144_ap_ce;
wire    ap_block_state3_pp0_stage2_iter0_ignore_call7;
wire    ap_block_pp0_stage2_11001_ignoreCallOp38;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state4_pp0_stage3_iter0_ignore_call7;
wire    ap_block_pp0_stage3_11001_ignoreCallOp40;
wire    call_ln161_write_p3_fu_155_ap_start;
wire    call_ln161_write_p3_fu_155_ap_ready;
wire   [7:0] call_ln161_write_p3_fu_155_this_pMem_address0;
wire    call_ln161_write_p3_fu_155_this_pMem_ce0;
wire   [1023:0] call_ln161_write_p3_fu_155_this_pMem_we0;
wire   [8191:0] call_ln161_write_p3_fu_155_this_pMem_d0;
reg    grp_read_p1_fu_137_ap_start_reg;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
reg    call_ln161_write_p3_fu_155_ap_start_reg;
wire    ap_block_pp0_stage0;
reg   [2:0] i_fu_70;
wire   [2:0] i_35_fu_192_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_34;
reg   [8191:0] this_1_2_fu_74;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [8191:0] this_4_2_fu_78;
reg   [8191:0] this_3_2_fu_82;
wire    ap_block_pp0_stage0_01001;
wire   [6:0] zext_ln159_fu_203_p1;
wire   [6:0] add_ln159_fu_206_p2;
wire    ap_block_pp0_stage3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_read_p1_fu_137_ap_start_reg = 1'b0;
#0 call_ln161_write_p3_fu_155_ap_start_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

dpu_keygen_read_p1 grp_read_p1_fu_137(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_read_p1_fu_137_ap_start),
    .ap_done(grp_read_p1_fu_137_ap_done),
    .ap_idle(grp_read_p1_fu_137_ap_idle),
    .ap_ready(grp_read_p1_fu_137_ap_ready),
    .this_pMem_address0(grp_read_p1_fu_137_this_pMem_address0),
    .this_pMem_ce0(grp_read_p1_fu_137_this_pMem_ce0),
    .this_pMem_q0(this_0_q0),
    .addr(grp_read_p1_fu_137_addr),
    .ap_return(grp_read_p1_fu_137_ap_return)
);

dpu_keygen_write_p3 call_ln161_write_p3_fu_155(
    .ap_start(call_ln161_write_p3_fu_155_ap_start),
    .ap_ready(call_ln161_write_p3_fu_155_ap_ready),
    .this_pMem_address0(call_ln161_write_p3_fu_155_this_pMem_address0),
    .this_pMem_ce0(call_ln161_write_p3_fu_155_this_pMem_ce0),
    .this_pMem_we0(call_ln161_write_p3_fu_155_this_pMem_we0),
    .this_pMem_d0(call_ln161_write_p3_fu_155_this_pMem_d0),
    .p_read(this_3_ret7_reg_308),
    .addr(zext_ln159_1_reg_302)
);

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
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        call_ln161_write_p3_fu_155_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            call_ln161_write_p3_fu_155_ap_start_reg <= 1'b1;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (call_ln161_write_p3_fu_155_ap_ready == 1'b1))) begin
            call_ln161_write_p3_fu_155_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_read_p1_fu_137_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln157_fu_186_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_read_p1_fu_137_ap_start_reg <= 1'b1;
        end else if ((grp_read_p1_fu_137_ap_ready == 1'b1)) begin
            grp_read_p1_fu_137_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln157_fu_186_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_70 <= i_35_fu_192_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_70 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        this_1_2_fu_74 <= this_1_1_reload;
    end else if (((icmp_ln157_reg_298 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        this_1_2_fu_74 <= grp_read_p1_fu_137_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            this_3_2_fu_82 <= this_3_1_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            this_3_2_fu_82 <= this_3_ret7_reg_308;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            this_4_2_fu_78 <= this_4_1_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            this_4_2_fu_78 <= this_4_ret7_reg_314;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_34_reg_293 <= ap_sig_allocacmp_i_34;
        icmp_ln157_reg_298 <= icmp_ln157_fu_186_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln157_reg_298 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        this_3_ret7_reg_308 <= grp_dpu_unit_fu_2908_p_dout0_0;
        this_4_ret7_reg_314 <= grp_dpu_unit_fu_2908_p_dout0_1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln157_reg_298 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        zext_ln159_1_reg_302[6 : 0] <= zext_ln159_1_fu_212_p1[6 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln157_fu_186_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_34 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_34 = i_fu_70;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp40) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp38) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_dpu_unit_fu_144_ap_ce = 1'b1;
    end else begin
        grp_dpu_unit_fu_144_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_0_address0 = call_ln161_write_p3_fu_155_this_pMem_address0;
    end else if ((((icmp_ln157_reg_298 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln157_reg_298 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        this_0_address0 = grp_read_p1_fu_137_this_pMem_address0;
    end else begin
        this_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_0_ce0 = call_ln161_write_p3_fu_155_this_pMem_ce0;
    end else if ((((icmp_ln157_reg_298 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln157_reg_298 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        this_0_ce0 = grp_read_p1_fu_137_this_pMem_ce0;
    end else begin
        this_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_0_we0 = call_ln161_write_p3_fu_155_this_pMem_we0;
    end else begin
        this_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln157_fu_186_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_1_2_out_ap_vld = 1'b1;
    end else begin
        this_1_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln157_fu_186_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_3_2_out_ap_vld = 1'b1;
    end else begin
        this_3_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln157_fu_186_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_4_2_out_ap_vld = 1'b1;
    end else begin
        this_4_2_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln159_fu_206_p2 = ($signed(zext_ln159_fu_203_p1) + $signed(7'd76));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001_ignoreCallOp38 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001_ignoreCallOp40 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0_ignore_call7 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign call_ln161_write_p3_fu_155_ap_start = call_ln161_write_p3_fu_155_ap_start_reg;

assign grp_dpu_unit_fu_2908_p_ce = grp_dpu_unit_fu_144_ap_ce;

assign grp_dpu_unit_fu_2908_p_din1 = grp_read_p1_fu_137_ap_return;

assign grp_dpu_unit_fu_2908_p_din2 = call_ret7;

assign grp_dpu_unit_fu_2908_p_din3 = this_3_2_fu_82;

assign grp_dpu_unit_fu_2908_p_din4 = this_4_2_fu_78;

assign grp_dpu_unit_fu_2908_p_din5 = 8'd2;

assign grp_read_p1_fu_137_addr = add_ln159_fu_206_p2;

assign grp_read_p1_fu_137_ap_start = grp_read_p1_fu_137_ap_start_reg;

assign i_35_fu_192_p2 = (ap_sig_allocacmp_i_34 + 3'd1);

assign icmp_ln157_fu_186_p2 = ((ap_sig_allocacmp_i_34 == itr_cast) ? 1'b1 : 1'b0);

assign this_0_d0 = call_ln161_write_p3_fu_155_this_pMem_d0;

assign this_1_2_out = this_1_2_fu_74;

assign this_3_2_out = this_3_2_fu_82;

assign this_4_2_out = this_4_2_fu_78;

assign zext_ln159_1_fu_212_p1 = add_ln159_fu_206_p2;

assign zext_ln159_fu_203_p1 = i_34_reg_293;

always @ (posedge ap_clk) begin
    zext_ln159_1_reg_302[7] <= 1'b0;
end

endmodule //dpu_keygen_dpu_func_Pipeline_FUNC_RD_LOOP2
