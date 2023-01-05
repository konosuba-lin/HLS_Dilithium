// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dpu_keygen_sample_eta (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        this_s_address0,
        this_s_ce0,
        this_s_we0,
        this_s_d0,
        this_s_q0,
        this_s_address1,
        this_s_ce1,
        this_s_we1,
        this_s_d1,
        this_s_q1,
        a_address0,
        a_ce0,
        a_we0,
        a_d0,
        seedbuf_address0,
        seedbuf_ce0,
        seedbuf_q0,
        seedbuf_address1,
        seedbuf_ce1,
        seedbuf_q1,
        nonce
);

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] this_s_address0;
output   this_s_ce0;
output   this_s_we0;
output  [63:0] this_s_d0;
input  [63:0] this_s_q0;
output  [4:0] this_s_address1;
output   this_s_ce1;
output   this_s_we1;
output  [63:0] this_s_d1;
input  [63:0] this_s_q1;
output  [7:0] a_address0;
output   a_ce0;
output   a_we0;
output  [3:0] a_d0;
output  [6:0] seedbuf_address0;
output   seedbuf_ce0;
input  [7:0] seedbuf_q0;
output  [6:0] seedbuf_address1;
output   seedbuf_ce1;
input  [7:0] seedbuf_q1;
input  [3:0] nonce;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] this_s_address0;
reg this_s_ce0;
reg this_s_we0;
reg[63:0] this_s_d0;
reg[4:0] this_s_address1;
reg this_s_ce1;
reg this_s_we1;
reg[63:0] this_s_d1;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [9:0] grp_shake_absorb_1_fu_139_ap_return;
reg   [9:0] call_ret_reg_339;
wire    ap_CS_fsm_state3;
wire   [7:0] grp_shake_absorb_fu_153_ap_return;
reg   [7:0] call_ret3_reg_344;
wire    ap_CS_fsm_state5;
reg   [4:0] i_reg_349;
reg   [4:0] this_s_addr_reg_354;
wire    ap_CS_fsm_state6;
wire   [4:0] this_s_addr_2_reg_359;
wire    ap_CS_fsm_state8;
wire   [7:0] trunc_ln530_fu_276_p1;
reg   [7:0] trunc_ln530_reg_364;
wire    ap_CS_fsm_state10;
wire   [0:0] grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_return;
reg   [0:0] targetBlock_reg_372;
wire    ap_CS_fsm_state15;
reg   [7:0] buf_address0;
reg    buf_ce0;
reg    buf_we0;
wire   [7:0] buf_q0;
reg    buf_ce1;
reg    buf_we1;
wire    grp_shake_absorb_1_fu_139_ap_start;
wire    grp_shake_absorb_1_fu_139_ap_done;
wire    grp_shake_absorb_1_fu_139_ap_idle;
wire    grp_shake_absorb_1_fu_139_ap_ready;
wire   [4:0] grp_shake_absorb_1_fu_139_this_s_address0;
wire    grp_shake_absorb_1_fu_139_this_s_ce0;
wire    grp_shake_absorb_1_fu_139_this_s_we0;
wire   [63:0] grp_shake_absorb_1_fu_139_this_s_d0;
wire   [4:0] grp_shake_absorb_1_fu_139_this_s_address1;
wire    grp_shake_absorb_1_fu_139_this_s_ce1;
wire    grp_shake_absorb_1_fu_139_this_s_we1;
wire   [63:0] grp_shake_absorb_1_fu_139_this_s_d1;
wire   [6:0] grp_shake_absorb_1_fu_139_seedbuf_address0;
wire    grp_shake_absorb_1_fu_139_seedbuf_ce0;
wire   [6:0] grp_shake_absorb_1_fu_139_seedbuf_address1;
wire    grp_shake_absorb_1_fu_139_seedbuf_ce1;
wire    grp_shake_absorb_fu_153_ap_start;
wire    grp_shake_absorb_fu_153_ap_done;
wire    grp_shake_absorb_fu_153_ap_idle;
wire    grp_shake_absorb_fu_153_ap_ready;
wire   [4:0] grp_shake_absorb_fu_153_this_s_address0;
wire    grp_shake_absorb_fu_153_this_s_ce0;
wire    grp_shake_absorb_fu_153_this_s_we0;
wire   [63:0] grp_shake_absorb_fu_153_this_s_d0;
wire   [4:0] grp_shake_absorb_fu_153_this_s_address1;
wire    grp_shake_absorb_fu_153_this_s_ce1;
wire    grp_shake_absorb_fu_153_this_s_we1;
wire   [63:0] grp_shake_absorb_fu_153_this_s_d1;
wire    grp_KeccakF1600_StatePermute_fu_165_ap_start;
wire    grp_KeccakF1600_StatePermute_fu_165_ap_done;
wire    grp_KeccakF1600_StatePermute_fu_165_ap_idle;
wire    grp_KeccakF1600_StatePermute_fu_165_ap_ready;
wire   [4:0] grp_KeccakF1600_StatePermute_fu_165_this_s_address0;
wire    grp_KeccakF1600_StatePermute_fu_165_this_s_ce0;
wire    grp_KeccakF1600_StatePermute_fu_165_this_s_we0;
wire   [63:0] grp_KeccakF1600_StatePermute_fu_165_this_s_d0;
wire   [4:0] grp_KeccakF1600_StatePermute_fu_165_this_s_address1;
wire    grp_KeccakF1600_StatePermute_fu_165_this_s_ce1;
wire    grp_KeccakF1600_StatePermute_fu_165_this_s_we1;
wire   [63:0] grp_KeccakF1600_StatePermute_fu_165_this_s_d1;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_start;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_done;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_idle;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_ready;
wire   [4:0] grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_this_s_address0;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_this_s_ce0;
wire   [7:0] grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_address0;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_ce0;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_we0;
wire   [7:0] grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_d0;
wire   [7:0] grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_address1;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_ce1;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_we1;
wire   [7:0] grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_d1;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_start;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_done;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_idle;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_ready;
wire   [7:0] grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_buf_r_address0;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_buf_r_ce0;
wire   [7:0] grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_a_address0;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_a_ce0;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_a_we0;
wire   [3:0] grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_a_d0;
wire   [31:0] grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ctr_1_out;
wire    grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ctr_1_out_ap_vld;
reg    grp_shake_absorb_1_fu_139_ap_start_reg;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln321_fu_202_p2;
reg    grp_shake_absorb_fu_153_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_KeccakF1600_StatePermute_fu_165_ap_start_reg;
wire   [0:0] icmp_ln530_fu_290_p2;
wire    ap_CS_fsm_state11;
reg    grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_start_reg;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
reg    grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_start_reg;
wire    ap_CS_fsm_state14;
reg   [31:0] ctr_1_loc_fu_90;
wire   [63:0] zext_ln321_fu_197_p1;
wire   [63:0] zext_ln402_1_fu_234_p1;
reg   [4:0] i_20_fu_86;
wire   [4:0] add_ln321_fu_208_p2;
wire    ap_CS_fsm_state16;
reg   [31:0] ctr_fu_98;
wire   [31:0] ctr_8_fu_299_p3;
wire    ap_CS_fsm_state7;
wire   [63:0] xor_ln402_fu_259_p2;
wire    ap_CS_fsm_state9;
wire   [63:0] xor_ln403_fu_266_p2;
wire   [2:0] trunc_ln402_fu_238_p1;
wire   [5:0] shl_ln_fu_241_p3;
wire   [63:0] zext_ln402_fu_249_p1;
wire   [63:0] shl_ln402_fu_253_p2;
wire   [23:0] tmp_fu_280_p4;
reg   [15:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
reg    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
#0 grp_shake_absorb_1_fu_139_ap_start_reg = 1'b0;
#0 grp_shake_absorb_fu_153_ap_start_reg = 1'b0;
#0 grp_KeccakF1600_StatePermute_fu_165_ap_start_reg = 1'b0;
#0 grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_start_reg = 1'b0;
#0 grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_start_reg = 1'b0;
end

dpu_keygen_sample_eta_buf_RAM_AUTO_1R1W #(
    .DataWidth( 8 ),
    .AddressRange( 168 ),
    .AddressWidth( 8 ))
