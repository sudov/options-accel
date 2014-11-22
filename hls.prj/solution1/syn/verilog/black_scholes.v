// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="black_scholes,hls_ip_2014_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.623000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}" *)

module black_scholes (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        interval_min,
        interval_min_ap_vld,
        interval_max,
        interval_max_ap_vld,
        S,
        E,
        r,
        sigma,
        T,
        M
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 7'b0000000;
parameter    ap_ST_st2_fsm_1 = 7'b1;
parameter    ap_ST_st3_fsm_2 = 7'b10;
parameter    ap_ST_st4_fsm_3 = 7'b11;
parameter    ap_ST_st5_fsm_4 = 7'b100;
parameter    ap_ST_st6_fsm_5 = 7'b101;
parameter    ap_ST_st7_fsm_6 = 7'b110;
parameter    ap_ST_st8_fsm_7 = 7'b111;
parameter    ap_ST_st9_fsm_8 = 7'b1000;
parameter    ap_ST_st10_fsm_9 = 7'b1001;
parameter    ap_ST_st11_fsm_10 = 7'b1010;
parameter    ap_ST_st12_fsm_11 = 7'b1011;
parameter    ap_ST_st13_fsm_12 = 7'b1100;
parameter    ap_ST_st14_fsm_13 = 7'b1101;
parameter    ap_ST_st15_fsm_14 = 7'b1110;
parameter    ap_ST_st16_fsm_15 = 7'b1111;
parameter    ap_ST_st17_fsm_16 = 7'b10000;
parameter    ap_ST_st18_fsm_17 = 7'b10001;
parameter    ap_ST_st19_fsm_18 = 7'b10010;
parameter    ap_ST_st20_fsm_19 = 7'b10011;
parameter    ap_ST_st21_fsm_20 = 7'b10100;
parameter    ap_ST_st22_fsm_21 = 7'b10101;
parameter    ap_ST_st23_fsm_22 = 7'b10110;
parameter    ap_ST_st24_fsm_23 = 7'b10111;
parameter    ap_ST_st25_fsm_24 = 7'b11000;
parameter    ap_ST_st26_fsm_25 = 7'b11001;
parameter    ap_ST_st27_fsm_26 = 7'b11010;
parameter    ap_ST_st28_fsm_27 = 7'b11011;
parameter    ap_ST_st29_fsm_28 = 7'b11100;
parameter    ap_ST_st30_fsm_29 = 7'b11101;
parameter    ap_ST_st31_fsm_30 = 7'b11110;
parameter    ap_ST_st32_fsm_31 = 7'b11111;
parameter    ap_ST_st33_fsm_32 = 7'b100000;
parameter    ap_ST_st34_fsm_33 = 7'b100001;
parameter    ap_ST_st35_fsm_34 = 7'b100010;
parameter    ap_ST_st36_fsm_35 = 7'b100011;
parameter    ap_ST_st37_fsm_36 = 7'b100100;
parameter    ap_ST_st38_fsm_37 = 7'b100101;
parameter    ap_ST_st39_fsm_38 = 7'b100110;
parameter    ap_ST_st40_fsm_39 = 7'b100111;
parameter    ap_ST_st41_fsm_40 = 7'b101000;
parameter    ap_ST_st42_fsm_41 = 7'b101001;
parameter    ap_ST_st43_fsm_42 = 7'b101010;
parameter    ap_ST_st44_fsm_43 = 7'b101011;
parameter    ap_ST_st45_fsm_44 = 7'b101100;
parameter    ap_ST_st46_fsm_45 = 7'b101101;
parameter    ap_ST_st47_fsm_46 = 7'b101110;
parameter    ap_ST_st48_fsm_47 = 7'b101111;
parameter    ap_ST_st49_fsm_48 = 7'b110000;
parameter    ap_ST_st50_fsm_49 = 7'b110001;
parameter    ap_ST_st51_fsm_50 = 7'b110010;
parameter    ap_ST_st52_fsm_51 = 7'b110011;
parameter    ap_ST_st53_fsm_52 = 7'b110100;
parameter    ap_ST_st54_fsm_53 = 7'b110101;
parameter    ap_ST_st55_fsm_54 = 7'b110110;
parameter    ap_ST_st56_fsm_55 = 7'b110111;
parameter    ap_ST_st57_fsm_56 = 7'b111000;
parameter    ap_ST_st58_fsm_57 = 7'b111001;
parameter    ap_ST_st59_fsm_58 = 7'b111010;
parameter    ap_ST_st60_fsm_59 = 7'b111011;
parameter    ap_ST_st61_fsm_60 = 7'b111100;
parameter    ap_ST_st62_fsm_61 = 7'b111101;
parameter    ap_ST_st63_fsm_62 = 7'b111110;
parameter    ap_ST_st64_fsm_63 = 7'b111111;
parameter    ap_ST_st65_fsm_64 = 7'b1000000;
parameter    ap_ST_st66_fsm_65 = 7'b1000001;
parameter    ap_ST_st67_fsm_66 = 7'b1000010;
parameter    ap_ST_st68_fsm_67 = 7'b1000011;
parameter    ap_ST_st69_fsm_68 = 7'b1000100;
parameter    ap_ST_st70_fsm_69 = 7'b1000101;
parameter    ap_ST_st71_fsm_70 = 7'b1000110;
parameter    ap_ST_st72_fsm_71 = 7'b1000111;
parameter    ap_ST_st73_fsm_72 = 7'b1001000;
parameter    ap_const_lv64_3FFF5C28F5C28F5C = 64'b11111111111111010111000010100011110101110000101000111101011100;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [63:0] interval_min;
output   interval_min_ap_vld;
output  [63:0] interval_max;
output   interval_max_ap_vld;
input  [63:0] S;
input  [63:0] E;
input  [63:0] r;
input  [63:0] sigma;
input  [63:0] T;
input  [31:0] M;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg interval_min_ap_vld;
reg interval_max_ap_vld;
reg   [6:0] ap_CS_fsm = 7'b0000000;
wire   [63:0] grp_fu_126_p1;
reg   [63:0] tmp_80_reg_148;
reg   [63:0] args_mean_reg_178;
wire    grp_black_scholes_black_scholes_iterate_fu_89_ap_done;
reg   [63:0] args_stdv_reg_184;
wire   [63:0] grp_fu_117_p2;
reg   [63:0] tmp_s_reg_189;
wire   [63:0] grp_fu_130_p2;
reg   [63:0] tmp_81_reg_194;
wire   [63:0] grp_fu_122_p2;
reg   [63:0] conf_width_reg_199;
wire    grp_black_scholes_black_scholes_iterate_fu_89_ap_start;
wire    grp_black_scholes_black_scholes_iterate_fu_89_ap_idle;
wire    grp_black_scholes_black_scholes_iterate_fu_89_ap_ready;
wire   [63:0] grp_black_scholes_black_scholes_iterate_fu_89_the_args_S_read;
wire   [63:0] grp_black_scholes_black_scholes_iterate_fu_89_the_args_E_read;
wire   [63:0] grp_black_scholes_black_scholes_iterate_fu_89_the_args_r_read;
wire   [63:0] grp_black_scholes_black_scholes_iterate_fu_89_the_args_sigma_read;
wire   [63:0] grp_black_scholes_black_scholes_iterate_fu_89_the_args_T_read;
wire   [63:0] grp_black_scholes_black_scholes_iterate_fu_89_ap_return_0;
wire   [63:0] grp_black_scholes_black_scholes_iterate_fu_89_ap_return_1;
reg    grp_black_scholes_black_scholes_iterate_fu_89_ap_start_ap_start_reg = 1'b0;
wire   [63:0] grp_fu_107_p2;
wire   [63:0] grp_fu_112_p2;
wire   [63:0] grp_fu_107_p0;
wire   [63:0] grp_fu_107_p1;
wire   [63:0] grp_fu_112_p0;
wire   [63:0] grp_fu_112_p1;
wire   [63:0] grp_fu_117_p0;
wire   [63:0] grp_fu_117_p1;
wire   [63:0] grp_fu_122_p0;
wire   [63:0] grp_fu_122_p1;
wire   [31:0] grp_fu_126_p0;
wire   [63:0] grp_fu_130_p1;
wire    grp_fu_107_ce;
wire    grp_fu_112_ce;
wire    grp_fu_117_ce;
wire    grp_fu_122_ce;
wire    grp_fu_126_ce;
wire   [63:0] grp_fu_130_p0;
reg    grp_fu_130_ce;
reg   [6:0] ap_NS_fsm;


black_scholes_black_scholes_iterate grp_black_scholes_black_scholes_iterate_fu_89(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_black_scholes_black_scholes_iterate_fu_89_ap_start ),
    .ap_done( grp_black_scholes_black_scholes_iterate_fu_89_ap_done ),
    .ap_idle( grp_black_scholes_black_scholes_iterate_fu_89_ap_idle ),
    .ap_ready( grp_black_scholes_black_scholes_iterate_fu_89_ap_ready ),
    .the_args_S_read( grp_black_scholes_black_scholes_iterate_fu_89_the_args_S_read ),
    .the_args_E_read( grp_black_scholes_black_scholes_iterate_fu_89_the_args_E_read ),
    .the_args_r_read( grp_black_scholes_black_scholes_iterate_fu_89_the_args_r_read ),
    .the_args_sigma_read( grp_black_scholes_black_scholes_iterate_fu_89_the_args_sigma_read ),
    .the_args_T_read( grp_black_scholes_black_scholes_iterate_fu_89_the_args_T_read ),
    .ap_return_0( grp_black_scholes_black_scholes_iterate_fu_89_ap_return_0 ),
    .ap_return_1( grp_black_scholes_black_scholes_iterate_fu_89_ap_return_1 )
);

