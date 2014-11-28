-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.2
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity black_scholes2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    S : IN STD_LOGIC_VECTOR (63 downto 0);
    E : IN STD_LOGIC_VECTOR (63 downto 0);
    r : IN STD_LOGIC_VECTOR (63 downto 0);
    sigma : IN STD_LOGIC_VECTOR (63 downto 0);
    T : IN STD_LOGIC_VECTOR (63 downto 0);
    gaussian_random_number : IN STD_LOGIC_VECTOR (63 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of black_scholes2 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "black_scholes2,hls_ip_2014_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.623000,HLS_SYN_LAT=85,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (6 downto 0) := "0000011";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (6 downto 0) := "0000101";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (6 downto 0) := "0000110";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (6 downto 0) := "0000111";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_st10_fsm_9 : STD_LOGIC_VECTOR (6 downto 0) := "0001001";
    constant ap_ST_st11_fsm_10 : STD_LOGIC_VECTOR (6 downto 0) := "0001010";
    constant ap_ST_st12_fsm_11 : STD_LOGIC_VECTOR (6 downto 0) := "0001011";
    constant ap_ST_st13_fsm_12 : STD_LOGIC_VECTOR (6 downto 0) := "0001100";
    constant ap_ST_st14_fsm_13 : STD_LOGIC_VECTOR (6 downto 0) := "0001101";
    constant ap_ST_st15_fsm_14 : STD_LOGIC_VECTOR (6 downto 0) := "0001110";
    constant ap_ST_st16_fsm_15 : STD_LOGIC_VECTOR (6 downto 0) := "0001111";
    constant ap_ST_st17_fsm_16 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_st18_fsm_17 : STD_LOGIC_VECTOR (6 downto 0) := "0010001";
    constant ap_ST_st19_fsm_18 : STD_LOGIC_VECTOR (6 downto 0) := "0010010";
    constant ap_ST_st20_fsm_19 : STD_LOGIC_VECTOR (6 downto 0) := "0010011";
    constant ap_ST_st21_fsm_20 : STD_LOGIC_VECTOR (6 downto 0) := "0010100";
    constant ap_ST_st22_fsm_21 : STD_LOGIC_VECTOR (6 downto 0) := "0010101";
    constant ap_ST_st23_fsm_22 : STD_LOGIC_VECTOR (6 downto 0) := "0010110";
    constant ap_ST_st24_fsm_23 : STD_LOGIC_VECTOR (6 downto 0) := "0010111";
    constant ap_ST_st25_fsm_24 : STD_LOGIC_VECTOR (6 downto 0) := "0011000";
    constant ap_ST_st26_fsm_25 : STD_LOGIC_VECTOR (6 downto 0) := "0011001";
    constant ap_ST_st27_fsm_26 : STD_LOGIC_VECTOR (6 downto 0) := "0011010";
    constant ap_ST_st28_fsm_27 : STD_LOGIC_VECTOR (6 downto 0) := "0011011";
    constant ap_ST_st29_fsm_28 : STD_LOGIC_VECTOR (6 downto 0) := "0011100";
    constant ap_ST_st30_fsm_29 : STD_LOGIC_VECTOR (6 downto 0) := "0011101";
    constant ap_ST_st31_fsm_30 : STD_LOGIC_VECTOR (6 downto 0) := "0011110";
    constant ap_ST_st32_fsm_31 : STD_LOGIC_VECTOR (6 downto 0) := "0011111";
    constant ap_ST_st33_fsm_32 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_st34_fsm_33 : STD_LOGIC_VECTOR (6 downto 0) := "0100001";
    constant ap_ST_st35_fsm_34 : STD_LOGIC_VECTOR (6 downto 0) := "0100010";
    constant ap_ST_st36_fsm_35 : STD_LOGIC_VECTOR (6 downto 0) := "0100011";
    constant ap_ST_st37_fsm_36 : STD_LOGIC_VECTOR (6 downto 0) := "0100100";
    constant ap_ST_st38_fsm_37 : STD_LOGIC_VECTOR (6 downto 0) := "0100101";
    constant ap_ST_st39_fsm_38 : STD_LOGIC_VECTOR (6 downto 0) := "0100110";
    constant ap_ST_st40_fsm_39 : STD_LOGIC_VECTOR (6 downto 0) := "0100111";
    constant ap_ST_st41_fsm_40 : STD_LOGIC_VECTOR (6 downto 0) := "0101000";
    constant ap_ST_st42_fsm_41 : STD_LOGIC_VECTOR (6 downto 0) := "0101001";
    constant ap_ST_st43_fsm_42 : STD_LOGIC_VECTOR (6 downto 0) := "0101010";
    constant ap_ST_st44_fsm_43 : STD_LOGIC_VECTOR (6 downto 0) := "0101011";
    constant ap_ST_st45_fsm_44 : STD_LOGIC_VECTOR (6 downto 0) := "0101100";
    constant ap_ST_st46_fsm_45 : STD_LOGIC_VECTOR (6 downto 0) := "0101101";
    constant ap_ST_st47_fsm_46 : STD_LOGIC_VECTOR (6 downto 0) := "0101110";
    constant ap_ST_st48_fsm_47 : STD_LOGIC_VECTOR (6 downto 0) := "0101111";
    constant ap_ST_st49_fsm_48 : STD_LOGIC_VECTOR (6 downto 0) := "0110000";
    constant ap_ST_st50_fsm_49 : STD_LOGIC_VECTOR (6 downto 0) := "0110001";
    constant ap_ST_st51_fsm_50 : STD_LOGIC_VECTOR (6 downto 0) := "0110010";
    constant ap_ST_st52_fsm_51 : STD_LOGIC_VECTOR (6 downto 0) := "0110011";
    constant ap_ST_st53_fsm_52 : STD_LOGIC_VECTOR (6 downto 0) := "0110100";
    constant ap_ST_st54_fsm_53 : STD_LOGIC_VECTOR (6 downto 0) := "0110101";
    constant ap_ST_st55_fsm_54 : STD_LOGIC_VECTOR (6 downto 0) := "0110110";
    constant ap_ST_st56_fsm_55 : STD_LOGIC_VECTOR (6 downto 0) := "0110111";
    constant ap_ST_st57_fsm_56 : STD_LOGIC_VECTOR (6 downto 0) := "0111000";
    constant ap_ST_st58_fsm_57 : STD_LOGIC_VECTOR (6 downto 0) := "0111001";
    constant ap_ST_st59_fsm_58 : STD_LOGIC_VECTOR (6 downto 0) := "0111010";
    constant ap_ST_st60_fsm_59 : STD_LOGIC_VECTOR (6 downto 0) := "0111011";
    constant ap_ST_st61_fsm_60 : STD_LOGIC_VECTOR (6 downto 0) := "0111100";
    constant ap_ST_st62_fsm_61 : STD_LOGIC_VECTOR (6 downto 0) := "0111101";
    constant ap_ST_st63_fsm_62 : STD_LOGIC_VECTOR (6 downto 0) := "0111110";
    constant ap_ST_st64_fsm_63 : STD_LOGIC_VECTOR (6 downto 0) := "0111111";
    constant ap_ST_st65_fsm_64 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_ST_st66_fsm_65 : STD_LOGIC_VECTOR (6 downto 0) := "1000001";
    constant ap_ST_st67_fsm_66 : STD_LOGIC_VECTOR (6 downto 0) := "1000010";
    constant ap_ST_st68_fsm_67 : STD_LOGIC_VECTOR (6 downto 0) := "1000011";
    constant ap_ST_st69_fsm_68 : STD_LOGIC_VECTOR (6 downto 0) := "1000100";
    constant ap_ST_st70_fsm_69 : STD_LOGIC_VECTOR (6 downto 0) := "1000101";
    constant ap_ST_st71_fsm_70 : STD_LOGIC_VECTOR (6 downto 0) := "1000110";
    constant ap_ST_st72_fsm_71 : STD_LOGIC_VECTOR (6 downto 0) := "1000111";
    constant ap_ST_st73_fsm_72 : STD_LOGIC_VECTOR (6 downto 0) := "1001000";
    constant ap_ST_st74_fsm_73 : STD_LOGIC_VECTOR (6 downto 0) := "1001001";
    constant ap_ST_st75_fsm_74 : STD_LOGIC_VECTOR (6 downto 0) := "1001010";
    constant ap_ST_st76_fsm_75 : STD_LOGIC_VECTOR (6 downto 0) := "1001011";
    constant ap_ST_st77_fsm_76 : STD_LOGIC_VECTOR (6 downto 0) := "1001100";
    constant ap_ST_st78_fsm_77 : STD_LOGIC_VECTOR (6 downto 0) := "1001101";
    constant ap_ST_st79_fsm_78 : STD_LOGIC_VECTOR (6 downto 0) := "1001110";
    constant ap_ST_st80_fsm_79 : STD_LOGIC_VECTOR (6 downto 0) := "1001111";
    constant ap_ST_st81_fsm_80 : STD_LOGIC_VECTOR (6 downto 0) := "1010000";
    constant ap_ST_st82_fsm_81 : STD_LOGIC_VECTOR (6 downto 0) := "1010001";
    constant ap_ST_st83_fsm_82 : STD_LOGIC_VECTOR (6 downto 0) := "1010010";
    constant ap_ST_st84_fsm_83 : STD_LOGIC_VECTOR (6 downto 0) := "1010011";
    constant ap_ST_st85_fsm_84 : STD_LOGIC_VECTOR (6 downto 0) := "1010100";
    constant ap_ST_st86_fsm_85 : STD_LOGIC_VECTOR (6 downto 0) := "1010101";
    constant ap_const_lv64_3FE0000000000000 : STD_LOGIC_VECTOR (63 downto 0) := "0011111111100000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_8000000000000000 : STD_LOGIC_VECTOR (63 downto 0) := "1000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv5_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    signal grp_fu_73_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal reg_106 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_67_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal reg_114 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_101_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal reg_121 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_95_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_reg_160 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_9_neg_fu_129_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_9_neg_reg_171 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_80_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_6_reg_186 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_85_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_reg_191 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_13_fu_139_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_13_reg_206 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_67_p0 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_67_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_73_p0 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_73_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_80_p0 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_80_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_85_p0 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_85_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_90_p0 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_90_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_95_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_101_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_9_to_int_fu_126_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_90_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_67_opcode : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_fu_67_ce : STD_LOGIC;
    signal grp_fu_73_ce : STD_LOGIC;
    signal grp_fu_80_ce : STD_LOGIC;
    signal grp_fu_85_ce : STD_LOGIC;
    signal grp_fu_90_ce : STD_LOGIC;
    signal grp_fu_90_opcode : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_95_p0 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_95_ce : STD_LOGIC;
    signal grp_fu_101_p0 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_101_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);

    component black_scholes2_dadddsub_64ns_64ns_64_5_full_dsp IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        opcode : IN STD_LOGIC_VECTOR (1 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component black_scholes2_dmul_64ns_64ns_64_6_max_dsp IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component black_scholes2_dcmp_64ns_64ns_1_3 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component black_scholes2_dsqrt_64ns_64ns_64_31 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component black_scholes2_dexp_64ns_64ns_64_18_full_dsp IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    black_scholes2_dadddsub_64ns_64ns_64_5_full_dsp_U1 : component black_scholes2_dadddsub_64ns_64ns_64_5_full_dsp
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_67_p0,
        din1 => grp_fu_67_p1,
        opcode => grp_fu_67_opcode,
        ce => grp_fu_67_ce,
        dout => grp_fu_67_p2);

    black_scholes2_dmul_64ns_64ns_64_6_max_dsp_U2 : component black_scholes2_dmul_64ns_64ns_64_6_max_dsp
    generic map (
        ID => 2,
        NUM_STAGE => 6,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_73_p0,
        din1 => grp_fu_73_p1,
        ce => grp_fu_73_ce,
        dout => grp_fu_73_p2);

    black_scholes2_dmul_64ns_64ns_64_6_max_dsp_U3 : component black_scholes2_dmul_64ns_64ns_64_6_max_dsp
    generic map (
        ID => 3,
        NUM_STAGE => 6,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_80_p0,
        din1 => grp_fu_80_p1,
        ce => grp_fu_80_ce,
        dout => grp_fu_80_p2);

    black_scholes2_dmul_64ns_64ns_64_6_max_dsp_U4 : component black_scholes2_dmul_64ns_64ns_64_6_max_dsp
    generic map (
        ID => 4,
        NUM_STAGE => 6,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_85_p0,
        din1 => grp_fu_85_p1,
        ce => grp_fu_85_ce,
        dout => grp_fu_85_p2);

    black_scholes2_dcmp_64ns_64ns_1_3_U5 : component black_scholes2_dcmp_64ns_64ns_1_3
    generic map (
        ID => 5,
        NUM_STAGE => 3,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_90_p0,
        din1 => grp_fu_90_p1,
        ce => grp_fu_90_ce,
        opcode => grp_fu_90_opcode,
        dout => grp_fu_90_p2);

    black_scholes2_dsqrt_64ns_64ns_64_31_U6 : component black_scholes2_dsqrt_64ns_64ns_64_31
    generic map (
        ID => 6,
        NUM_STAGE => 31,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_95_p0,
        din1 => grp_fu_95_p1,
        ce => grp_fu_95_ce,
        dout => grp_fu_95_p2);

    black_scholes2_dexp_64ns_64ns_64_18_full_dsp_U7 : component black_scholes2_dexp_64ns_64ns_64_18_full_dsp
    generic map (
        ID => 7,
        NUM_STAGE => 18,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_101_p0,
        din1 => grp_fu_101_p1,
        ce => grp_fu_101_ce,
        dout => grp_fu_101_p2);





    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st26_fsm_25 = ap_CS_fsm) or (ap_ST_st32_fsm_31 = ap_CS_fsm) or (ap_ST_st37_fsm_36 = ap_CS_fsm) or (ap_ST_st43_fsm_42 = ap_CS_fsm) or (ap_ST_st72_fsm_71 = ap_CS_fsm))) then
                reg_106 <= grp_fu_73_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st37_fsm_36 = ap_CS_fsm) or (ap_ST_st48_fsm_47 = ap_CS_fsm) or (ap_ST_st77_fsm_76 = ap_CS_fsm))) then
                reg_114 <= grp_fu_67_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st66_fsm_65 = ap_CS_fsm) or (ap_ST_st80_fsm_79 = ap_CS_fsm))) then
                reg_121 <= grp_fu_101_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st80_fsm_79 = ap_CS_fsm)) then
                tmp_13_reg_206 <= tmp_13_fu_139_p3;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st31_fsm_30 = ap_CS_fsm)) then
                tmp_4_reg_160 <= grp_fu_95_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st43_fsm_42 = ap_CS_fsm)) then
                tmp_6_reg_186 <= grp_fu_80_p2;
                tmp_s_reg_191 <= grp_fu_85_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st37_fsm_36 = ap_CS_fsm)) then
                tmp_9_neg_reg_171 <= tmp_9_neg_fu_129_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                ap_NS_fsm <= ap_ST_st3_fsm_2;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st4_fsm_3 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st6_fsm_5;
            when ap_ST_st6_fsm_5 => 
                ap_NS_fsm <= ap_ST_st7_fsm_6;
            when ap_ST_st7_fsm_6 => 
                ap_NS_fsm <= ap_ST_st8_fsm_7;
            when ap_ST_st8_fsm_7 => 
                ap_NS_fsm <= ap_ST_st9_fsm_8;
            when ap_ST_st9_fsm_8 => 
                ap_NS_fsm <= ap_ST_st10_fsm_9;
            when ap_ST_st10_fsm_9 => 
                ap_NS_fsm <= ap_ST_st11_fsm_10;
            when ap_ST_st11_fsm_10 => 
                ap_NS_fsm <= ap_ST_st12_fsm_11;
            when ap_ST_st12_fsm_11 => 
                ap_NS_fsm <= ap_ST_st13_fsm_12;
            when ap_ST_st13_fsm_12 => 
                ap_NS_fsm <= ap_ST_st14_fsm_13;
            when ap_ST_st14_fsm_13 => 
                ap_NS_fsm <= ap_ST_st15_fsm_14;
            when ap_ST_st15_fsm_14 => 
                ap_NS_fsm <= ap_ST_st16_fsm_15;
            when ap_ST_st16_fsm_15 => 
                ap_NS_fsm <= ap_ST_st17_fsm_16;
            when ap_ST_st17_fsm_16 => 
                ap_NS_fsm <= ap_ST_st18_fsm_17;
            when ap_ST_st18_fsm_17 => 
                ap_NS_fsm <= ap_ST_st19_fsm_18;
            when ap_ST_st19_fsm_18 => 
                ap_NS_fsm <= ap_ST_st20_fsm_19;
            when ap_ST_st20_fsm_19 => 
                ap_NS_fsm <= ap_ST_st21_fsm_20;
            when ap_ST_st21_fsm_20 => 
                ap_NS_fsm <= ap_ST_st22_fsm_21;
            when ap_ST_st22_fsm_21 => 
                ap_NS_fsm <= ap_ST_st23_fsm_22;
            when ap_ST_st23_fsm_22 => 
                ap_NS_fsm <= ap_ST_st24_fsm_23;
            when ap_ST_st24_fsm_23 => 
                ap_NS_fsm <= ap_ST_st25_fsm_24;
            when ap_ST_st25_fsm_24 => 
                ap_NS_fsm <= ap_ST_st26_fsm_25;
            when ap_ST_st26_fsm_25 => 
                ap_NS_fsm <= ap_ST_st27_fsm_26;
            when ap_ST_st27_fsm_26 => 
                ap_NS_fsm <= ap_ST_st28_fsm_27;
            when ap_ST_st28_fsm_27 => 
                ap_NS_fsm <= ap_ST_st29_fsm_28;
            when ap_ST_st29_fsm_28 => 
                ap_NS_fsm <= ap_ST_st30_fsm_29;
            when ap_ST_st30_fsm_29 => 
                ap_NS_fsm <= ap_ST_st31_fsm_30;
            when ap_ST_st31_fsm_30 => 
                ap_NS_fsm <= ap_ST_st32_fsm_31;
            when ap_ST_st32_fsm_31 => 
                ap_NS_fsm <= ap_ST_st33_fsm_32;
            when ap_ST_st33_fsm_32 => 
                ap_NS_fsm <= ap_ST_st34_fsm_33;
            when ap_ST_st34_fsm_33 => 
                ap_NS_fsm <= ap_ST_st35_fsm_34;
            when ap_ST_st35_fsm_34 => 
                ap_NS_fsm <= ap_ST_st36_fsm_35;
            when ap_ST_st36_fsm_35 => 
                ap_NS_fsm <= ap_ST_st37_fsm_36;
            when ap_ST_st37_fsm_36 => 
                ap_NS_fsm <= ap_ST_st38_fsm_37;
            when ap_ST_st38_fsm_37 => 
                ap_NS_fsm <= ap_ST_st39_fsm_38;
            when ap_ST_st39_fsm_38 => 
                ap_NS_fsm <= ap_ST_st40_fsm_39;
            when ap_ST_st40_fsm_39 => 
                ap_NS_fsm <= ap_ST_st41_fsm_40;
            when ap_ST_st41_fsm_40 => 
                ap_NS_fsm <= ap_ST_st42_fsm_41;
            when ap_ST_st42_fsm_41 => 
                ap_NS_fsm <= ap_ST_st43_fsm_42;
            when ap_ST_st43_fsm_42 => 
                ap_NS_fsm <= ap_ST_st44_fsm_43;
            when ap_ST_st44_fsm_43 => 
                ap_NS_fsm <= ap_ST_st45_fsm_44;
            when ap_ST_st45_fsm_44 => 
                ap_NS_fsm <= ap_ST_st46_fsm_45;
            when ap_ST_st46_fsm_45 => 
                ap_NS_fsm <= ap_ST_st47_fsm_46;
            when ap_ST_st47_fsm_46 => 
                ap_NS_fsm <= ap_ST_st48_fsm_47;
            when ap_ST_st48_fsm_47 => 
                ap_NS_fsm <= ap_ST_st49_fsm_48;
            when ap_ST_st49_fsm_48 => 
                ap_NS_fsm <= ap_ST_st50_fsm_49;
            when ap_ST_st50_fsm_49 => 
                ap_NS_fsm <= ap_ST_st51_fsm_50;
            when ap_ST_st51_fsm_50 => 
                ap_NS_fsm <= ap_ST_st52_fsm_51;
            when ap_ST_st52_fsm_51 => 
                ap_NS_fsm <= ap_ST_st53_fsm_52;
            when ap_ST_st53_fsm_52 => 
                ap_NS_fsm <= ap_ST_st54_fsm_53;
            when ap_ST_st54_fsm_53 => 
                ap_NS_fsm <= ap_ST_st55_fsm_54;
            when ap_ST_st55_fsm_54 => 
                ap_NS_fsm <= ap_ST_st56_fsm_55;
            when ap_ST_st56_fsm_55 => 
                ap_NS_fsm <= ap_ST_st57_fsm_56;
            when ap_ST_st57_fsm_56 => 
                ap_NS_fsm <= ap_ST_st58_fsm_57;
            when ap_ST_st58_fsm_57 => 
                ap_NS_fsm <= ap_ST_st59_fsm_58;
            when ap_ST_st59_fsm_58 => 
                ap_NS_fsm <= ap_ST_st60_fsm_59;
            when ap_ST_st60_fsm_59 => 
                ap_NS_fsm <= ap_ST_st61_fsm_60;
            when ap_ST_st61_fsm_60 => 
                ap_NS_fsm <= ap_ST_st62_fsm_61;
            when ap_ST_st62_fsm_61 => 
                ap_NS_fsm <= ap_ST_st63_fsm_62;
            when ap_ST_st63_fsm_62 => 
                ap_NS_fsm <= ap_ST_st64_fsm_63;
            when ap_ST_st64_fsm_63 => 
                ap_NS_fsm <= ap_ST_st65_fsm_64;
            when ap_ST_st65_fsm_64 => 
                ap_NS_fsm <= ap_ST_st66_fsm_65;
            when ap_ST_st66_fsm_65 => 
                ap_NS_fsm <= ap_ST_st67_fsm_66;
            when ap_ST_st67_fsm_66 => 
                ap_NS_fsm <= ap_ST_st68_fsm_67;
            when ap_ST_st68_fsm_67 => 
                ap_NS_fsm <= ap_ST_st69_fsm_68;
            when ap_ST_st69_fsm_68 => 
                ap_NS_fsm <= ap_ST_st70_fsm_69;
            when ap_ST_st70_fsm_69 => 
                ap_NS_fsm <= ap_ST_st71_fsm_70;
            when ap_ST_st71_fsm_70 => 
                ap_NS_fsm <= ap_ST_st72_fsm_71;
            when ap_ST_st72_fsm_71 => 
                ap_NS_fsm <= ap_ST_st73_fsm_72;
            when ap_ST_st73_fsm_72 => 
                ap_NS_fsm <= ap_ST_st74_fsm_73;
            when ap_ST_st74_fsm_73 => 
                ap_NS_fsm <= ap_ST_st75_fsm_74;
            when ap_ST_st75_fsm_74 => 
                ap_NS_fsm <= ap_ST_st76_fsm_75;
            when ap_ST_st76_fsm_75 => 
                ap_NS_fsm <= ap_ST_st77_fsm_76;
            when ap_ST_st77_fsm_76 => 
                ap_NS_fsm <= ap_ST_st78_fsm_77;
            when ap_ST_st78_fsm_77 => 
                ap_NS_fsm <= ap_ST_st79_fsm_78;
            when ap_ST_st79_fsm_78 => 
                ap_NS_fsm <= ap_ST_st80_fsm_79;
            when ap_ST_st80_fsm_79 => 
                ap_NS_fsm <= ap_ST_st81_fsm_80;
            when ap_ST_st81_fsm_80 => 
                ap_NS_fsm <= ap_ST_st82_fsm_81;
            when ap_ST_st82_fsm_81 => 
                ap_NS_fsm <= ap_ST_st83_fsm_82;
            when ap_ST_st83_fsm_82 => 
                ap_NS_fsm <= ap_ST_st84_fsm_83;
            when ap_ST_st84_fsm_83 => 
                ap_NS_fsm <= ap_ST_st85_fsm_84;
            when ap_ST_st85_fsm_84 => 
                ap_NS_fsm <= ap_ST_st86_fsm_85;
            when ap_ST_st86_fsm_85 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_CS_fsm)
    begin
        if ((ap_ST_st86_fsm_85 = ap_CS_fsm)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_CS_fsm)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_ST_st1_fsm_0 = ap_CS_fsm))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_CS_fsm)
    begin
        if ((ap_ST_st86_fsm_85 = ap_CS_fsm)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= grp_fu_73_p2;
    grp_fu_101_ce <= ap_const_logic_1;
    grp_fu_101_p0 <= ap_const_lv64_0;

    -- grp_fu_101_p1 assign process. --
    grp_fu_101_p1_assign_proc : process(ap_CS_fsm, reg_114, tmp_s_reg_191)
    begin
        if ((ap_ST_st63_fsm_62 = ap_CS_fsm)) then 
            grp_fu_101_p1 <= tmp_s_reg_191;
        elsif ((ap_ST_st49_fsm_48 = ap_CS_fsm)) then 
            grp_fu_101_p1 <= reg_114;
        else 
            grp_fu_101_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    grp_fu_67_ce <= ap_const_logic_1;

    -- grp_fu_67_opcode assign process. --
    grp_fu_67_opcode_assign_proc : process(ap_CS_fsm)
    begin
        if (((ap_ST_st33_fsm_32 = ap_CS_fsm) or (ap_ST_st73_fsm_72 = ap_CS_fsm))) then 
            grp_fu_67_opcode <= ap_const_lv2_1;
        elsif ((ap_ST_st44_fsm_43 = ap_CS_fsm)) then 
            grp_fu_67_opcode <= ap_const_lv2_0;
        else 
            grp_fu_67_opcode <= "XX";
        end if; 
    end process;


    -- grp_fu_67_p0 assign process. --
    grp_fu_67_p0_assign_proc : process(ap_CS_fsm, r, reg_106)
    begin
        if (((ap_ST_st73_fsm_72 = ap_CS_fsm) or (ap_ST_st44_fsm_43 = ap_CS_fsm))) then 
            grp_fu_67_p0 <= reg_106;
        elsif ((ap_ST_st33_fsm_32 = ap_CS_fsm)) then 
            grp_fu_67_p0 <= r;
        else 
            grp_fu_67_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    -- grp_fu_67_p1 assign process. --
    grp_fu_67_p1_assign_proc : process(ap_CS_fsm, E, reg_106, tmp_6_reg_186)
    begin
        if ((ap_ST_st73_fsm_72 = ap_CS_fsm)) then 
            grp_fu_67_p1 <= E;
        elsif ((ap_ST_st44_fsm_43 = ap_CS_fsm)) then 
            grp_fu_67_p1 <= tmp_6_reg_186;
        elsif ((ap_ST_st33_fsm_32 = ap_CS_fsm)) then 
            grp_fu_67_p1 <= reg_106;
        else 
            grp_fu_67_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    grp_fu_73_ce <= ap_const_logic_1;

    -- grp_fu_73_p0 assign process. --
    grp_fu_73_p0_assign_proc : process(ap_CS_fsm, sigma, reg_106, reg_114, reg_121, tmp_4_reg_160)
    begin
        if (((ap_ST_st67_fsm_66 = ap_CS_fsm) or (ap_ST_st81_fsm_80 = ap_CS_fsm))) then 
            grp_fu_73_p0 <= reg_121;
        elsif ((ap_ST_st38_fsm_37 = ap_CS_fsm)) then 
            grp_fu_73_p0 <= reg_114;
        elsif ((ap_ST_st32_fsm_31 = ap_CS_fsm)) then 
            grp_fu_73_p0 <= tmp_4_reg_160;
        elsif ((ap_ST_st27_fsm_26 = ap_CS_fsm)) then 
            grp_fu_73_p0 <= reg_106;
        elsif ((ap_ST_st21_fsm_20 = ap_CS_fsm)) then 
            grp_fu_73_p0 <= sigma;
        else 
            grp_fu_73_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    -- grp_fu_73_p1 assign process. --
    grp_fu_73_p1_assign_proc : process(ap_CS_fsm, S, sigma, T, tmp_13_reg_206)
    begin
        if ((ap_ST_st81_fsm_80 = ap_CS_fsm)) then 
            grp_fu_73_p1 <= tmp_13_reg_206;
        elsif ((ap_ST_st67_fsm_66 = ap_CS_fsm)) then 
            grp_fu_73_p1 <= S;
        elsif ((ap_ST_st38_fsm_37 = ap_CS_fsm)) then 
            grp_fu_73_p1 <= T;
        elsif ((ap_ST_st27_fsm_26 = ap_CS_fsm)) then 
            grp_fu_73_p1 <= ap_const_lv64_3FE0000000000000;
        elsif (((ap_ST_st32_fsm_31 = ap_CS_fsm) or (ap_ST_st21_fsm_20 = ap_CS_fsm))) then 
            grp_fu_73_p1 <= sigma;
        else 
            grp_fu_73_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    grp_fu_80_ce <= ap_const_logic_1;
    grp_fu_80_p0 <= reg_106;
    grp_fu_80_p1 <= gaussian_random_number;
    grp_fu_85_ce <= ap_const_logic_1;
    grp_fu_85_p0 <= tmp_9_neg_reg_171;
    grp_fu_85_p1 <= T;
    grp_fu_90_ce <= ap_const_logic_1;
    grp_fu_90_opcode <= ap_const_lv5_4;
    grp_fu_90_p0 <= reg_114;
    grp_fu_90_p1 <= ap_const_lv64_0;
    grp_fu_95_ce <= ap_const_logic_1;
    grp_fu_95_p0 <= ap_const_lv64_0;
    grp_fu_95_p1 <= T;
    tmp_13_fu_139_p3 <= 
        ap_const_lv64_0 when (grp_fu_90_p2(0) = '1') else 
        reg_114;
    tmp_9_neg_fu_129_p2 <= (tmp_9_to_int_fu_126_p1 xor ap_const_lv64_8000000000000000);
    tmp_9_to_int_fu_126_p1 <= r;
end behav;
