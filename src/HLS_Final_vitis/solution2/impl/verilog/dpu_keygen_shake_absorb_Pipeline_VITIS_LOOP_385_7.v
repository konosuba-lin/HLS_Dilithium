// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dpu_keygen_shake_absorb_Pipeline_VITIS_LOOP_385_7 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sext_ln340_1,
        phi_ln340_1,
        p_read2_cast,
        p_read1,
        t_address0,
        t_ce0,
        t_we0,
        t_d0
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] sext_ln340_1;
input  [0:0] phi_ln340_1;
input  [2:0] p_read2_cast;
input  [3:0] p_read1;
output  [2:0] t_address0;
output   t_ce0;
output   t_we0;
output  [3:0] t_d0;

reg ap_idle;
reg t_ce0;
reg t_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln385_fu_95_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln385_fu_107_p1;
reg   [31:0] i_fu_34;
wire   [31:0] i_6_fu_101_p2;
wire    ap_loop_init;
reg   [31:0] ap_sig_allocacmp_i_5;
wire   [32:0] zext_ln385_1_fu_91_p1;
wire  signed [32:0] sext_ln340_1_cast_fu_79_p1;
wire   [0:0] trunc_ln386_fu_112_p1;
wire   [0:0] xor_ln386_fu_116_p2;
wire   [3:0] p_read2_cast_cast_fu_75_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if ((icmp_ln385_fu_95_p2 == 1'd1)) begin
            i_fu_34 <= i_6_fu_101_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_34 <= 32'd0;
        end
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln385_fu_95_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_5 = 32'd0;
    end else begin
        ap_sig_allocacmp_i_5 = i_fu_34;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        t_ce0 = 1'b1;
    end else begin
        t_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln385_fu_95_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        t_we0 = 1'b1;
    end else begin
        t_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_6_fu_101_p2 = (ap_sig_allocacmp_i_5 + 32'd1);

assign icmp_ln385_fu_95_p2 = ((zext_ln385_1_fu_91_p1 < sext_ln340_1_cast_fu_79_p1) ? 1'b1 : 1'b0);

assign p_read2_cast_cast_fu_75_p1 = p_read2_cast;

assign sext_ln340_1_cast_fu_79_p1 = $signed(sext_ln340_1);

assign t_address0 = zext_ln385_fu_107_p1;

assign t_d0 = ((xor_ln386_fu_116_p2[0:0] == 1'b1) ? p_read2_cast_cast_fu_75_p1 : p_read1);

assign trunc_ln386_fu_112_p1 = ap_sig_allocacmp_i_5[0:0];

assign xor_ln386_fu_116_p2 = (trunc_ln386_fu_112_p1 ^ phi_ln340_1);

assign zext_ln385_1_fu_91_p1 = ap_sig_allocacmp_i_5;

assign zext_ln385_fu_107_p1 = ap_sig_allocacmp_i_5;

endmodule //dpu_keygen_shake_absorb_Pipeline_VITIS_LOOP_385_7