black_scholes_dsub_64ns_64ns_64_5_full_dsp #(
    .ID( 28 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
black_scholes_dsub_64ns_64ns_64_5_full_dsp_U28(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_107_p0 ),
    .din1( grp_fu_107_p1 ),
    .ce( grp_fu_107_ce ),
    .dout( grp_fu_107_p2 )
);

black_scholes_dadd_64ns_64ns_64_5_full_dsp #(
    .ID( 29 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
black_scholes_dadd_64ns_64ns_64_5_full_dsp_U29(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_112_p0 ),
    .din1( grp_fu_112_p1 ),
    .ce( grp_fu_112_ce ),
    .dout( grp_fu_112_p2 )
);

black_scholes_dmul_64ns_64ns_64_6_max_dsp #(
    .ID( 30 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
black_scholes_dmul_64ns_64ns_64_6_max_dsp_U30(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_117_p0 ),
    .din1( grp_fu_117_p1 ),
    .ce( grp_fu_117_ce ),
    .dout( grp_fu_117_p2 )
);

black_scholes_ddiv_64ns_64ns_64_31 #(
    .ID( 31 ),
    .NUM_STAGE( 31 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
black_scholes_ddiv_64ns_64ns_64_31_U31(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_122_p0 ),
    .din1( grp_fu_122_p1 ),
    .ce( grp_fu_122_ce ),
    .dout( grp_fu_122_p2 )
);

