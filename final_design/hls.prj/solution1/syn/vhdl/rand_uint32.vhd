-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.2
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rand_uint32 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_ce : IN STD_LOGIC;
    ap_return : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of rand_uint32 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_pp0_stg0_fsm_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv16_18D : STD_LOGIC_VECTOR (15 downto 0) := "0000000110001101";
    constant ap_const_lv16_26F : STD_LOGIC_VECTOR (15 downto 0) := "0000001001101111";
    constant ap_const_lv16_FD91 : STD_LOGIC_VECTOR (15 downto 0) := "1111110110010001";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv64_9908B0DF : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000010011001000010001011000011011111";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv17_0 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000000";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC;
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it2 : STD_LOGIC := '0';
    signal kk : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal mt_kk_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal mt_kk_ce0 : STD_LOGIC;
    signal mt_kk_q0 : STD_LOGIC_VECTOR (63 downto 0);
    signal mt_kk_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal mt_kk_ce1 : STD_LOGIC;
    signal mt_kk_we1 : STD_LOGIC;
    signal mt_kk_d1 : STD_LOGIC_VECTOR (63 downto 0);
    signal kk_p1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    signal mt_kkp1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal mt_kkp1_ce0 : STD_LOGIC;
    signal mt_kkp1_q0 : STD_LOGIC_VECTOR (63 downto 0);
    signal mt_kkp1_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal mt_kkp1_ce1 : STD_LOGIC;
    signal mt_kkp1_we1 : STD_LOGIC;
    signal mt_kkp1_d1 : STD_LOGIC_VECTOR (63 downto 0);
    signal kk_pm : STD_LOGIC_VECTOR (15 downto 0) := "0000000110001101";
    signal mt_kkpm_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal mt_kkpm_ce0 : STD_LOGIC;
    signal mt_kkpm_q0 : STD_LOGIC_VECTOR (63 downto 0);
    signal mt_kkpm_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal mt_kkpm_ce1 : STD_LOGIC;
    signal mt_kkpm_we1 : STD_LOGIC;
    signal mt_kkpm_d1 : STD_LOGIC_VECTOR (63 downto 0);
    signal mt_kk_addr_reg_535 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_reg_ppstg_mt_kk_addr_reg_535_pp0_it1 : STD_LOGIC_VECTOR (9 downto 0);
    signal mt_kkp1_addr_reg_541 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_reg_ppstg_mt_kkp1_addr_reg_541_pp0_it1 : STD_LOGIC_VECTOR (9 downto 0);
    signal mt_kkpm_addr_reg_547 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_reg_ppstg_mt_kkpm_addr_reg_547_pp0_it1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_reg_553 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_reg_558 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp1_fu_291_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp1_reg_563 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_142_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_fu_151_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_9_fu_160_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal a_assign_1_fu_183_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal a_assign_3_fu_215_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal a_assign_5_fu_247_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal mt_kk_new_fu_307_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal a_assign_fu_165_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_i_fu_171_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_i_fu_177_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal a_assign_2_fu_197_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_i1_fu_203_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_i_fu_209_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal a_assign_4_fu_229_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_i3_fu_235_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_i_fu_241_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_7_fu_269_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mag01_cast_cast_fu_273_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_297_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_cast_fu_303_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_315_p4 : STD_LOGIC_VECTOR (52 downto 0);
    signal tmp_4_fu_325_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal y_1_fu_329_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_12_fu_335_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_11_fu_343_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_13_fu_353_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_15_fu_361_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_14_fu_369_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_16_fu_379_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_18_fu_387_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_fu_395_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_23_fu_405_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_fu_409_p19 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_10_cast_fu_449_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal y_2_fu_453_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_19_fu_459_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_20_fu_469_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_21_fu_479_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_8_fu_489_p7 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_12_cast_fu_505_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal y_3_fu_509_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_10_fu_515_p4 : STD_LOGIC_VECTOR (45 downto 0);
    signal tmp_22_fu_525_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_pprstidle_pp0 : STD_LOGIC;

    component rand_uint32_mt_kk IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (63 downto 0);
        address1 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    mt_kk_U : component rand_uint32_mt_kk
    generic map (
        DataWidth => 64,
        AddressRange => 624,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => mt_kk_address0,
        ce0 => mt_kk_ce0,
        q0 => mt_kk_q0,
        address1 => mt_kk_address1,
        ce1 => mt_kk_ce1,
        we1 => mt_kk_we1,
        d1 => mt_kk_d1);

    mt_kkp1_U : component rand_uint32_mt_kk
    generic map (
        DataWidth => 64,
        AddressRange => 624,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => mt_kkp1_address0,
        ce0 => mt_kkp1_ce0,
        q0 => mt_kkp1_q0,
        address1 => mt_kkp1_address1,
        ce1 => mt_kkp1_ce1,
        we1 => mt_kkp1_we1,
        d1 => mt_kkp1_d1);

    mt_kkpm_U : component rand_uint32_mt_kk
    generic map (
        DataWidth => 64,
        AddressRange => 624,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => mt_kkpm_address0,
        ce0 => mt_kkpm_ce0,
        q0 => mt_kkpm_q0,
        address1 => mt_kkpm_address1,
        ce1 => mt_kkpm_ce1,
        we1 => mt_kkpm_we1,
        d1 => mt_kkpm_d1);





    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it1 assign process. --
    ap_reg_ppiten_pp0_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
            else
                if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and not((((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0)) or not((ap_const_logic_1 = ap_ce)))))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it2 assign process. --
    ap_reg_ppiten_pp0_it2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
            else
                if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and not((((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0)) or not((ap_const_logic_1 = ap_ce)))))) then 
                    ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
                end if; 
            end if;
        end if;
    end process;


    -- kk assign process. --
    kk_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                kk <= ap_const_lv16_0;
            else
                if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce))) then 
                    kk <= a_assign_1_fu_183_p3;
                end if; 
            end if;
        end if;
    end process;


    -- kk_p1 assign process. --
    kk_p1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                kk_p1 <= ap_const_lv16_1;
            else
                if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce))) then 
                    kk_p1 <= a_assign_3_fu_215_p3;
                end if; 
            end if;
        end if;
    end process;


    -- kk_pm assign process. --
    kk_pm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                kk_pm <= ap_const_lv16_18D;
            else
                if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce))) then 
                    kk_pm <= a_assign_5_fu_247_p3;
                end if; 
            end if;
        end if;
    end process;


    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce))) then
                ap_reg_ppstg_mt_kk_addr_reg_535_pp0_it1 <= mt_kk_addr_reg_535;
                ap_reg_ppstg_mt_kkp1_addr_reg_541_pp0_it1 <= mt_kkp1_addr_reg_541;
                ap_reg_ppstg_mt_kkpm_addr_reg_547_pp0_it1 <= mt_kkpm_addr_reg_547;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce))) then
                mt_kk_addr_reg_535 <= tmp_fu_142_p1(10 - 1 downto 0);
                mt_kkp1_addr_reg_541 <= tmp_5_fu_151_p1(10 - 1 downto 0);
                mt_kkpm_addr_reg_547 <= tmp_9_fu_160_p1(10 - 1 downto 0);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce))) then
                tmp1_reg_563 <= tmp1_fu_291_p2;
                tmp_1_reg_553 <= mt_kk_q0(31 downto 31);
                tmp_3_reg_558 <= mt_kkp1_q0(30 downto 1);
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_ce, ap_sig_pprstidle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_pp0_stg0_fsm_0 => 
                ap_NS_fsm <= ap_ST_pp0_stg0_fsm_0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    a_assign_1_fu_183_p3 <= 
        tmp_1_i_fu_177_p2 when (tmp_i_fu_171_p2(0) = '1') else 
        a_assign_fu_165_p2;
    a_assign_2_fu_197_p2 <= std_logic_vector(unsigned(kk_p1) + unsigned(ap_const_lv16_1));
    a_assign_3_fu_215_p3 <= 
        tmp_2_i_fu_209_p2 when (tmp_i1_fu_203_p2(0) = '1') else 
        a_assign_2_fu_197_p2;
    a_assign_4_fu_229_p2 <= std_logic_vector(unsigned(kk_pm) + unsigned(ap_const_lv16_1));
    a_assign_5_fu_247_p3 <= 
        tmp_3_i_fu_241_p2 when (tmp_i3_fu_235_p2(0) = '1') else 
        a_assign_4_fu_229_p2;
    a_assign_fu_165_p2 <= std_logic_vector(unsigned(kk) + unsigned(ap_const_lv16_1));

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_start, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, ap_ce)
    begin
        if (((not((ap_const_logic_1 = ap_start)) and (ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_reg_ppiten_pp0_it2)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_0 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_0 = ap_reg_ppiten_pp0_it1) and (ap_const_logic_0 = ap_reg_ppiten_pp0_it2))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_start, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_ce)
    begin
        if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_reg_ppiten_pp0_it0 <= ap_start;
    ap_return <= (tmp_22_fu_525_p1 xor y_3_fu_509_p2);

    -- ap_sig_pprstidle_pp0 assign process. --
    ap_sig_pprstidle_pp0_assign_proc : process(ap_start, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_0 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_0 = ap_reg_ppiten_pp0_it1) and (ap_const_logic_0 = ap_start))) then 
            ap_sig_pprstidle_pp0 <= ap_const_logic_1;
        else 
            ap_sig_pprstidle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    mag01_cast_cast_fu_273_p3 <= 
        ap_const_lv64_9908B0DF when (tmp_7_fu_269_p1(0) = '1') else 
        ap_const_lv64_0;
    mt_kk_address0 <= tmp_fu_142_p1(10 - 1 downto 0);
    mt_kk_address1 <= ap_reg_ppstg_mt_kk_addr_reg_535_pp0_it1;

    -- mt_kk_ce0 assign process. --
    mt_kk_ce0_assign_proc : process(ap_start, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_ce)
    begin
        if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce))) then 
            mt_kk_ce0 <= ap_const_logic_1;
        else 
            mt_kk_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    -- mt_kk_ce1 assign process. --
    mt_kk_ce1_assign_proc : process(ap_start, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, ap_ce)
    begin
        if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce))) then 
            mt_kk_ce1 <= ap_const_logic_1;
        else 
            mt_kk_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    mt_kk_d1 <= mt_kk_new_fu_307_p2;
    mt_kk_new_fu_307_p2 <= (tmp1_reg_563 xor tmp_cast_fu_303_p1);

    -- mt_kk_we1 assign process. --
    mt_kk_we1_assign_proc : process(ap_start, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, ap_ce)
    begin
        if ((((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce)))) then 
            mt_kk_we1 <= ap_const_logic_1;
        else 
            mt_kk_we1 <= ap_const_logic_0;
        end if; 
    end process;

    mt_kkp1_address0 <= tmp_5_fu_151_p1(10 - 1 downto 0);
    mt_kkp1_address1 <= ap_reg_ppstg_mt_kkp1_addr_reg_541_pp0_it1;

    -- mt_kkp1_ce0 assign process. --
    mt_kkp1_ce0_assign_proc : process(ap_start, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_ce)
    begin
        if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce))) then 
            mt_kkp1_ce0 <= ap_const_logic_1;
        else 
            mt_kkp1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    -- mt_kkp1_ce1 assign process. --
    mt_kkp1_ce1_assign_proc : process(ap_start, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, ap_ce)
    begin
        if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce))) then 
            mt_kkp1_ce1 <= ap_const_logic_1;
        else 
            mt_kkp1_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    mt_kkp1_d1 <= mt_kk_new_fu_307_p2;

    -- mt_kkp1_we1 assign process. --
    mt_kkp1_we1_assign_proc : process(ap_start, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, ap_ce)
    begin
        if ((((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce)))) then 
            mt_kkp1_we1 <= ap_const_logic_1;
        else 
            mt_kkp1_we1 <= ap_const_logic_0;
        end if; 
    end process;

    mt_kkpm_address0 <= tmp_9_fu_160_p1(10 - 1 downto 0);
    mt_kkpm_address1 <= ap_reg_ppstg_mt_kkpm_addr_reg_547_pp0_it1;

    -- mt_kkpm_ce0 assign process. --
    mt_kkpm_ce0_assign_proc : process(ap_start, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_ce)
    begin
        if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce))) then 
            mt_kkpm_ce0 <= ap_const_logic_1;
        else 
            mt_kkpm_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    -- mt_kkpm_ce1 assign process. --
    mt_kkpm_ce1_assign_proc : process(ap_start, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, ap_ce)
    begin
        if (((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce))) then 
            mt_kkpm_ce1 <= ap_const_logic_1;
        else 
            mt_kkpm_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    mt_kkpm_d1 <= mt_kk_new_fu_307_p2;

    -- mt_kkpm_we1 assign process. --
    mt_kkpm_we1_assign_proc : process(ap_start, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, ap_ce)
    begin
        if ((((ap_ST_pp0_stg0_fsm_0 = ap_CS_fsm) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce)))) then 
            mt_kkpm_we1 <= ap_const_logic_1;
        else 
            mt_kkpm_we1 <= ap_const_logic_0;
        end if; 
    end process;

    tmp1_fu_291_p2 <= (mag01_cast_cast_fu_273_p3 xor mt_kkpm_q0);
    tmp_10_cast_fu_449_p1 <= std_logic_vector(resize(unsigned(tmp_6_fu_409_p19),64));
    tmp_10_fu_515_p4 <= y_3_fu_509_p2(63 downto 18);
    tmp_11_fu_343_p4 <= y_1_fu_329_p2(21 downto 19);
    tmp_12_cast_fu_505_p1 <= std_logic_vector(resize(unsigned(tmp_8_fu_489_p7),64));
    tmp_12_fu_335_p3 <= y_1_fu_329_p2(24 downto 24);
    tmp_13_fu_353_p3 <= y_1_fu_329_p2(17 downto 17);
    tmp_14_fu_369_p4 <= y_1_fu_329_p2(12 downto 11);
    tmp_15_fu_361_p3 <= y_1_fu_329_p2(14 downto 14);
    tmp_16_fu_379_p3 <= y_1_fu_329_p2(7 downto 7);
    tmp_17_fu_395_p4 <= y_1_fu_329_p2(3 downto 2);
    tmp_18_fu_387_p3 <= y_1_fu_329_p2(5 downto 5);
    tmp_19_fu_459_p4 <= y_2_fu_453_p2(16 downto 14);
    tmp_1_i_fu_177_p2 <= std_logic_vector(unsigned(kk) + unsigned(ap_const_lv16_FD91));
    tmp_20_fu_469_p4 <= y_2_fu_453_p2(12 downto 7);
    tmp_21_fu_479_p4 <= y_2_fu_453_p2(3 downto 2);
    tmp_22_fu_525_p1 <= std_logic_vector(resize(unsigned(tmp_10_fu_515_p4),64));
    tmp_23_fu_405_p1 <= y_1_fu_329_p2(1 - 1 downto 0);
    tmp_2_fu_315_p4 <= mt_kk_new_fu_307_p2(63 downto 11);
    tmp_2_i_fu_209_p2 <= std_logic_vector(unsigned(kk_p1) + unsigned(ap_const_lv16_FD91));
    tmp_3_i_fu_241_p2 <= std_logic_vector(unsigned(kk_pm) + unsigned(ap_const_lv16_FD91));
    tmp_4_fu_325_p1 <= std_logic_vector(resize(unsigned(tmp_2_fu_315_p4),64));
    tmp_5_fu_151_p1 <= std_logic_vector(resize(unsigned(kk_p1),64));
    tmp_6_fu_409_p19 <= (((((((((((((((((tmp_12_fu_335_p3 & ap_const_lv2_0) & tmp_11_fu_343_p4) & ap_const_lv1_0) & tmp_13_fu_353_p3) & ap_const_lv2_0) & tmp_15_fu_361_p3) & ap_const_lv1_0) & tmp_14_fu_369_p4) & ap_const_lv3_0) & tmp_16_fu_379_p3) & ap_const_lv1_0) & tmp_18_fu_387_p3) & ap_const_lv1_0) & tmp_17_fu_395_p4) & ap_const_lv1_0) & tmp_23_fu_405_p1) & ap_const_lv7_0);
    tmp_7_fu_269_p1 <= mt_kkp1_q0(1 - 1 downto 0);
    tmp_8_fu_489_p7 <= (((((tmp_19_fu_459_p4 & ap_const_lv1_0) & tmp_20_fu_469_p4) & ap_const_lv3_0) & tmp_21_fu_479_p4) & ap_const_lv17_0);
    tmp_9_fu_160_p1 <= std_logic_vector(resize(unsigned(kk_pm),64));
    tmp_cast_fu_303_p1 <= std_logic_vector(resize(unsigned(tmp_s_fu_297_p3),64));
    tmp_fu_142_p1 <= std_logic_vector(resize(unsigned(kk),64));
    tmp_i1_fu_203_p2 <= "1" when (unsigned(a_assign_2_fu_197_p2) > unsigned(ap_const_lv16_26F)) else "0";
    tmp_i3_fu_235_p2 <= "1" when (unsigned(a_assign_4_fu_229_p2) > unsigned(ap_const_lv16_26F)) else "0";
    tmp_i_fu_171_p2 <= "1" when (unsigned(a_assign_fu_165_p2) > unsigned(ap_const_lv16_26F)) else "0";
    tmp_s_fu_297_p3 <= (tmp_1_reg_553 & tmp_3_reg_558);
    y_1_fu_329_p2 <= (tmp_4_fu_325_p1 xor mt_kk_new_fu_307_p2);
    y_2_fu_453_p2 <= (tmp_10_cast_fu_449_p1 xor y_1_fu_329_p2);
    y_3_fu_509_p2 <= (tmp_12_cast_fu_505_p1 xor y_2_fu_453_p2);
end behav;
