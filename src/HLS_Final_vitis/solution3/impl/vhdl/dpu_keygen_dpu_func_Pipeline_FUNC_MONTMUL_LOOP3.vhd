-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dpu_keygen_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    this_3_6_reload : IN STD_LOGIC_VECTOR (8191 downto 0);
    this_4_6_reload : IN STD_LOGIC_VECTOR (8191 downto 0);
    this_1_6_reload : IN STD_LOGIC_VECTOR (8191 downto 0);
    itr_cast : IN STD_LOGIC_VECTOR (2 downto 0);
    this_0_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    this_0_ce0 : OUT STD_LOGIC;
    this_0_we0 : OUT STD_LOGIC_VECTOR (1023 downto 0);
    this_0_d0 : OUT STD_LOGIC_VECTOR (8191 downto 0);
    this_0_q0 : IN STD_LOGIC_VECTOR (8191 downto 0);
    call_ret19 : IN STD_LOGIC_VECTOR (8191 downto 0);
    this_3_7_out : OUT STD_LOGIC_VECTOR (8191 downto 0);
    this_3_7_out_ap_vld : OUT STD_LOGIC;
    this_4_7_out : OUT STD_LOGIC_VECTOR (8191 downto 0);
    this_4_7_out_ap_vld : OUT STD_LOGIC;
    this_1_7_out : OUT STD_LOGIC_VECTOR (8191 downto 0);
    this_1_7_out_ap_vld : OUT STD_LOGIC;
    grp_dpu_unit_fu_2908_p_din1 : OUT STD_LOGIC_VECTOR (8191 downto 0);
    grp_dpu_unit_fu_2908_p_din2 : OUT STD_LOGIC_VECTOR (8191 downto 0);
    grp_dpu_unit_fu_2908_p_din3 : OUT STD_LOGIC_VECTOR (8191 downto 0);
    grp_dpu_unit_fu_2908_p_din4 : OUT STD_LOGIC_VECTOR (8191 downto 0);
    grp_dpu_unit_fu_2908_p_din5 : OUT STD_LOGIC_VECTOR (7 downto 0);
    grp_dpu_unit_fu_2908_p_dout0_0 : IN STD_LOGIC_VECTOR (8191 downto 0);
    grp_dpu_unit_fu_2908_p_dout0_1 : IN STD_LOGIC_VECTOR (8191 downto 0);
    grp_dpu_unit_fu_2908_p_ce : OUT STD_LOGIC );
end;