black_scholes_sitodp_32ns_64_6 #(
    .ID( 32 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
black_scholes_sitodp_32ns_64_6_U32(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_126_p0 ),
    .ce( grp_fu_126_ce ),
    .dout( grp_fu_126_p1 )
);

black_scholes_dsqrt_64ns_64ns_64_31 #(
    .ID( 33 ),
    .NUM_STAGE( 31 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
black_scholes_dsqrt_64ns_64ns_64_31_U33(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_130_p0 ),
    .din1( grp_fu_130_p1 ),
    .ce( grp_fu_130_ce ),
    .dout( grp_fu_130_p2 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// grp_black_scholes_black_scholes_iterate_fu_89_ap_start_ap_start_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_grp_black_scholes_black_scholes_iterate_fu_89_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_black_scholes_black_scholes_iterate_fu_89_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if ((ap_ST_st30_fsm_29 == ap_CS_fsm)) begin
            grp_black_scholes_black_scholes_iterate_fu_89_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_black_scholes_black_scholes_iterate_fu_89_ap_ready)) begin
            grp_black_scholes_black_scholes_iterate_fu_89_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st31_fsm_30 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_black_scholes_black_scholes_iterate_fu_89_ap_done))) begin
        args_mean_reg_178 <= grp_black_scholes_black_scholes_iterate_fu_89_ap_return_0;
        args_stdv_reg_184 <= grp_black_scholes_black_scholes_iterate_fu_89_ap_return_1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st68_fsm_67 == ap_CS_fsm)) begin
        conf_width_reg_199 <= grp_fu_122_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        tmp_80_reg_148 <= grp_fu_126_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st37_fsm_36 == ap_CS_fsm)) begin
        tmp_81_reg_194 <= grp_fu_130_p2;
        tmp_s_reg_189 <= grp_fu_117_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st73_fsm_72 == ap_CS_fsm)) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_CS_fsm)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_ST_st1_fsm_0 == ap_CS_fsm))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st73_fsm_72 == ap_CS_fsm)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// grp_fu_130_ce assign process. ///
