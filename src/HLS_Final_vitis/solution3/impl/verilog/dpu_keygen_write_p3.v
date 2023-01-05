// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dpu_keygen_write_p3 (
        ap_start,
        ap_ready,
        this_pMem_address0,
        this_pMem_ce0,
        this_pMem_we0,
        this_pMem_d0,
        p_read,
        addr
);


input   ap_start;
output   ap_ready;
output  [7:0] this_pMem_address0;
output   this_pMem_ce0;
output  [1023:0] this_pMem_we0;
output  [8191:0] this_pMem_d0;
input  [8191:0] p_read;
input  [7:0] addr;

reg this_pMem_ce0;
reg[1023:0] this_pMem_we0;

wire   [63:0] idxprom2_fu_50_p1;
wire    ap_ce_reg;

always @ (*) begin
    if ((ap_start == 1'b1)) begin
        this_pMem_ce0 = 1'b1;
    end else begin
        this_pMem_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b1)) begin
        this_pMem_we0 = 1024'd179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137215;
    end else begin
        this_pMem_we0 = 1024'd0;
    end
end

assign ap_ready = ap_start;

assign idxprom2_fu_50_p1 = addr;

assign this_pMem_address0 = idxprom2_fu_50_p1;

assign this_pMem_d0 = p_read;

endmodule //dpu_keygen_write_p3
