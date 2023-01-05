-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dpu_keygen_dpu_func_Pipeline_FUNC_RD_LOOP3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    this_p1_2_reload : IN STD_LOGIC_VECTOR (8191 downto 0);
    this_pMem_load_2 : IN STD_LOGIC_VECTOR (8191 downto 0);
    this_p3_2_reload : IN STD_LOGIC_VECTOR (8191 downto 0);
    this_p4_2_reload : IN STD_LOGIC_VECTOR (8191 downto 0);
    itr_cast : IN STD_LOGIC_VECTOR (2 downto 0);
    this_pMem_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    this_pMem_ce0 : OUT STD_LOGIC;
    this_pMem_we0 : OUT STD_LOGIC_VECTOR (1023 downto 0);
    this_pMem_d0 : OUT STD_LOGIC_VECTOR (8191 downto 0);
    this_pMem_q0 : IN STD_LOGIC_VECTOR (8191 downto 0);
    this_pMem_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    this_pMem_ce1 : OUT STD_LOGIC;
    this_pMem_q1 : IN STD_LOGIC_VECTOR (8191 downto 0);
    addr1 : IN STD_LOGIC_VECTOR (7 downto 0);
    this_p1_3_out : OUT STD_LOGIC_VECTOR (8191 downto 0);
    this_p1_3_out_ap_vld : OUT STD_LOGIC;
    this_p2_1_out : OUT STD_LOGIC_VECTOR (8191 downto 0);
    this_p2_1_out_ap_vld : OUT STD_LOGIC;
    this_p3_3_out : OUT STD_LOGIC_VECTOR (8191 downto 0);
    this_p3_3_out_ap_vld : OUT STD_LOGIC;
    this_p4_3_out : OUT STD_LOGIC_VECTOR (8191 downto 0);
    this_p4_3_out_ap_vld : OUT STD_LOGIC;
    grp_dpu_unit_fu_2995_p_din1 : OUT STD_LOGIC_VECTOR (8191 downto 0);
    grp_dpu_unit_fu_2995_p_din2 : OUT STD_LOGIC_VECTOR (8191 downto 0);
    grp_dpu_unit_fu_2995_p_din3 : OUT STD_LOGIC_VECTOR (8191 downto 0);
    grp_dpu_unit_fu_2995_p_din4 : OUT STD_LOGIC_VECTOR (8191 downto 0);
    grp_dpu_unit_fu_2995_p_din5 : OUT STD_LOGIC_VECTOR (7 downto 0);
    grp_dpu_unit_fu_2995_p_dout0_0 : IN STD_LOGIC_VECTOR (8191 downto 0);
    grp_dpu_unit_fu_2995_p_dout0_1 : IN STD_LOGIC_VECTOR (8191 downto 0);
    grp_dpu_unit_fu_2995_p_ce : OUT STD_LOGIC );
end;


