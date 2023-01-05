-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dpu_keygen_dpu_pack_4_Pipeline_VITIS_LOOP_547_14 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    this_5_13_reload : IN STD_LOGIC_VECTOR (8191 downto 0);
    sk_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    sk_ce0 : OUT STD_LOGIC;
    sk_we0 : OUT STD_LOGIC;
    sk_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ptr_i : IN STD_LOGIC_VECTOR (31 downto 0);
    ptr_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    ptr_o_ap_vld : OUT STD_LOGIC );
end;


architecture behav of dpu_keygen_dpu_pack_4_Pipeline_VITIS_LOOP_547_14 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv13_20 : STD_LOGIC_VECTOR (12 downto 0) := "0000000100000";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv8_4 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln547_fu_85_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal zext_ln551_fu_174_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln552_fu_179_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_54 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln547_fu_91_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_29 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln549_fu_97_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal shl_ln_fu_101_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln549_fu_109_p1 : STD_LOGIC_VECTOR (8191 downto 0);
    signal lshr_ln549_fu_113_p2 : STD_LOGIC_VECTOR (8191 downto 0);
    signal or_ln550_fu_123_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln550_fu_129_p1 : STD_LOGIC_VECTOR (8191 downto 0);
    signal lshr_ln550_fu_133_p2 : STD_LOGIC_VECTOR (8191 downto 0);
    signal trunc_ln551_fu_139_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal sub_ln551_fu_143_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln549_1_fu_119_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal shl_ln4_fu_149_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal sub_ln551_1_fu_157_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if ((icmp_ln547_fu_85_p2 = ap_const_lv1_0)) then 
                    i_fu_54 <= add_ln547_fu_91_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_54 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln547_fu_91_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_29) + unsigned(ap_const_lv8_1));
    add_ln552_fu_179_p2 <= std_logic_vector(unsigned(ptr_i) + unsigned(ap_const_lv32_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, icmp_ln547_fu_85_p2, ap_start_int)
    begin
        if (((icmp_ln547_fu_85_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_29_assign_proc : process(ap_CS_fsm_state1, i_fu_54, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i_29 <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_i_29 <= i_fu_54;
        end if; 
    end process;

    icmp_ln547_fu_85_p2 <= "1" when (ap_sig_allocacmp_i_29 = ap_const_lv8_80) else "0";
    lshr_ln549_fu_113_p2 <= std_logic_vector(shift_right(unsigned(this_5_13_reload),to_integer(unsigned('0' & zext_ln549_fu_109_p1(31-1 downto 0)))));
    lshr_ln550_fu_133_p2 <= std_logic_vector(shift_right(unsigned(this_5_13_reload),to_integer(unsigned('0' & zext_ln550_fu_129_p1(31-1 downto 0)))));
    or_ln550_fu_123_p2 <= (shl_ln_fu_101_p3 or ap_const_lv13_20);

    ptr_o_assign_proc : process(ap_CS_fsm_state1, icmp_ln547_fu_85_p2, ptr_i, add_ln552_fu_179_p2)
    begin
        if (((icmp_ln547_fu_85_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ptr_o <= add_ln552_fu_179_p2;
        else 
            ptr_o <= ptr_i;
        end if; 
    end process;


    ptr_o_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln547_fu_85_p2, ap_start_int)
    begin
        if (((icmp_ln547_fu_85_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ptr_o_ap_vld <= ap_const_logic_1;
        else 
            ptr_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    shl_ln4_fu_149_p3 <= (sub_ln551_fu_143_p2 & ap_const_lv4_0);
    shl_ln_fu_101_p3 <= (trunc_ln549_fu_97_p1 & ap_const_lv6_0);
    sk_address0 <= zext_ln551_fu_174_p1(12 - 1 downto 0);

    sk_ce0_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            sk_ce0 <= ap_const_logic_1;
        else 
            sk_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    sk_d0 <= (sub_ln551_1_fu_157_p2 or shl_ln4_fu_149_p3);

    sk_we0_assign_proc : process(ap_CS_fsm_state1, icmp_ln547_fu_85_p2, ap_start_int)
    begin
        if (((icmp_ln547_fu_85_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            sk_we0 <= ap_const_logic_1;
        else 
            sk_we0 <= ap_const_logic_0;
        end if; 
    end process;

    sub_ln551_1_fu_157_p2 <= std_logic_vector(unsigned(ap_const_lv8_4) - unsigned(trunc_ln549_1_fu_119_p1));
    sub_ln551_fu_143_p2 <= std_logic_vector(unsigned(ap_const_lv4_4) - unsigned(trunc_ln551_fu_139_p1));
    trunc_ln549_1_fu_119_p1 <= lshr_ln549_fu_113_p2(8 - 1 downto 0);
    trunc_ln549_fu_97_p1 <= ap_sig_allocacmp_i_29(7 - 1 downto 0);
    trunc_ln551_fu_139_p1 <= lshr_ln550_fu_133_p2(4 - 1 downto 0);
    zext_ln549_fu_109_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_101_p3),8192));
    zext_ln550_fu_129_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln550_fu_123_p2),8192));
    zext_ln551_fu_174_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ptr_i),64));
end behav;