buf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_address0),
    .ce0(buf_ce0),
    .we0(buf_we0),
    .d0(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_d0),
    .q0(buf_q0),
    .address1(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_address1),
    .ce1(buf_ce1),
    .we1(buf_we1),
    .d1(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_d1)
);

dpu_keygen_shake_absorb_1 grp_shake_absorb_1_fu_139(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_shake_absorb_1_fu_139_ap_start),
    .ap_done(grp_shake_absorb_1_fu_139_ap_done),
    .ap_idle(grp_shake_absorb_1_fu_139_ap_idle),
    .ap_ready(grp_shake_absorb_1_fu_139_ap_ready),
    .this_s_address0(grp_shake_absorb_1_fu_139_this_s_address0),
    .this_s_ce0(grp_shake_absorb_1_fu_139_this_s_ce0),
    .this_s_we0(grp_shake_absorb_1_fu_139_this_s_we0),
    .this_s_d0(grp_shake_absorb_1_fu_139_this_s_d0),
    .this_s_q0(this_s_q0),
    .this_s_address1(grp_shake_absorb_1_fu_139_this_s_address1),
    .this_s_ce1(grp_shake_absorb_1_fu_139_this_s_ce1),
    .this_s_we1(grp_shake_absorb_1_fu_139_this_s_we1),
    .this_s_d1(grp_shake_absorb_1_fu_139_this_s_d1),
    .this_s_q1(this_s_q1),
    .mode(9'd128),
    .seedbuf_address0(grp_shake_absorb_1_fu_139_seedbuf_address0),
    .seedbuf_ce0(grp_shake_absorb_1_fu_139_seedbuf_ce0),
    .seedbuf_q0(seedbuf_q0),
    .seedbuf_address1(grp_shake_absorb_1_fu_139_seedbuf_address1),
    .seedbuf_ce1(grp_shake_absorb_1_fu_139_seedbuf_ce1),
    .seedbuf_q1(seedbuf_q1),
    .m(6'd32),
    .ap_return(grp_shake_absorb_1_fu_139_ap_return)
);

dpu_keygen_shake_absorb grp_shake_absorb_fu_153(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_shake_absorb_fu_153_ap_start),
    .ap_done(grp_shake_absorb_fu_153_ap_done),
    .ap_idle(grp_shake_absorb_fu_153_ap_idle),
    .ap_ready(grp_shake_absorb_fu_153_ap_ready),
    .this_s_address0(grp_shake_absorb_fu_153_this_s_address0),
    .this_s_ce0(grp_shake_absorb_fu_153_this_s_ce0),
    .this_s_we0(grp_shake_absorb_fu_153_this_s_we0),
    .this_s_d0(grp_shake_absorb_fu_153_this_s_d0),
    .this_s_q0(this_s_q0),
    .this_s_address1(grp_shake_absorb_fu_153_this_s_address1),
    .this_s_ce1(grp_shake_absorb_fu_153_this_s_ce1),
    .this_s_we1(grp_shake_absorb_fu_153_this_s_we1),
    .this_s_d1(grp_shake_absorb_fu_153_this_s_d1),
    .this_s_q1(this_s_q1),
    .p_read(call_ret_reg_339),
    .p_read1(nonce),
    .p_read2(3'd0),
    .ap_return(grp_shake_absorb_fu_153_ap_return)
);

dpu_keygen_KeccakF1600_StatePermute grp_KeccakF1600_StatePermute_fu_165(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakF1600_StatePermute_fu_165_ap_start),
    .ap_done(grp_KeccakF1600_StatePermute_fu_165_ap_done),
    .ap_idle(grp_KeccakF1600_StatePermute_fu_165_ap_idle),
    .ap_ready(grp_KeccakF1600_StatePermute_fu_165_ap_ready),
    .this_s_address0(grp_KeccakF1600_StatePermute_fu_165_this_s_address0),
    .this_s_ce0(grp_KeccakF1600_StatePermute_fu_165_this_s_ce0),
    .this_s_we0(grp_KeccakF1600_StatePermute_fu_165_this_s_we0),
    .this_s_d0(grp_KeccakF1600_StatePermute_fu_165_this_s_d0),
    .this_s_q0(this_s_q0),
    .this_s_address1(grp_KeccakF1600_StatePermute_fu_165_this_s_address1),
    .this_s_ce1(grp_KeccakF1600_StatePermute_fu_165_this_s_ce1),
    .this_s_we1(grp_KeccakF1600_StatePermute_fu_165_this_s_we1),
    .this_s_d1(grp_KeccakF1600_StatePermute_fu_165_this_s_d1),
    .this_s_q1(this_s_q1)
);