always @ (ap_CS_fsm or grp_black_scholes_black_scholes_iterate_fu_89_ap_done)
begin
    if (((ap_ST_st30_fsm_29 == ap_CS_fsm) | ((ap_ST_st31_fsm_30 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_black_scholes_black_scholes_iterate_fu_89_ap_done)) | (ap_ST_st37_fsm_36 == ap_CS_fsm) | (ap_ST_st32_fsm_31 == ap_CS_fsm) | (ap_ST_st7_fsm_6 == ap_CS_fsm) | (ap_ST_st8_fsm_7 == ap_CS_fsm) | (ap_ST_st9_fsm_8 == ap_CS_fsm) | (ap_ST_st10_fsm_9 == ap_CS_fsm) | (ap_ST_st11_fsm_10 == ap_CS_fsm) | (ap_ST_st12_fsm_11 == ap_CS_fsm) | (ap_ST_st13_fsm_12 == ap_CS_fsm) | (ap_ST_st14_fsm_13 == ap_CS_fsm) | (ap_ST_st15_fsm_14 == ap_CS_fsm) | (ap_ST_st16_fsm_15 == ap_CS_fsm) | (ap_ST_st17_fsm_16 == ap_CS_fsm) | (ap_ST_st18_fsm_17 == ap_CS_fsm) | (ap_ST_st19_fsm_18 == ap_CS_fsm) | (ap_ST_st20_fsm_19 == ap_CS_fsm) | (ap_ST_st21_fsm_20 == ap_CS_fsm) | (ap_ST_st22_fsm_21 == ap_CS_fsm) | (ap_ST_st23_fsm_22 == ap_CS_fsm) | (ap_ST_st24_fsm_23 == ap_CS_fsm) | (ap_ST_st25_fsm_24 == ap_CS_fsm) | (ap_ST_st26_fsm_25 == ap_CS_fsm) | (ap_ST_st27_fsm_26 == ap_CS_fsm) | (ap_ST_st28_fsm_27 == ap_CS_fsm) | (ap_ST_st29_fsm_28 == ap_CS_fsm) | (ap_ST_st33_fsm_32 == ap_CS_fsm) | (ap_ST_st34_fsm_33 == ap_CS_fsm) | (ap_ST_st35_fsm_34 == ap_CS_fsm) | (ap_ST_st36_fsm_35 == ap_CS_fsm))) begin
        grp_fu_130_ce = ap_const_logic_1;
    end else begin
        grp_fu_130_ce = ap_const_logic_0;
    end
end

/// interval_max_ap_vld assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st73_fsm_72 == ap_CS_fsm)) begin
        interval_max_ap_vld = ap_const_logic_1;
    end else begin
        interval_max_ap_vld = ap_const_logic_0;
    end
end

