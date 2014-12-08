-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.2
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ==============================================================

Library ieee;
use ieee.std_logic_1164.all;

entity black_scholes_dadddsub_64ns_64ns_64_5_full_dsp is
    generic (
        ID         : integer := 15;
        NUM_STAGE  : integer := 5;
        din0_WIDTH : integer := 64;
        din1_WIDTH : integer := 64;
        dout_WIDTH : integer := 64
    );
    port (
        clk    : in  std_logic;
        reset  : in  std_logic;
        ce     : in  std_logic;
        din0   : in  std_logic_vector(din0_WIDTH-1 downto 0);
        din1   : in  std_logic_vector(din1_WIDTH-1 downto 0);
        opcode : in  std_logic_vector(1 downto 0);
        dout   : out std_logic_vector(dout_WIDTH-1 downto 0)
    );
end entity;

architecture arch of black_scholes_dadddsub_64ns_64ns_64_5_full_dsp is
    --------------------- Component ---------------------
    component black_scholes_ap_dadddsub_3_full_dsp is
        port (
            aclk                    : in  std_logic;
            aclken                  : in  std_logic;
            s_axis_a_tvalid         : in  std_logic;
            s_axis_a_tdata          : in  std_logic_vector(63 downto 0);
            s_axis_b_tvalid         : in  std_logic;
            s_axis_b_tdata          : in  std_logic_vector(63 downto 0);
            s_axis_operation_tvalid : in  std_logic;
            s_axis_operation_tdata  : in  std_logic_vector(7 downto 0);
            m_axis_result_tvalid    : out std_logic;
            m_axis_result_tdata     : out std_logic_vector(63 downto 0)
        );
    end component;
    --------------------- Local signal ------------------
    signal aclk        : std_logic;
    signal aclken      : std_logic;
    signal a_tvalid    : std_logic;
    signal a_tdata     : std_logic_vector(63 downto 0);
    signal b_tvalid    : std_logic;
    signal b_tdata     : std_logic_vector(63 downto 0);
    signal op_tvalid   : std_logic;
    signal op_tdata    : std_logic_vector(7 downto 0);
    signal r_tvalid    : std_logic;
    signal r_tdata     : std_logic_vector(63 downto 0);
    signal din0_buf1   : std_logic_vector(din0_WIDTH-1 downto 0);
    signal din1_buf1   : std_logic_vector(din1_WIDTH-1 downto 0);
    signal opcode_buf1 : std_logic_vector(1 downto 0);
begin
    --------------------- Instantiation -----------------
    black_scholes_ap_dadddsub_3_full_dsp_u : component black_scholes_ap_dadddsub_3_full_dsp
    port map (
        aclk                    => aclk,
        aclken                  => aclken,
        s_axis_a_tvalid         => a_tvalid,
        s_axis_a_tdata          => a_tdata,
        s_axis_b_tvalid         => b_tvalid,
        s_axis_b_tdata          => b_tdata,
        s_axis_operation_tvalid => op_tvalid,
        s_axis_operation_tdata  => op_tdata,
        m_axis_result_tvalid    => r_tvalid,
        m_axis_result_tdata     => r_tdata
    );

    --------------------- Assignment --------------------
    aclk      <= clk;
    aclken    <= ce;
    a_tvalid  <= '1';
    a_tdata   <= (din0_WIDTH-1 downto 0 => '0') when ((din0_buf1 = ( din0_WIDTH-1 downto 0 => 'X'))  or (din0_buf1 = ( din0_WIDTH-1 downto 0 => 'U'))) else din0_buf1;
    b_tvalid  <= '1';
    b_tdata   <= (din1_WIDTH-1 downto 0 => '0') when ((din1_buf1 = ( din1_WIDTH-1 downto 0 => 'X'))  or (din1_buf1 = ( din1_WIDTH-1 downto 0 => 'U'))) else din1_buf1;
    op_tvalid <= '1';
    op_tdata  <= "00000000" when ((opcode_buf1 = "XX") or (opcode_buf1 = "UU")) else ( "000000" & opcode_buf1);
    dout      <= r_tdata;

    --------------------- Input buffer ------------------
    process (clk) begin
        if clk'event and clk = '1' then
            if ce = '1' then
                din0_buf1   <= din0;
                din1_buf1   <= din1;
                opcode_buf1 <= opcode;
            end if;
        end if;
    end process;

end architecture;