dpu_keygen_sample_eta_Pipeline_VITIS_LOOP_417_2 grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_start),
    .ap_done(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_done),
    .ap_idle(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_idle),
    .ap_ready(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_ready),
    .this_s_address0(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_this_s_address0),
    .this_s_ce0(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_this_s_ce0),
    .this_s_q0(this_s_q0),
    .buf_r_address0(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_address0),
    .buf_r_ce0(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_ce0),
    .buf_r_we0(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_we0),
    .buf_r_d0(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_d0),
    .buf_r_address1(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_address1),
    .buf_r_ce1(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_ce1),
    .buf_r_we1(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_we1),
    .buf_r_d1(grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_d1)
);

dpu_keygen_sample_eta_Pipeline_VITIS_LOOP_533_2 grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_start),
    .ap_done(grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_done),
    .ap_idle(grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_idle),
    .ap_ready(grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_ready),
    .ctr(trunc_ln530_reg_364),
    .buf_r_address0(grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_buf_r_address0),
    .buf_r_ce0(grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_buf_r_ce0),
    .buf_r_q0(buf_q0),
    .a_address0(grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_a_address0),
    .a_ce0(grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_a_ce0),
    .a_we0(grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_a_we0),
    .a_d0(grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_a_d0),
    .ctr_1_out(grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ctr_1_out),
    .ctr_1_out_ap_vld(grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ctr_1_out_ap_vld),
    .ap_return(grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_return)
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
        grp_KeccakF1600_StatePermute_fu_165_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln530_fu_290_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
            grp_KeccakF1600_StatePermute_fu_165_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakF1600_StatePermute_fu_165_ap_ready == 1'b1)) begin
            grp_KeccakF1600_StatePermute_fu_165_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_start_reg <= 1'b1;
        end else if ((grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_ready == 1'b1)) begin
            grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_start_reg <= 1'b1;
        end else if ((grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_ready == 1'b1)) begin
            grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_shake_absorb_1_fu_139_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln321_fu_202_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_shake_absorb_1_fu_139_ap_start_reg <= 1'b1;
        end else if ((grp_shake_absorb_1_fu_139_ap_ready == 1'b1)) begin
            grp_shake_absorb_1_fu_139_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_shake_absorb_fu_153_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_shake_absorb_fu_153_ap_start_reg <= 1'b1;
        end else if ((grp_shake_absorb_fu_153_ap_ready == 1'b1)) begin
            grp_shake_absorb_fu_153_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln321_fu_202_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ctr_fu_98 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        ctr_fu_98 <= ctr_8_fu_299_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_20_fu_86 <= 5'd0;
    end else if (((icmp_ln321_fu_202_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_20_fu_86 <= add_ln321_fu_208_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        call_ret3_reg_344 <= grp_shake_absorb_fu_153_ap_return;
        i_reg_349 <= {{grp_shake_absorb_fu_153_ap_return[7:3]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        call_ret_reg_339 <= grp_shake_absorb_1_fu_139_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ctr_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
        ctr_1_loc_fu_90 <= grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ctr_1_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        targetBlock_reg_372 <= grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        this_s_addr_reg_354 <= zext_ln402_1_fu_234_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        trunc_ln530_reg_364 <= trunc_ln530_fu_276_p1;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

always @ (*) begin
    if ((grp_KeccakF1600_StatePermute_fu_165_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end

assign ap_ST_fsm_state12_blk = 1'b0;

always @ (*) begin
    if ((grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end

assign ap_ST_fsm_state14_blk = 1'b0;

always @ (*) begin
    if ((grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_done == 1'b0)) begin
        ap_ST_fsm_state15_blk = 1'b1;
    end else begin
        ap_ST_fsm_state15_blk = 1'b0;
    end
end

assign ap_ST_fsm_state16_blk = 1'b0;

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_shake_absorb_1_fu_139_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((grp_shake_absorb_fu_153_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if ((((icmp_ln530_fu_290_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln530_fu_290_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buf_address0 = grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_buf_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buf_address0 = grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_address0;
    end else begin
        buf_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buf_ce0 = grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_buf_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buf_ce0 = grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_ce0;
    end else begin
        buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buf_ce1 = grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_ce1;
    end else begin
        buf_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buf_we0 = grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_we0;
    end else begin
        buf_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buf_we1 = grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_buf_r_we1;
    end else begin
        buf_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        this_s_address0 = this_s_addr_2_reg_359;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        this_s_address0 = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        this_s_address0 = this_s_addr_reg_354;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        this_s_address0 = zext_ln402_1_fu_234_p1;
    end else if (((icmp_ln321_fu_202_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        this_s_address0 = zext_ln321_fu_197_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        this_s_address0 = grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_this_s_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        this_s_address0 = grp_KeccakF1600_StatePermute_fu_165_this_s_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        this_s_address0 = grp_shake_absorb_fu_153_this_s_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        this_s_address0 = grp_shake_absorb_1_fu_139_this_s_address0;
    end else begin
        this_s_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        this_s_address1 = grp_KeccakF1600_StatePermute_fu_165_this_s_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        this_s_address1 = grp_shake_absorb_fu_153_this_s_address1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        this_s_address1 = grp_shake_absorb_1_fu_139_this_s_address1;
    end else begin
        this_s_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | ((icmp_ln321_fu_202_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        this_s_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        this_s_ce0 = grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_this_s_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        this_s_ce0 = grp_KeccakF1600_StatePermute_fu_165_this_s_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        this_s_ce0 = grp_shake_absorb_fu_153_this_s_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        this_s_ce0 = grp_shake_absorb_1_fu_139_this_s_ce0;
    end else begin
        this_s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        this_s_ce1 = grp_KeccakF1600_StatePermute_fu_165_this_s_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        this_s_ce1 = grp_shake_absorb_fu_153_this_s_ce1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        this_s_ce1 = grp_shake_absorb_1_fu_139_this_s_ce1;
    end else begin
        this_s_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        this_s_d0 = xor_ln403_fu_266_p2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        this_s_d0 = xor_ln402_fu_259_p2;
    end else if (((icmp_ln321_fu_202_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        this_s_d0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        this_s_d0 = grp_KeccakF1600_StatePermute_fu_165_this_s_d0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        this_s_d0 = grp_shake_absorb_fu_153_this_s_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        this_s_d0 = grp_shake_absorb_1_fu_139_this_s_d0;
    end else begin
        this_s_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        this_s_d1 = grp_KeccakF1600_StatePermute_fu_165_this_s_d1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        this_s_d1 = grp_shake_absorb_fu_153_this_s_d1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        this_s_d1 = grp_shake_absorb_1_fu_139_this_s_d1;
    end else begin
        this_s_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | ((icmp_ln321_fu_202_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        this_s_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        this_s_we0 = grp_KeccakF1600_StatePermute_fu_165_this_s_we0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        this_s_we0 = grp_shake_absorb_fu_153_this_s_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        this_s_we0 = grp_shake_absorb_1_fu_139_this_s_we0;
    end else begin
        this_s_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        this_s_we1 = grp_KeccakF1600_StatePermute_fu_165_this_s_we1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        this_s_we1 = grp_shake_absorb_fu_153_this_s_we1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        this_s_we1 = grp_shake_absorb_1_fu_139_this_s_we1;
    end else begin
        this_s_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln321_fu_202_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_shake_absorb_1_fu_139_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_shake_absorb_fu_153_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln530_fu_290_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (grp_KeccakF1600_StatePermute_fu_165_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_a_address0;

assign a_ce0 = grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_a_ce0;

assign a_d0 = grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_a_d0;

assign a_we0 = grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_a_we0;

assign add_ln321_fu_208_p2 = (i_20_fu_86 + 5'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ctr_8_fu_299_p3 = ((targetBlock_reg_372[0:0] == 1'b1) ? ctr_1_loc_fu_90 : 32'd256);

assign grp_KeccakF1600_StatePermute_fu_165_ap_start = grp_KeccakF1600_StatePermute_fu_165_ap_start_reg;

assign grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_start = grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173_ap_start_reg;

assign grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_start = grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180_ap_start_reg;

assign grp_shake_absorb_1_fu_139_ap_start = grp_shake_absorb_1_fu_139_ap_start_reg;

assign grp_shake_absorb_fu_153_ap_start = grp_shake_absorb_fu_153_ap_start_reg;

assign icmp_ln321_fu_202_p2 = ((i_20_fu_86 == 5'd25) ? 1'b1 : 1'b0);

assign icmp_ln530_fu_290_p2 = ((tmp_fu_280_p4 == 24'd0) ? 1'b1 : 1'b0);

assign seedbuf_address0 = grp_shake_absorb_1_fu_139_seedbuf_address0;

assign seedbuf_address1 = grp_shake_absorb_1_fu_139_seedbuf_address1;

assign seedbuf_ce0 = grp_shake_absorb_1_fu_139_seedbuf_ce0;

assign seedbuf_ce1 = grp_shake_absorb_1_fu_139_seedbuf_ce1;

assign shl_ln402_fu_253_p2 = 64'd31 << zext_ln402_fu_249_p1;

assign shl_ln_fu_241_p3 = {{trunc_ln402_fu_238_p1}, {3'd0}};

assign this_s_addr_2_reg_359 = 64'd20;

assign tmp_fu_280_p4 = {{ctr_fu_98[31:8]}};

assign trunc_ln402_fu_238_p1 = call_ret3_reg_344[2:0];

assign trunc_ln530_fu_276_p1 = ctr_fu_98[7:0];

assign xor_ln402_fu_259_p2 = (this_s_q0 ^ shl_ln402_fu_253_p2);

assign xor_ln403_fu_266_p2 = (this_s_q0 ^ 64'd9223372036854775808);

assign zext_ln321_fu_197_p1 = i_20_fu_86;

assign zext_ln402_1_fu_234_p1 = i_reg_349;

assign zext_ln402_fu_249_p1 = shl_ln_fu_241_p3;

endmodule //dpu_keygen_sample_eta