/// interval_min_ap_vld assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st73_fsm_72 == ap_CS_fsm)) begin
        interval_min_ap_vld = ap_const_logic_1;
    end else begin
        interval_min_ap_vld = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or grp_black_scholes_black_scholes_iterate_fu_89_ap_done)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st3_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st4_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : 
        begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : 
        begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : 
        begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : 
        begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : 
        begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : 
        begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st11_fsm_10 : 
        begin
            ap_NS_fsm = ap_ST_st12_fsm_11;
        end
        ap_ST_st12_fsm_11 : 
        begin
            ap_NS_fsm = ap_ST_st13_fsm_12;
        end
        ap_ST_st13_fsm_12 : 
        begin
            ap_NS_fsm = ap_ST_st14_fsm_13;
        end
        ap_ST_st14_fsm_13 : 
        begin
            ap_NS_fsm = ap_ST_st15_fsm_14;
        end
        ap_ST_st15_fsm_14 : 
        begin
            ap_NS_fsm = ap_ST_st16_fsm_15;
        end
        ap_ST_st16_fsm_15 : 
        begin
            ap_NS_fsm = ap_ST_st17_fsm_16;
        end
        ap_ST_st17_fsm_16 : 
        begin
            ap_NS_fsm = ap_ST_st18_fsm_17;
        end
        ap_ST_st18_fsm_17 : 
        begin
            ap_NS_fsm = ap_ST_st19_fsm_18;
        end
        ap_ST_st19_fsm_18 : 
        begin
            ap_NS_fsm = ap_ST_st20_fsm_19;
        end
        ap_ST_st20_fsm_19 : 
        begin
            ap_NS_fsm = ap_ST_st21_fsm_20;
        end
        ap_ST_st21_fsm_20 : 
        begin
            ap_NS_fsm = ap_ST_st22_fsm_21;
        end
        ap_ST_st22_fsm_21 : 
        begin
            ap_NS_fsm = ap_ST_st23_fsm_22;
        end
        ap_ST_st23_fsm_22 : 
        begin
            ap_NS_fsm = ap_ST_st24_fsm_23;
        end
        ap_ST_st24_fsm_23 : 
        begin
            ap_NS_fsm = ap_ST_st25_fsm_24;
        end
        ap_ST_st25_fsm_24 : 
        begin
            ap_NS_fsm = ap_ST_st26_fsm_25;
        end
        ap_ST_st26_fsm_25 : 
        begin
            ap_NS_fsm = ap_ST_st27_fsm_26;
        end
        ap_ST_st27_fsm_26 : 
        begin
            ap_NS_fsm = ap_ST_st28_fsm_27;
        end
        ap_ST_st28_fsm_27 : 
        begin
            ap_NS_fsm = ap_ST_st29_fsm_28;
        end
        ap_ST_st29_fsm_28 : 
        begin
            ap_NS_fsm = ap_ST_st30_fsm_29;
        end
        ap_ST_st30_fsm_29 : 
        begin
            ap_NS_fsm = ap_ST_st31_fsm_30;
        end
        ap_ST_st31_fsm_30 : 
        begin
            if (~(ap_const_logic_0 == grp_black_scholes_black_scholes_iterate_fu_89_ap_done)) begin
                ap_NS_fsm = ap_ST_st32_fsm_31;
            end else begin
                ap_NS_fsm = ap_ST_st31_fsm_30;
            end
        end
        ap_ST_st32_fsm_31 : 
        begin
            ap_NS_fsm = ap_ST_st33_fsm_32;
        end
        ap_ST_st33_fsm_32 : 
        begin
            ap_NS_fsm = ap_ST_st34_fsm_33;
        end
        ap_ST_st34_fsm_33 : 
        begin
            ap_NS_fsm = ap_ST_st35_fsm_34;
        end
        ap_ST_st35_fsm_34 : 
        begin
            ap_NS_fsm = ap_ST_st36_fsm_35;
        end
        ap_ST_st36_fsm_35 : 
        begin
            ap_NS_fsm = ap_ST_st37_fsm_36;
        end
        ap_ST_st37_fsm_36 : 
        begin
            ap_NS_fsm = ap_ST_st38_fsm_37;
        end
        ap_ST_st38_fsm_37 : 
        begin
            ap_NS_fsm = ap_ST_st39_fsm_38;
        end
        ap_ST_st39_fsm_38 : 
        begin
            ap_NS_fsm = ap_ST_st40_fsm_39;
        end
        ap_ST_st40_fsm_39 : 
        begin
            ap_NS_fsm = ap_ST_st41_fsm_40;
        end
        ap_ST_st41_fsm_40 : 
        begin
            ap_NS_fsm = ap_ST_st42_fsm_41;
        end
        ap_ST_st42_fsm_41 : 
        begin
            ap_NS_fsm = ap_ST_st43_fsm_42;
        end
        ap_ST_st43_fsm_42 : 
        begin
            ap_NS_fsm = ap_ST_st44_fsm_43;
        end
        ap_ST_st44_fsm_43 : 
        begin
            ap_NS_fsm = ap_ST_st45_fsm_44;
        end
        ap_ST_st45_fsm_44 : 
        begin
            ap_NS_fsm = ap_ST_st46_fsm_45;
        end
        ap_ST_st46_fsm_45 : 
        begin
            ap_NS_fsm = ap_ST_st47_fsm_46;
        end
        ap_ST_st47_fsm_46 : 
        begin
            ap_NS_fsm = ap_ST_st48_fsm_47;
        end
        ap_ST_st48_fsm_47 : 
        begin
            ap_NS_fsm = ap_ST_st49_fsm_48;
        end
        ap_ST_st49_fsm_48 : 
        begin
            ap_NS_fsm = ap_ST_st50_fsm_49;
        end
        ap_ST_st50_fsm_49 : 
        begin
            ap_NS_fsm = ap_ST_st51_fsm_50;
        end
        ap_ST_st51_fsm_50 : 
        begin
            ap_NS_fsm = ap_ST_st52_fsm_51;
        end
        ap_ST_st52_fsm_51 : 
        begin
            ap_NS_fsm = ap_ST_st53_fsm_52;
        end
        ap_ST_st53_fsm_52 : 
        begin
            ap_NS_fsm = ap_ST_st54_fsm_53;
        end
        ap_ST_st54_fsm_53 : 
        begin
            ap_NS_fsm = ap_ST_st55_fsm_54;
        end
        ap_ST_st55_fsm_54 : 
        begin
            ap_NS_fsm = ap_ST_st56_fsm_55;
        end
        ap_ST_st56_fsm_55 : 
        begin
            ap_NS_fsm = ap_ST_st57_fsm_56;
        end
        ap_ST_st57_fsm_56 : 
        begin
            ap_NS_fsm = ap_ST_st58_fsm_57;
        end
        ap_ST_st58_fsm_57 : 
        begin
            ap_NS_fsm = ap_ST_st59_fsm_58;
        end
        ap_ST_st59_fsm_58 : 
        begin
            ap_NS_fsm = ap_ST_st60_fsm_59;
        end
        ap_ST_st60_fsm_59 : 
        begin
            ap_NS_fsm = ap_ST_st61_fsm_60;
        end
        ap_ST_st61_fsm_60 : 
        begin
            ap_NS_fsm = ap_ST_st62_fsm_61;
        end
        ap_ST_st62_fsm_61 : 
        begin
            ap_NS_fsm = ap_ST_st63_fsm_62;
        end
        ap_ST_st63_fsm_62 : 
        begin
            ap_NS_fsm = ap_ST_st64_fsm_63;
        end
        ap_ST_st64_fsm_63 : 
        begin
            ap_NS_fsm = ap_ST_st65_fsm_64;
        end
        ap_ST_st65_fsm_64 : 
        begin
            ap_NS_fsm = ap_ST_st66_fsm_65;
        end
        ap_ST_st66_fsm_65 : 
        begin
            ap_NS_fsm = ap_ST_st67_fsm_66;
        end
        ap_ST_st67_fsm_66 : 
        begin
            ap_NS_fsm = ap_ST_st68_fsm_67;
        end
        ap_ST_st68_fsm_67 : 
        begin
            ap_NS_fsm = ap_ST_st69_fsm_68;
        end
        ap_ST_st69_fsm_68 : 
        begin
            ap_NS_fsm = ap_ST_st70_fsm_69;
        end
        ap_ST_st70_fsm_69 : 
        begin
            ap_NS_fsm = ap_ST_st71_fsm_70;
        end
        ap_ST_st71_fsm_70 : 
        begin
            ap_NS_fsm = ap_ST_st72_fsm_71;
        end
        ap_ST_st72_fsm_71 : 
        begin
            ap_NS_fsm = ap_ST_st73_fsm_72;
        end
        ap_ST_st73_fsm_72 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign grp_black_scholes_black_scholes_iterate_fu_89_ap_start = grp_black_scholes_black_scholes_iterate_fu_89_ap_start_ap_start_reg;