architecture behav of dpu_keygen_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_pp0_stage3 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv8_2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv7_4C : STD_LOGIC_VECTOR (6 downto 0) := "1001100";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln195_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage3 : signal is "none";
    signal ap_block_state4_pp0_stage3_iter0 : BOOLEAN;
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_52_reg_293 : STD_LOGIC_VECTOR (2 downto 0);
    signal icmp_ln195_reg_298 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln197_1_fu_212_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln197_1_reg_302 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal this_3_ret_reg_308 : STD_LOGIC_VECTOR (8191 downto 0);
    signal ap_block_pp0_stage3_11001 : BOOLEAN;
    signal this_4_ret_reg_313 : STD_LOGIC_VECTOR (8191 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal grp_read_p1_fu_137_ap_start : STD_LOGIC;
    signal grp_read_p1_fu_137_ap_done : STD_LOGIC;
    signal grp_read_p1_fu_137_ap_idle : STD_LOGIC;
    signal grp_read_p1_fu_137_ap_ready : STD_LOGIC;
    signal grp_read_p1_fu_137_this_pMem_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_read_p1_fu_137_this_pMem_ce0 : STD_LOGIC;
    signal grp_read_p1_fu_137_addr : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_read_p1_fu_137_ap_return : STD_LOGIC_VECTOR (8191 downto 0);
    signal grp_dpu_unit_fu_144_ap_ce : STD_LOGIC;
    signal ap_block_state3_pp0_stage2_iter0_ignore_call7 : BOOLEAN;
    signal ap_block_pp0_stage2_11001_ignoreCallOp38 : BOOLEAN;
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_state4_pp0_stage3_iter0_ignore_call7 : BOOLEAN;
    signal ap_block_pp0_stage3_11001_ignoreCallOp40 : BOOLEAN;
    signal call_ln199_write_p4_fu_155_ap_start : STD_LOGIC;
    signal call_ln199_write_p4_fu_155_ap_ready : STD_LOGIC;
    signal call_ln199_write_p4_fu_155_this_pMem_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal call_ln199_write_p4_fu_155_this_pMem_ce0 : STD_LOGIC;
    signal call_ln199_write_p4_fu_155_this_pMem_we0 : STD_LOGIC_VECTOR (1023 downto 0);
    signal call_ln199_write_p4_fu_155_this_pMem_d0 : STD_LOGIC_VECTOR (8191 downto 0);
    signal grp_read_p1_fu_137_ap_start_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal call_ln199_write_p4_fu_155_ap_start_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal i_fu_70 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_53_fu_192_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_52 : STD_LOGIC_VECTOR (2 downto 0);
    signal this_1_7_fu_74 : STD_LOGIC_VECTOR (8191 downto 0);
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal this_4_7_fu_78 : STD_LOGIC_VECTOR (8191 downto 0);
    signal this_3_7_fu_82 : STD_LOGIC_VECTOR (8191 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln197_fu_203_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln197_fu_206_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component dpu_keygen_read_p1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        this_pMem_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        this_pMem_ce0 : OUT STD_LOGIC;
        this_pMem_q0 : IN STD_LOGIC_VECTOR (8191 downto 0);
        addr : IN STD_LOGIC_VECTOR (7 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (8191 downto 0) );
    end component;


    component dpu_keygen_dpu_unit IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (8191 downto 0);
        p_read1 : IN STD_LOGIC_VECTOR (8191 downto 0);
        p_read2 : IN STD_LOGIC_VECTOR (8191 downto 0);
        p_read3 : IN STD_LOGIC_VECTOR (8191 downto 0);
        type_r : IN STD_LOGIC_VECTOR (7 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (8191 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (8191 downto 0);
        ap_ce : IN STD_LOGIC );
    end component;


    component dpu_keygen_write_p4 IS
    port (
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        this_pMem_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        this_pMem_ce0 : OUT STD_LOGIC;
        this_pMem_we0 : OUT STD_LOGIC_VECTOR (1023 downto 0);
        this_pMem_d0 : OUT STD_LOGIC_VECTOR (8191 downto 0);
        p_read : IN STD_LOGIC_VECTOR (8191 downto 0);
        addr : IN STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component dpu_keygen_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    grp_read_p1_fu_137 : component dpu_keygen_read_p1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_read_p1_fu_137_ap_start,
        ap_done => grp_read_p1_fu_137_ap_done,
        ap_idle => grp_read_p1_fu_137_ap_idle,
        ap_ready => grp_read_p1_fu_137_ap_ready,
        this_pMem_address0 => grp_read_p1_fu_137_this_pMem_address0,
        this_pMem_ce0 => grp_read_p1_fu_137_this_pMem_ce0,
        this_pMem_q0 => this_0_q0,
        addr => grp_read_p1_fu_137_addr,
        ap_return => grp_read_p1_fu_137_ap_return);

    call_ln199_write_p4_fu_155 : component dpu_keygen_write_p4
    port map (
        ap_start => call_ln199_write_p4_fu_155_ap_start,
        ap_ready => call_ln199_write_p4_fu_155_ap_ready,
        this_pMem_address0 => call_ln199_write_p4_fu_155_this_pMem_address0,
        this_pMem_ce0 => call_ln199_write_p4_fu_155_this_pMem_ce0,
        this_pMem_we0 => call_ln199_write_p4_fu_155_this_pMem_we0,
        this_pMem_d0 => call_ln199_write_p4_fu_155_this_pMem_d0,
        p_read => this_4_ret_reg_313,
        addr => zext_ln197_1_reg_302);

    flow_control_loop_pipe_sequential_init_U : component dpu_keygen_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage3_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    call_ln199_write_p4_fu_155_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                call_ln199_write_p4_fu_155_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
                    call_ln199_write_p4_fu_155_ap_start_reg <= ap_const_logic_1;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (call_ln199_write_p4_fu_155_ap_ready = ap_const_logic_1))) then 
                    call_ln199_write_p4_fu_155_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_read_p1_fu_137_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_read_p1_fu_137_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln195_fu_186_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    grp_read_p1_fu_137_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_read_p1_fu_137_ap_ready = ap_const_logic_1)) then 
                    grp_read_p1_fu_137_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln195_fu_186_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_70 <= i_53_fu_192_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_70 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;

    this_1_7_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                this_1_7_fu_74 <= this_1_6_reload;
            elsif (((icmp_ln195_reg_298 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
                this_1_7_fu_74 <= grp_read_p1_fu_137_ap_return;
            end if; 
        end if;
    end process;

    this_3_7_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    this_3_7_fu_82 <= this_3_6_reload;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    this_3_7_fu_82 <= this_3_ret_reg_308;
                end if;
            end if; 
        end if;
    end process;

    this_4_7_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    this_4_7_fu_78 <= this_4_6_reload;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    this_4_7_fu_78 <= this_4_ret_reg_313;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_52_reg_293 <= ap_sig_allocacmp_i_52;
                icmp_ln195_reg_298 <= icmp_ln195_fu_186_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln195_reg_298 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then
                this_3_ret_reg_308 <= grp_dpu_unit_fu_2908_p_dout0_0;
                this_4_ret_reg_313 <= grp_dpu_unit_fu_2908_p_dout0_1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln195_reg_298 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                    zext_ln197_1_reg_302(6 downto 0) <= zext_ln197_1_fu_212_p1(6 downto 0);
            end if;
        end if;
    end process;
    zext_ln197_1_reg_302(7) <= '0';

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_condition_exit_pp0_iter0_stage0, ap_block_pp0_stage3_subdone, ap_idle_pp0_1to1, ap_block_pp0_stage1_subdone, ap_block_pp0_stage2_subdone, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_pp0_stage2 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage2_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                end if;
            when ap_ST_fsm_pp0_stage3 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage3_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln197_fu_206_p2 <= std_logic_vector(unsigned(zext_ln197_fu_203_p1) + unsigned(ap_const_lv7_4C));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(2);
    ap_CS_fsm_pp0_stage3 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_11001_ignoreCallOp38 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_11001_ignoreCallOp40 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage2_iter0_ignore_call7 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage3_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage3_iter0_ignore_call7 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln195_fu_186_p2)
    begin
        if (((icmp_ln195_fu_186_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to1_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if ((ap_enable_reg_pp0_iter1 = ap_const_logic_0)) then 
            ap_idle_pp0_1to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage3_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_52_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_70, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_52 <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_i_52 <= i_fu_70;
        end if; 
    end process;

    call_ln199_write_p4_fu_155_ap_start <= call_ln199_write_p4_fu_155_ap_start_reg;

    grp_dpu_unit_fu_144_ap_ce_assign_proc : process(ap_CS_fsm_pp0_stage3, ap_block_pp0_stage2_11001_ignoreCallOp38, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage3_11001_ignoreCallOp40)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage3_11001_ignoreCallOp40) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_const_boolean_0 = ap_block_pp0_stage2_11001_ignoreCallOp38) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            grp_dpu_unit_fu_144_ap_ce <= ap_const_logic_1;
        else 
            grp_dpu_unit_fu_144_ap_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_dpu_unit_fu_2908_p_ce <= grp_dpu_unit_fu_144_ap_ce;
    grp_dpu_unit_fu_2908_p_din1 <= grp_read_p1_fu_137_ap_return;
    grp_dpu_unit_fu_2908_p_din2 <= call_ret19;
    grp_dpu_unit_fu_2908_p_din3 <= this_3_7_fu_82;
    grp_dpu_unit_fu_2908_p_din4 <= this_4_7_fu_78;
    grp_dpu_unit_fu_2908_p_din5 <= ap_const_lv8_2;
    grp_read_p1_fu_137_addr <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln197_fu_206_p2),8));
    grp_read_p1_fu_137_ap_start <= grp_read_p1_fu_137_ap_start_reg;
    i_53_fu_192_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_52) + unsigned(ap_const_lv3_1));
    icmp_ln195_fu_186_p2 <= "1" when (ap_sig_allocacmp_i_52 = itr_cast) else "0";

    this_0_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, icmp_ln195_reg_298, ap_CS_fsm_pp0_stage1, grp_read_p1_fu_137_this_pMem_address0, ap_CS_fsm_pp0_stage2, call_ln199_write_p4_fu_155_this_pMem_address0, ap_block_pp0_stage1, ap_block_pp0_stage2, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_0_address0 <= call_ln199_write_p4_fu_155_this_pMem_address0;
        elsif ((((icmp_ln195_reg_298 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)) or ((icmp_ln195_reg_298 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            this_0_address0 <= grp_read_p1_fu_137_this_pMem_address0;
        else 
            this_0_address0 <= "XXXXXXXX";
        end if; 
    end process;


    this_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, icmp_ln195_reg_298, ap_CS_fsm_pp0_stage1, grp_read_p1_fu_137_this_pMem_ce0, ap_CS_fsm_pp0_stage2, call_ln199_write_p4_fu_155_this_pMem_ce0, ap_block_pp0_stage1, ap_block_pp0_stage2, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_0_ce0 <= call_ln199_write_p4_fu_155_this_pMem_ce0;
        elsif ((((icmp_ln195_reg_298 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)) or ((icmp_ln195_reg_298 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            this_0_ce0 <= grp_read_p1_fu_137_this_pMem_ce0;
        else 
            this_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    this_0_d0 <= call_ln199_write_p4_fu_155_this_pMem_d0;

    this_0_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, call_ln199_write_p4_fu_155_this_pMem_we0, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_0_we0 <= call_ln199_write_p4_fu_155_this_pMem_we0;
        else 
            this_0_we0 <= (0=>ap_const_logic_0, others=>'-');
        end if; 
    end process;

    this_1_7_out <= this_1_7_fu_74;

    this_1_7_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln195_fu_186_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln195_fu_186_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_1_7_out_ap_vld <= ap_const_logic_1;
        else 
            this_1_7_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    this_3_7_out <= this_3_7_fu_82;

    this_3_7_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln195_fu_186_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln195_fu_186_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_3_7_out_ap_vld <= ap_const_logic_1;
        else 
            this_3_7_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    this_4_7_out <= this_4_7_fu_78;

    this_4_7_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln195_fu_186_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln195_fu_186_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_4_7_out_ap_vld <= ap_const_logic_1;
        else 
            this_4_7_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln197_1_fu_212_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln197_fu_206_p2),8));
    zext_ln197_fu_203_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_52_reg_293),7));
end behav;