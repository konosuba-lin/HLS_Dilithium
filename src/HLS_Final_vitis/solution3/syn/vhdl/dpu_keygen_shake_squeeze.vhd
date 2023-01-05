-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dpu_keygen_shake_squeeze is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    this_s_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    this_s_ce0 : OUT STD_LOGIC;
    this_s_we0 : OUT STD_LOGIC;
    this_s_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    this_s_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    this_s_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    this_s_ce1 : OUT STD_LOGIC;
    this_s_we1 : OUT STD_LOGIC;
    this_s_d1 : OUT STD_LOGIC_VECTOR (63 downto 0);
    this_s_q1 : IN STD_LOGIC_VECTOR (63 downto 0);
    out_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    out_r_ce0 : OUT STD_LOGIC;
    out_r_we0 : OUT STD_LOGIC;
    out_r_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    out_r_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    out_r_ce1 : OUT STD_LOGIC;
    out_r_we1 : OUT STD_LOGIC;
    out_r_d1 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of dpu_keygen_shake_squeeze is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_pp0_stage3 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv32_28 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101000";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_37 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110111";
    constant ap_const_lv32_38 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_lv6_3 : STD_LOGIC_VECTOR (5 downto 0) := "000011";
    constant ap_const_lv6_4 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_const_lv6_5 : STD_LOGIC_VECTOR (5 downto 0) := "000101";
    constant ap_const_lv6_6 : STD_LOGIC_VECTOR (5 downto 0) := "000110";
    constant ap_const_lv6_7 : STD_LOGIC_VECTOR (5 downto 0) := "000111";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_3_reg_374 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln467_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln467_reg_379 : STD_LOGIC_VECTOR (0 downto 0);
    signal shl_ln_fu_208_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal shl_ln_reg_388 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state4_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal trunc_ln22_5_reg_398 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln22_6_reg_403 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln22_7_reg_408 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln22_8_reg_413 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln22_9_reg_418 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln22_1_reg_423 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_KeccakF1600_StatePermute_fu_170_ap_done : STD_LOGIC;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_state6_pp0_stage3_iter0 : BOOLEAN;
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage3 : signal is "none";
    signal grp_KeccakF1600_StatePermute_fu_170_ap_start : STD_LOGIC;
    signal grp_KeccakF1600_StatePermute_fu_170_ap_idle : STD_LOGIC;
    signal grp_KeccakF1600_StatePermute_fu_170_ap_ready : STD_LOGIC;
    signal grp_KeccakF1600_StatePermute_fu_170_this_s_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_KeccakF1600_StatePermute_fu_170_this_s_ce0 : STD_LOGIC;
    signal grp_KeccakF1600_StatePermute_fu_170_this_s_we0 : STD_LOGIC;
    signal grp_KeccakF1600_StatePermute_fu_170_this_s_d0 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_KeccakF1600_StatePermute_fu_170_this_s_address1 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_KeccakF1600_StatePermute_fu_170_this_s_ce1 : STD_LOGIC;
    signal grp_KeccakF1600_StatePermute_fu_170_this_s_we1 : STD_LOGIC;
    signal grp_KeccakF1600_StatePermute_fu_170_this_s_d1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_KeccakF1600_StatePermute_fu_170_ap_start_reg : STD_LOGIC := '0';
    signal zext_ln467_fu_198_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln468_fu_215_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal zext_ln22_fu_242_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_7_fu_312_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal zext_ln22_8_fu_322_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_9_fu_332_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal zext_ln22_10_fu_342_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_11_fu_352_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_12_fu_362_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_80 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_4_fu_192_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln22_fu_220_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state5_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal ap_block_pp0_stage3_11001 : BOOLEAN;
    signal or_ln22_fu_236_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln22_7_fu_307_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln22_8_fu_317_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln22_9_fu_327_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln22_10_fu_337_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln22_11_fu_347_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln22_12_fu_357_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component dpu_keygen_KeccakF1600_StatePermute IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        this_s_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
        this_s_ce0 : OUT STD_LOGIC;
        this_s_we0 : OUT STD_LOGIC;
        this_s_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
        this_s_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
        this_s_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
        this_s_ce1 : OUT STD_LOGIC;
        this_s_we1 : OUT STD_LOGIC;
        this_s_d1 : OUT STD_LOGIC_VECTOR (63 downto 0);
        this_s_q1 : IN STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    grp_KeccakF1600_StatePermute_fu_170 : component dpu_keygen_KeccakF1600_StatePermute
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_KeccakF1600_StatePermute_fu_170_ap_start,
        ap_done => grp_KeccakF1600_StatePermute_fu_170_ap_done,
        ap_idle => grp_KeccakF1600_StatePermute_fu_170_ap_idle,
        ap_ready => grp_KeccakF1600_StatePermute_fu_170_ap_ready,
        this_s_address0 => grp_KeccakF1600_StatePermute_fu_170_this_s_address0,
        this_s_ce0 => grp_KeccakF1600_StatePermute_fu_170_this_s_ce0,
        this_s_we0 => grp_KeccakF1600_StatePermute_fu_170_this_s_we0,
        this_s_d0 => grp_KeccakF1600_StatePermute_fu_170_this_s_d0,
        this_s_q0 => this_s_q0,
        this_s_address1 => grp_KeccakF1600_StatePermute_fu_170_this_s_address1,
        this_s_ce1 => grp_KeccakF1600_StatePermute_fu_170_this_s_ce1,
        this_s_we1 => grp_KeccakF1600_StatePermute_fu_170_this_s_we1,
        this_s_d1 => grp_KeccakF1600_StatePermute_fu_170_this_s_d1,
        this_s_q1 => this_s_q1);





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


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_KeccakF1600_StatePermute_fu_170_ap_done = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
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
                if ((((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage3_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_KeccakF1600_StatePermute_fu_170_ap_done = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_KeccakF1600_StatePermute_fu_170_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_KeccakF1600_StatePermute_fu_170_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_KeccakF1600_StatePermute_fu_170_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_KeccakF1600_StatePermute_fu_170_ap_ready = ap_const_logic_1)) then 
                    grp_KeccakF1600_StatePermute_fu_170_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_fu_80 <= ap_const_lv3_0;
            elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln467_fu_186_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                i_fu_80 <= i_4_fu_192_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_3_reg_374 <= i_fu_80;
                icmp_ln467_reg_379 <= icmp_ln467_fu_186_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln467_reg_379 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                    shl_ln_reg_388(5 downto 3) <= shl_ln_fu_208_p3(5 downto 3);
                trunc_ln22_1_reg_423 <= this_s_q0(63 downto 56);
                trunc_ln22_5_reg_398 <= this_s_q0(23 downto 16);
                trunc_ln22_6_reg_403 <= this_s_q0(31 downto 24);
                trunc_ln22_7_reg_408 <= this_s_q0(39 downto 32);
                trunc_ln22_8_reg_413 <= this_s_q0(47 downto 40);
                trunc_ln22_9_reg_418 <= this_s_q0(55 downto 48);
            end if;
        end if;
    end process;
    shl_ln_reg_388(2 downto 0) <= "000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln467_fu_186_p2, ap_enable_reg_pp0_iter0, ap_CS_fsm_state2, grp_KeccakF1600_StatePermute_fu_170_ap_done, ap_block_pp0_stage0_subdone, ap_block_pp0_stage3_subdone, ap_block_pp0_stage1_subdone, ap_block_pp0_stage2_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_KeccakF1600_StatePermute_fu_170_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln467_fu_186_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln467_fu_186_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
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
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(3);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(4);
    ap_CS_fsm_pp0_stage3 <= ap_CS_fsm(5);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state8 <= ap_CS_fsm(6);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(grp_KeccakF1600_StatePermute_fu_170_ap_done)
    begin
        if ((grp_KeccakF1600_StatePermute_fu_170_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state8_blk <= ap_const_logic_0;
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage3_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln467_fu_186_p2)
    begin
        if ((icmp_ln467_fu_186_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_KeccakF1600_StatePermute_fu_170_ap_start <= grp_KeccakF1600_StatePermute_fu_170_ap_start_reg;
    i_4_fu_192_p2 <= std_logic_vector(unsigned(i_fu_80) + unsigned(ap_const_lv3_1));
    icmp_ln467_fu_186_p2 <= "1" when (i_fu_80 = ap_const_lv3_6) else "0";
    or_ln22_10_fu_337_p2 <= (shl_ln_reg_388 or ap_const_lv6_5);
    or_ln22_11_fu_347_p2 <= (shl_ln_reg_388 or ap_const_lv6_6);
    or_ln22_12_fu_357_p2 <= (shl_ln_reg_388 or ap_const_lv6_7);
    or_ln22_7_fu_307_p2 <= (shl_ln_reg_388 or ap_const_lv6_2);
    or_ln22_8_fu_317_p2 <= (shl_ln_reg_388 or ap_const_lv6_3);
    or_ln22_9_fu_327_p2 <= (shl_ln_reg_388 or ap_const_lv6_4);
    or_ln22_fu_236_p2 <= (shl_ln_fu_208_p3 or ap_const_lv6_1);

    out_r_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0, ap_block_pp0_stage1, zext_ln22_fu_242_p1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, zext_ln22_8_fu_322_p1, ap_block_pp0_stage3, zext_ln22_10_fu_342_p1, zext_ln22_12_fu_362_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            out_r_address0 <= zext_ln22_12_fu_362_p1(6 - 1 downto 0);
        elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            out_r_address0 <= zext_ln22_10_fu_342_p1(6 - 1 downto 0);
        elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            out_r_address0 <= zext_ln22_8_fu_322_p1(6 - 1 downto 0);
        elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            out_r_address0 <= zext_ln22_fu_242_p1(6 - 1 downto 0);
        else 
            out_r_address0 <= "XXXXXX";
        end if; 
    end process;


    out_r_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0, zext_ln468_fu_215_p1, ap_block_pp0_stage1, zext_ln22_7_fu_312_p1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, zext_ln22_9_fu_332_p1, ap_block_pp0_stage3, zext_ln22_11_fu_352_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            out_r_address1 <= zext_ln22_11_fu_352_p1(6 - 1 downto 0);
        elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            out_r_address1 <= zext_ln22_9_fu_332_p1(6 - 1 downto 0);
        elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            out_r_address1 <= zext_ln22_7_fu_312_p1(6 - 1 downto 0);
        elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            out_r_address1 <= zext_ln468_fu_215_p1(6 - 1 downto 0);
        else 
            out_r_address1 <= "XXXXXX";
        end if; 
    end process;


    out_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            out_r_ce0 <= ap_const_logic_1;
        else 
            out_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    out_r_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            out_r_ce1 <= ap_const_logic_1;
        else 
            out_r_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    out_r_d0_assign_proc : process(this_s_q0, ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, trunc_ln22_6_reg_403, trunc_ln22_8_reg_413, trunc_ln22_1_reg_423, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0, ap_block_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, ap_block_pp0_stage3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            out_r_d0 <= trunc_ln22_1_reg_423;
        elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            out_r_d0 <= trunc_ln22_8_reg_413;
        elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            out_r_d0 <= trunc_ln22_6_reg_403;
        elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            out_r_d0 <= this_s_q0(15 downto 8);
        else 
            out_r_d0 <= "XXXXXXXX";
        end if; 
    end process;


    out_r_d1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, trunc_ln22_5_reg_398, trunc_ln22_7_reg_408, trunc_ln22_9_reg_418, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage0, ap_block_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, ap_block_pp0_stage3, trunc_ln22_fu_220_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            out_r_d1 <= trunc_ln22_9_reg_418;
        elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            out_r_d1 <= trunc_ln22_7_reg_408;
        elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            out_r_d1 <= trunc_ln22_5_reg_398;
        elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            out_r_d1 <= trunc_ln22_fu_220_p1;
        else 
            out_r_d1 <= "XXXXXXXX";
        end if; 
    end process;


    out_r_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, icmp_ln467_reg_379, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln467_reg_379 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln467_reg_379 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln467_reg_379 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            out_r_we0 <= ap_const_logic_1;
        else 
            out_r_we0 <= ap_const_logic_0;
        end if; 
    end process;


    out_r_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, icmp_ln467_reg_379, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln467_reg_379 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln467_reg_379 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln467_reg_379 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
            out_r_we1 <= ap_const_logic_1;
        else 
            out_r_we1 <= ap_const_logic_0;
        end if; 
    end process;

    shl_ln_fu_208_p3 <= (i_3_reg_374 & ap_const_lv3_0);

    this_s_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_state2, grp_KeccakF1600_StatePermute_fu_170_this_s_address0, zext_ln467_fu_198_p1, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_s_address0 <= zext_ln467_fu_198_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            this_s_address0 <= grp_KeccakF1600_StatePermute_fu_170_this_s_address0;
        else 
            this_s_address0 <= "XXXXX";
        end if; 
    end process;

    this_s_address1 <= grp_KeccakF1600_StatePermute_fu_170_this_s_address1;

    this_s_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0, ap_CS_fsm_state2, grp_KeccakF1600_StatePermute_fu_170_this_s_ce0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_s_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            this_s_ce0 <= grp_KeccakF1600_StatePermute_fu_170_this_s_ce0;
        else 
            this_s_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    this_s_ce1_assign_proc : process(ap_CS_fsm_state2, grp_KeccakF1600_StatePermute_fu_170_this_s_ce1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            this_s_ce1 <= grp_KeccakF1600_StatePermute_fu_170_this_s_ce1;
        else 
            this_s_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    this_s_d0 <= grp_KeccakF1600_StatePermute_fu_170_this_s_d0;
    this_s_d1 <= grp_KeccakF1600_StatePermute_fu_170_this_s_d1;

    this_s_we0_assign_proc : process(ap_CS_fsm_state2, grp_KeccakF1600_StatePermute_fu_170_this_s_we0)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            this_s_we0 <= grp_KeccakF1600_StatePermute_fu_170_this_s_we0;
        else 
            this_s_we0 <= ap_const_logic_0;
        end if; 
    end process;


    this_s_we1_assign_proc : process(ap_CS_fsm_state2, grp_KeccakF1600_StatePermute_fu_170_this_s_we1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            this_s_we1 <= grp_KeccakF1600_StatePermute_fu_170_this_s_we1;
        else 
            this_s_we1 <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln22_fu_220_p1 <= this_s_q0(8 - 1 downto 0);
    zext_ln22_10_fu_342_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln22_10_fu_337_p2),64));
    zext_ln22_11_fu_352_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln22_11_fu_347_p2),64));
    zext_ln22_12_fu_362_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln22_12_fu_357_p2),64));
    zext_ln22_7_fu_312_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln22_7_fu_307_p2),64));
    zext_ln22_8_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln22_8_fu_317_p2),64));
    zext_ln22_9_fu_332_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln22_9_fu_327_p2),64));
    zext_ln22_fu_242_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln22_fu_236_p2),64));
    zext_ln467_fu_198_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_fu_80),64));
    zext_ln468_fu_215_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_208_p3),64));
end behav;