assign grp_black_scholes_black_scholes_iterate_fu_89_the_args_E_read = E;
assign grp_black_scholes_black_scholes_iterate_fu_89_the_args_S_read = S;
assign grp_black_scholes_black_scholes_iterate_fu_89_the_args_T_read = T;
assign grp_black_scholes_black_scholes_iterate_fu_89_the_args_r_read = r;
assign grp_black_scholes_black_scholes_iterate_fu_89_the_args_sigma_read = sigma;
assign grp_fu_107_ce = ap_const_logic_1;
assign grp_fu_107_p0 = args_mean_reg_178;
assign grp_fu_107_p1 = conf_width_reg_199;
assign grp_fu_112_ce = ap_const_logic_1;
assign grp_fu_112_p0 = args_mean_reg_178;
assign grp_fu_112_p1 = conf_width_reg_199;
assign grp_fu_117_ce = ap_const_logic_1;
assign grp_fu_117_p0 = args_stdv_reg_184;
assign grp_fu_117_p1 = ap_const_lv64_3FFF5C28F5C28F5C;
assign grp_fu_122_ce = ap_const_logic_1;
assign grp_fu_122_p0 = tmp_s_reg_189;
assign grp_fu_122_p1 = tmp_81_reg_194;
assign grp_fu_126_ce = ap_const_logic_1;
assign grp_fu_126_p0 = M;
assign grp_fu_130_p0 = ap_const_lv64_0;
assign grp_fu_130_p1 = tmp_80_reg_148;
assign interval_max = grp_fu_112_p2;
assign interval_min = grp_fu_107_p2;


endmodule //black_scholes