architecture behav of dpu_keygen_dpu_func_Pipeline_FUNC_RD_LOOP3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1024_lc_5 : STD_LOGIC_VECTOR (1023 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1024_lc_10 : STD_LOGIC_VECTOR (1023 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv7_4C : STD_LOGIC_VECTOR (6 downto 0) := "1001100";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal icmp_ln170_reg_359 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln170_fu_225_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal this_pMem_addr_reg_363 : STD_LOGIC_VECTOR (7 downto 0);
    signal this_pMem_addr_reg_363_pp0_iter1_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal this_p3_ret9_reg_374 : STD_LOGIC_VECTOR (8191 downto 0);
    signal this_p4_ret9_reg_380 : STD_LOGIC_VECTOR (8191 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal grp_dpu_unit_fu_185_ap_ce : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0_ignore_call13 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1_ignore_call13 : BOOLEAN;
    signal ap_block_pp0_stage0_11001_ignoreCallOp50 : BOOLEAN;
    signal ap_block_state2_pp0_stage1_iter0_ignore_call13 : BOOLEAN;
    signal ap_block_state4_pp0_stage1_iter1_ignore_call13 : BOOLEAN;
    signal ap_block_pp0_stage1_11001_ignoreCallOp47 : BOOLEAN;
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal idxprom_i310_fu_251_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal idxprom_i353_fu_262_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_76 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_33_fu_231_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_32 : STD_LOGIC_VECTOR (2 downto 0);
    signal this_p4_3_fu_80 : STD_LOGIC_VECTOR (8191 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal ap_sig_allocacmp_this_p4_3_load_1 : STD_LOGIC_VECTOR (8191 downto 0);
    signal this_p3_3_fu_84 : STD_LOGIC_VECTOR (8191 downto 0);
    signal ap_sig_allocacmp_this_p3_3_load_1 : STD_LOGIC_VECTOR (8191 downto 0);
    signal this_p2_1_fu_88 : STD_LOGIC_VECTOR (8191 downto 0);
    signal this_p1_3_fu_92 : STD_LOGIC_VECTOR (8191 downto 0);
    signal ap_block_pp0_stage1_01001 : BOOLEAN;
    signal zext_ln172_fu_237_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln172_fu_245_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln172_1_fu_241_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln173_fu_256_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_block_pp0 : BOOLEAN;
    signal ap_enable_operation_37 : BOOLEAN;
    signal ap_enable_state1_pp0_iter0_stage0 : BOOLEAN;
    signal ap_enable_operation_45 : BOOLEAN;
    signal ap_enable_state2_pp0_iter0_stage1 : BOOLEAN;
    signal ap_enable_operation_54 : BOOLEAN;
    signal ap_enable_state4_pp0_iter1_stage1 : BOOLEAN;
    signal ap_enable_operation_41 : BOOLEAN;
    signal ap_enable_operation_46 : BOOLEAN;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage1,
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
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
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage1)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    i_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln170_fu_225_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_76 <= i_33_fu_231_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_76 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;

    this_p1_3_fu_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                this_p1_3_fu_92 <= this_p1_2_reload;
            elsif (((icmp_ln170_reg_359 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                this_p1_3_fu_92 <= this_pMem_q1;
            end if; 
        end if;
    end process;

    this_p2_1_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                this_p2_1_fu_88 <= this_pMem_load_2;
            elsif (((icmp_ln170_reg_359 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                this_p2_1_fu_88 <= this_pMem_q0;
            end if; 
        end if;
    end process;

    this_p3_3_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                this_p3_3_fu_84 <= this_p3_2_reload;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                this_p3_3_fu_84 <= this_p3_ret9_reg_374;
            end if; 
        end if;
    end process;

    this_p4_3_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                this_p4_3_fu_80 <= this_p4_2_reload;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                this_p4_3_fu_80 <= this_p4_ret9_reg_380;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln170_reg_359 <= icmp_ln170_fu_225_p2;
                this_p3_ret9_reg_374 <= grp_dpu_unit_fu_2995_p_dout0_0;
                this_p4_ret9_reg_380 <= grp_dpu_unit_fu_2995_p_dout0_1;
                this_pMem_addr_reg_363_pp0_iter1_reg <= this_pMem_addr_reg_363;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln170_fu_225_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                this_pMem_addr_reg_363 <= idxprom_i310_fu_251_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone, ap_idle_pp0_1to1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    add_ln172_fu_245_p2 <= std_logic_vector(unsigned(zext_ln172_fu_237_p1) + unsigned(addr1));
    add_ln173_fu_256_p2 <= std_logic_vector(unsigned(zext_ln172_1_fu_241_p1) + unsigned(ap_const_lv7_4C));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);

    ap_block_pp0_assign_proc : process(ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone)
    begin
                ap_block_pp0 <= (((ap_ST_fsm_pp0_stage1 = ap_CS_fsm) and (ap_const_boolean_1 = ap_block_pp0_stage1_subdone)) or ((ap_ST_fsm_pp0_stage0 = ap_CS_fsm) and (ap_const_boolean_1 = ap_block_pp0_stage0_subdone)));
    end process;

        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001_ignoreCallOp50 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001_ignoreCallOp47 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0_ignore_call13 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage1_iter0_ignore_call13 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1_ignore_call13 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage1_iter1_ignore_call13 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, icmp_ln170_reg_359)
    begin
        if (((icmp_ln170_reg_359 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_enable_operation_37_assign_proc : process(icmp_ln170_fu_225_p2)
    begin
                ap_enable_operation_37 <= (icmp_ln170_fu_225_p2 = ap_const_lv1_0);
    end process;


    ap_enable_operation_41_assign_proc : process(icmp_ln170_fu_225_p2)
    begin
                ap_enable_operation_41 <= (icmp_ln170_fu_225_p2 = ap_const_lv1_0);
    end process;


    ap_enable_operation_45_assign_proc : process(icmp_ln170_reg_359)
    begin
                ap_enable_operation_45 <= (icmp_ln170_reg_359 = ap_const_lv1_0);
    end process;


    ap_enable_operation_46_assign_proc : process(icmp_ln170_reg_359)
    begin
                ap_enable_operation_46 <= (icmp_ln170_reg_359 = ap_const_lv1_0);
    end process;

        ap_enable_operation_54 <= (ap_const_boolean_1 = ap_const_boolean_1);
    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_enable_state1_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0)
    begin
                ap_enable_state1_pp0_iter0_stage0 <= ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_enable_state2_pp0_iter0_stage1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1)
    begin
                ap_enable_state2_pp0_iter0_stage1 <= ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1));
    end process;


    ap_enable_state4_pp0_iter1_stage1_assign_proc : process(ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1)
    begin
                ap_enable_state4_pp0_iter1_stage1 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1));
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

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage1;

    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_32_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_76, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_32 <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_i_32 <= i_fu_76;
        end if; 
    end process;


    ap_sig_allocacmp_this_p3_3_load_1_assign_proc : process(ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, this_p3_ret9_reg_374, ap_block_pp0_stage1, this_p3_3_fu_84)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_sig_allocacmp_this_p3_3_load_1 <= this_p3_ret9_reg_374;
        else 
            ap_sig_allocacmp_this_p3_3_load_1 <= this_p3_3_fu_84;
        end if; 
    end process;


    ap_sig_allocacmp_this_p4_3_load_1_assign_proc : process(ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, this_p4_ret9_reg_380, ap_block_pp0_stage1, this_p4_3_fu_80)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_sig_allocacmp_this_p4_3_load_1 <= this_p4_ret9_reg_380;
        else 
            ap_sig_allocacmp_this_p4_3_load_1 <= this_p4_3_fu_80;
        end if; 
    end process;


    grp_dpu_unit_fu_185_ap_ce_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001_ignoreCallOp50, ap_block_pp0_stage1_11001_ignoreCallOp47)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001_ignoreCallOp50) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001_ignoreCallOp47) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            grp_dpu_unit_fu_185_ap_ce <= ap_const_logic_1;
        else 
            grp_dpu_unit_fu_185_ap_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_dpu_unit_fu_2995_p_ce <= grp_dpu_unit_fu_185_ap_ce;
    grp_dpu_unit_fu_2995_p_din1 <= this_pMem_q1;
    grp_dpu_unit_fu_2995_p_din2 <= this_pMem_q0;
    grp_dpu_unit_fu_2995_p_din3 <= ap_sig_allocacmp_this_p3_3_load_1;
    grp_dpu_unit_fu_2995_p_din4 <= ap_sig_allocacmp_this_p4_3_load_1;
    grp_dpu_unit_fu_2995_p_din5 <= ap_const_lv8_1;
    i_33_fu_231_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_32) + unsigned(ap_const_lv3_1));
    icmp_ln170_fu_225_p2 <= "1" when (ap_sig_allocacmp_i_32 = itr_cast) else "0";
    idxprom_i310_fu_251_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln172_fu_245_p2),64));
    idxprom_i353_fu_262_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln173_fu_256_p2),64));
    this_p1_3_out <= this_p1_3_fu_92;

    this_p1_3_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage1, icmp_ln170_reg_359, ap_block_pp0_stage1_11001)
    begin
        if (((icmp_ln170_reg_359 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            this_p1_3_out_ap_vld <= ap_const_logic_1;
        else 
            this_p1_3_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    this_p2_1_out <= this_p2_1_fu_88;

    this_p2_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage1, icmp_ln170_reg_359, ap_block_pp0_stage1_11001)
    begin
        if (((icmp_ln170_reg_359 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            this_p2_1_out_ap_vld <= ap_const_logic_1;
        else 
            this_p2_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    this_p3_3_out <= this_p3_3_fu_84;

    this_p3_3_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage1, icmp_ln170_reg_359, ap_block_pp0_stage1_11001)
    begin
        if (((icmp_ln170_reg_359 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            this_p3_3_out_ap_vld <= ap_const_logic_1;
        else 
            this_p3_3_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    this_p4_3_out <= this_p4_3_fu_80;

    this_p4_3_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage1, icmp_ln170_reg_359, ap_block_pp0_stage1_11001)
    begin
        if (((icmp_ln170_reg_359 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            this_p4_3_out_ap_vld <= ap_const_logic_1;
        else 
            this_p4_3_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    this_pMem_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, this_pMem_addr_reg_363_pp0_iter1_reg, ap_block_pp0_stage1, ap_block_pp0_stage0, idxprom_i353_fu_262_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            this_pMem_address0 <= this_pMem_addr_reg_363_pp0_iter1_reg;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_pMem_address0 <= idxprom_i353_fu_262_p1(8 - 1 downto 0);
        else 
            this_pMem_address0 <= "XXXXXXXX";
        end if; 
    end process;

    this_pMem_address1 <= idxprom_i310_fu_251_p1(8 - 1 downto 0);

    this_pMem_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            this_pMem_ce0 <= ap_const_logic_1;
        else 
            this_pMem_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    this_pMem_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_pMem_ce1 <= ap_const_logic_1;
        else 
            this_pMem_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    this_pMem_d0 <= this_p3_ret9_reg_374;

    this_pMem_we0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            this_pMem_we0 <= ap_const_lv1024_lc_10;
        else 
            this_pMem_we0 <= ap_const_lv1024_lc_5;
        end if; 
    end process;

    zext_ln172_1_fu_241_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_32),7));
    zext_ln172_fu_237_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_32),8));
end behav;
