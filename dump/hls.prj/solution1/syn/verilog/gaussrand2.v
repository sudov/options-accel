// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="gaussrand2,hls_ip_2014_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=8.621000,HLS_SYN_LAT=80,HLS_SYN_TPT=12,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}" *)

module gaussrand2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        gaussrand_state_V1,
        gaussrand_state_V1_ap_vld,
        gaussrand_state_V2_i,
        gaussrand_state_V2_o,
        gaussrand_state_V2_o_ap_vld,
        gaussrand_state_S_i,
        gaussrand_state_S_o,
        gaussrand_state_S_o_ap_vld,
        gaussrand_state_phase_i,
        gaussrand_state_phase_o,
        gaussrand_state_phase_o_ap_vld,
        gaussrand_state_V2_o_ap_lwr,
        gaussrand_state_S_o_ap_lwr,
        gaussrand_state_phase_o_ap_lwr,
        ap_return
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 4'b1110;
parameter    ap_ST_pp0_stg1_fsm_1 = 4'b0000;
parameter    ap_ST_pp0_stg2_fsm_2 = 4'b1;
parameter    ap_ST_pp0_stg3_fsm_3 = 4'b11;
parameter    ap_ST_pp0_stg4_fsm_4 = 4'b10;
parameter    ap_ST_pp0_stg5_fsm_5 = 4'b110;
parameter    ap_ST_pp0_stg6_fsm_6 = 4'b111;
parameter    ap_ST_pp0_stg7_fsm_7 = 4'b101;
parameter    ap_ST_pp0_stg8_fsm_8 = 4'b100;
parameter    ap_ST_pp0_stg9_fsm_9 = 4'b1100;
parameter    ap_ST_pp0_stg10_fsm_10 = 4'b1101;
parameter    ap_ST_pp0_stg11_fsm_11 = 4'b1111;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv64_BFEAA449A0000000 = 64'b1011111111101010101001000100100110100000000000000000000000000000;
parameter    ap_const_lv64_3FE0000000000000 = 64'b11111111100000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv64_BFE0000000000000 = 64'b1011111111100000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv64_C000000000000000 = 64'b1100000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv64_1 = 64'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [63:0] gaussrand_state_V1;
output   gaussrand_state_V1_ap_vld;
input  [63:0] gaussrand_state_V2_i;
output  [63:0] gaussrand_state_V2_o;
output   gaussrand_state_V2_o_ap_vld;
input  [63:0] gaussrand_state_S_i;
output  [63:0] gaussrand_state_S_o;
output   gaussrand_state_S_o_ap_vld;
input  [31:0] gaussrand_state_phase_i;
output  [31:0] gaussrand_state_phase_o;
output   gaussrand_state_phase_o_ap_vld;
output   gaussrand_state_V2_o_ap_lwr;
output   gaussrand_state_S_o_ap_lwr;
output   gaussrand_state_phase_o_ap_lwr;
output  [63:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg gaussrand_state_V1_ap_vld;
reg[63:0] gaussrand_state_V2_o;
reg gaussrand_state_V2_o_ap_vld;
reg[63:0] gaussrand_state_S_o;
reg gaussrand_state_S_o_ap_vld;
reg gaussrand_state_phase_o_ap_vld;
reg gaussrand_state_V2_o_ap_lwr;
reg gaussrand_state_S_o_ap_lwr;
reg gaussrand_state_phase_o_ap_lwr;
reg   [3:0] ap_CS_fsm = 4'b1110;
reg    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
reg    ap_reg_ppiten_pp0_it3 = 1'b0;
reg    ap_reg_ppiten_pp0_it4 = 1'b0;
reg    ap_reg_ppiten_pp0_it5 = 1'b0;
reg    ap_reg_ppiten_pp0_it6 = 1'b0;
wire   [0:0] tmp_fu_161_p2;
reg   [0:0] tmp_reg_174;
reg   [0:0] ap_reg_ppstg_tmp_reg_174_pp0_it1;
reg   [0:0] ap_reg_ppstg_tmp_reg_174_pp0_it2;
reg   [0:0] ap_reg_ppstg_tmp_reg_174_pp0_it3;
reg   [0:0] ap_reg_ppstg_tmp_reg_174_pp0_it4;
reg   [0:0] ap_reg_ppstg_tmp_reg_174_pp0_it5;
reg   [0:0] ap_reg_ppstg_tmp_reg_174_pp0_it6;
reg   [63:0] S_reg_178;
reg   [63:0] ap_reg_ppstg_S_reg_178_pp0_it1;
reg   [63:0] ap_reg_ppstg_S_reg_178_pp0_it2;
wire   [31:0] grp_fu_135_p1;
reg   [31:0] tmp_s_reg_184;
reg   [63:0] V2_reg_189;
reg   [63:0] ap_reg_ppstg_V2_reg_189_pp0_it1;
reg   [63:0] ap_reg_ppstg_V2_reg_189_pp0_it2;
reg   [63:0] ap_reg_ppstg_V2_reg_189_pp0_it3;
reg   [63:0] ap_reg_ppstg_V2_reg_189_pp0_it4;
reg   [63:0] ap_reg_ppstg_V2_reg_189_pp0_it5;
wire   [31:0] grp_fu_147_p2;
reg   [31:0] tmp_4_reg_194;
wire   [63:0] grp_fu_139_p1;
reg   [63:0] tmp_5_reg_199;
wire   [63:0] grp_fu_152_p2;
reg   [63:0] tmp_6_reg_204;
wire   [63:0] grp_fu_157_p2;
reg   [63:0] tmp_7_reg_209;
reg   [31:0] tmp_8_reg_214;
wire   [31:0] grp_fu_142_p2;
reg   [31:0] tmp_9_reg_219;
reg   [63:0] tmp_1_reg_224;
reg   [63:0] X_reg_229;
reg    ap_reg_ppiten_pp0_it0_preg = 1'b0;
wire    grp_gaussrand2_rand_uint32_fu_119_ap_start;
wire    grp_gaussrand2_rand_uint32_fu_119_ap_done;
wire    grp_gaussrand2_rand_uint32_fu_119_ap_idle;
wire    grp_gaussrand2_rand_uint32_fu_119_ap_ready;
wire    grp_gaussrand2_rand_uint32_fu_119_ap_ce;
wire   [63:0] ap_reg_phiprechg_X2_reg_107pp0_it5;
reg   [63:0] ap_reg_phiprechg_X2_reg_107pp0_it6;
reg   [63:0] X2_phi_fu_111_p4;
reg    grp_gaussrand2_rand_uint32_fu_119_ap_start_ap_start_reg = 1'b0;
reg   [63:0] grp_fu_135_p0;
reg   [31:0] grp_fu_139_p0;
wire   [31:0] grp_fu_142_p1;
wire   [31:0] grp_fu_147_p1;
reg   [63:0] grp_fu_152_p0;
reg   [63:0] grp_fu_152_p1;
wire   [63:0] grp_fu_157_p0;
wire   [63:0] grp_fu_157_p1;
wire    grp_fu_135_ce;
wire    grp_fu_139_ce;
wire   [31:0] grp_fu_142_p0;
wire    grp_fu_142_ce;
wire   [31:0] grp_fu_147_p0;
wire    grp_fu_147_ce;
wire    grp_fu_152_ce;
wire    grp_fu_157_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;


gaussrand2_rand_uint32 grp_gaussrand2_rand_uint32_fu_119(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_gaussrand2_rand_uint32_fu_119_ap_start ),
    .ap_done( grp_gaussrand2_rand_uint32_fu_119_ap_done ),
    .ap_idle( grp_gaussrand2_rand_uint32_fu_119_ap_idle ),
    .ap_ready( grp_gaussrand2_rand_uint32_fu_119_ap_ready ),
    .ap_ce( grp_gaussrand2_rand_uint32_fu_119_ap_ce )
);

gaussrand2_fptrunc_64ns_32_3 #(
    .ID( 2 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
gaussrand2_fptrunc_64ns_32_3_U2(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_135_p0 ),
    .ce( grp_fu_135_ce ),
    .dout( grp_fu_135_p1 )
);

gaussrand2_fpext_32ns_64_3 #(
    .ID( 3 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
gaussrand2_fpext_32ns_64_3_U3(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_139_p0 ),
    .ce( grp_fu_139_ce ),
    .dout( grp_fu_139_p1 )
);

gaussrand2_fsqrt_32ns_32ns_32_12 #(
    .ID( 4 ),
    .NUM_STAGE( 12 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
gaussrand2_fsqrt_32ns_32ns_32_12_U4(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_142_p0 ),
    .din1( grp_fu_142_p1 ),
    .ce( grp_fu_142_ce ),
    .dout( grp_fu_142_p2 )
);

gaussrand2_flog_32ns_32ns_32_13_full_dsp #(
    .ID( 5 ),
    .NUM_STAGE( 13 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
gaussrand2_flog_32ns_32ns_32_13_full_dsp_U5(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_147_p0 ),
    .din1( grp_fu_147_p1 ),
    .ce( grp_fu_147_ce ),
    .dout( grp_fu_147_p2 )
);

gaussrand2_dmul_64ns_64ns_64_6_max_dsp #(
    .ID( 6 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
gaussrand2_dmul_64ns_64ns_64_6_max_dsp_U6(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_152_p0 ),
    .din1( grp_fu_152_p1 ),
    .ce( grp_fu_152_ce ),
    .dout( grp_fu_152_p2 )
);

gaussrand2_ddiv_64ns_64ns_64_31 #(
    .ID( 7 ),
    .NUM_STAGE( 31 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
gaussrand2_ddiv_64ns_64ns_64_31_U7(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_157_p0 ),
    .din1( grp_fu_157_p1 ),
    .ce( grp_fu_157_ce ),
    .dout( grp_fu_157_p2 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_reg_ppiten_pp0_it0_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it0_preg
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0_preg <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_0 == ap_CS_fsm) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)))) begin
            ap_reg_ppiten_pp0_it0_preg <= ap_start;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if ((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm)) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        if ((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm)) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

/// ap_reg_ppiten_pp0_it3 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it3
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
    end else begin
        if ((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm)) begin
            ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
        end
    end
end

/// ap_reg_ppiten_pp0_it4 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it4
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it4 <= ap_const_logic_0;
    end else begin
        if ((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm)) begin
            ap_reg_ppiten_pp0_it4 <= ap_reg_ppiten_pp0_it3;
        end
    end
end

/// ap_reg_ppiten_pp0_it5 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it5
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it5 <= ap_const_logic_0;
    end else begin
        if ((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm)) begin
            ap_reg_ppiten_pp0_it5 <= ap_reg_ppiten_pp0_it4;
        end
    end
end

/// ap_reg_ppiten_pp0_it6 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it6
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it6 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg8_fsm_8 == ap_CS_fsm) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it5))) begin
            ap_reg_ppiten_pp0_it6 <= ap_const_logic_0;
        end else if ((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm)) begin
            ap_reg_ppiten_pp0_it6 <= ap_reg_ppiten_pp0_it5;
        end
    end
end

/// grp_gaussrand2_rand_uint32_fu_119_ap_start_ap_start_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_grp_gaussrand2_rand_uint32_fu_119_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_gaussrand2_rand_uint32_fu_119_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if ((((ap_ST_pp0_stg0_fsm_0 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & ~(tmp_fu_161_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_ST_pp0_stg3_fsm_3 == ap_CS_fsm) & ~(tmp_reg_174 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_ST_pp0_stg6_fsm_6 == ap_CS_fsm) & ~(tmp_reg_174 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_reg_174 == ap_const_lv1_0) & (ap_ST_pp0_stg9_fsm_9 == ap_CS_fsm)))) begin
            grp_gaussrand2_rand_uint32_fu_119_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_gaussrand2_rand_uint32_fu_119_ap_ready)) begin
            grp_gaussrand2_rand_uint32_fu_119_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it6) & (ap_ST_pp0_stg7_fsm_7 == ap_CS_fsm) & ~(ap_reg_ppstg_tmp_reg_174_pp0_it6 == ap_const_lv1_0))) begin
        ap_reg_phiprechg_X2_reg_107pp0_it6[0] <= 1'b0;
        ap_reg_phiprechg_X2_reg_107pp0_it6[29] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[31] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[32] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[35] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[38] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[42] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[45] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[47] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[49] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[51] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[53] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[54] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[55] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[56] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[57] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[58] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[59] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[60] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[61] <= 1'b1;
        ap_reg_phiprechg_X2_reg_107pp0_it6[63] <= 1'b1;
    end else if (((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it5))) begin
        ap_reg_phiprechg_X2_reg_107pp0_it6[0] <= ap_reg_phiprechg_X2_reg_107pp0_it5[0];
        ap_reg_phiprechg_X2_reg_107pp0_it6[29] <= ap_reg_phiprechg_X2_reg_107pp0_it5[29];
        ap_reg_phiprechg_X2_reg_107pp0_it6[31] <= ap_reg_phiprechg_X2_reg_107pp0_it5[31];
        ap_reg_phiprechg_X2_reg_107pp0_it6[32] <= ap_reg_phiprechg_X2_reg_107pp0_it5[32];
        ap_reg_phiprechg_X2_reg_107pp0_it6[35] <= ap_reg_phiprechg_X2_reg_107pp0_it5[35];
        ap_reg_phiprechg_X2_reg_107pp0_it6[38] <= ap_reg_phiprechg_X2_reg_107pp0_it5[38];
        ap_reg_phiprechg_X2_reg_107pp0_it6[42] <= ap_reg_phiprechg_X2_reg_107pp0_it5[42];
        ap_reg_phiprechg_X2_reg_107pp0_it6[45] <= ap_reg_phiprechg_X2_reg_107pp0_it5[45];
        ap_reg_phiprechg_X2_reg_107pp0_it6[47] <= ap_reg_phiprechg_X2_reg_107pp0_it5[47];
        ap_reg_phiprechg_X2_reg_107pp0_it6[49] <= ap_reg_phiprechg_X2_reg_107pp0_it5[49];
        ap_reg_phiprechg_X2_reg_107pp0_it6[51] <= ap_reg_phiprechg_X2_reg_107pp0_it5[51];
        ap_reg_phiprechg_X2_reg_107pp0_it6[53] <= ap_reg_phiprechg_X2_reg_107pp0_it5[53];
        ap_reg_phiprechg_X2_reg_107pp0_it6[54] <= ap_reg_phiprechg_X2_reg_107pp0_it5[54];
        ap_reg_phiprechg_X2_reg_107pp0_it6[55] <= ap_reg_phiprechg_X2_reg_107pp0_it5[55];
        ap_reg_phiprechg_X2_reg_107pp0_it6[56] <= ap_reg_phiprechg_X2_reg_107pp0_it5[56];
        ap_reg_phiprechg_X2_reg_107pp0_it6[57] <= ap_reg_phiprechg_X2_reg_107pp0_it5[57];
        ap_reg_phiprechg_X2_reg_107pp0_it6[58] <= ap_reg_phiprechg_X2_reg_107pp0_it5[58];
        ap_reg_phiprechg_X2_reg_107pp0_it6[59] <= ap_reg_phiprechg_X2_reg_107pp0_it5[59];
        ap_reg_phiprechg_X2_reg_107pp0_it6[60] <= ap_reg_phiprechg_X2_reg_107pp0_it5[60];
        ap_reg_phiprechg_X2_reg_107pp0_it6[61] <= ap_reg_phiprechg_X2_reg_107pp0_it5[61];
        ap_reg_phiprechg_X2_reg_107pp0_it6[63] <= ap_reg_phiprechg_X2_reg_107pp0_it5[63];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_0 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (tmp_fu_161_p2 == ap_const_lv1_0))) begin
        S_reg_178 <= gaussrand_state_S_i;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (tmp_reg_174 == ap_const_lv1_0))) begin
        V2_reg_189 <= gaussrand_state_V2_i;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it6) & (ap_ST_pp0_stg7_fsm_7 == ap_CS_fsm) & (ap_reg_ppstg_tmp_reg_174_pp0_it6 == ap_const_lv1_0))) begin
        X_reg_229 <= grp_fu_152_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_0 == ap_CS_fsm) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)))) begin
        ap_reg_ppstg_S_reg_178_pp0_it1 <= S_reg_178;
        ap_reg_ppstg_S_reg_178_pp0_it2 <= ap_reg_ppstg_S_reg_178_pp0_it1;
        ap_reg_ppstg_tmp_reg_174_pp0_it1 <= tmp_reg_174;
        ap_reg_ppstg_tmp_reg_174_pp0_it2 <= ap_reg_ppstg_tmp_reg_174_pp0_it1;
        ap_reg_ppstg_tmp_reg_174_pp0_it3 <= ap_reg_ppstg_tmp_reg_174_pp0_it2;
        ap_reg_ppstg_tmp_reg_174_pp0_it4 <= ap_reg_ppstg_tmp_reg_174_pp0_it3;
        ap_reg_ppstg_tmp_reg_174_pp0_it5 <= ap_reg_ppstg_tmp_reg_174_pp0_it4;
        ap_reg_ppstg_tmp_reg_174_pp0_it6 <= ap_reg_ppstg_tmp_reg_174_pp0_it5;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm)) begin
        ap_reg_ppstg_V2_reg_189_pp0_it1 <= V2_reg_189;
        ap_reg_ppstg_V2_reg_189_pp0_it2 <= ap_reg_ppstg_V2_reg_189_pp0_it1;
        ap_reg_ppstg_V2_reg_189_pp0_it3 <= ap_reg_ppstg_V2_reg_189_pp0_it2;
        ap_reg_ppstg_V2_reg_189_pp0_it4 <= ap_reg_ppstg_V2_reg_189_pp0_it3;
        ap_reg_ppstg_V2_reg_189_pp0_it5 <= ap_reg_ppstg_V2_reg_189_pp0_it4;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it6) & (ap_ST_pp0_stg1_fsm_1 == ap_CS_fsm) & (ap_reg_ppstg_tmp_reg_174_pp0_it6 == ap_const_lv1_0))) begin
        tmp_1_reg_224 <= grp_fu_139_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (ap_ST_pp0_stg3_fsm_3 == ap_CS_fsm) & (ap_reg_ppstg_tmp_reg_174_pp0_it1 == ap_const_lv1_0))) begin
        tmp_4_reg_194 <= grp_fu_147_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (ap_reg_ppstg_tmp_reg_174_pp0_it1 == ap_const_lv1_0) & (ap_ST_pp0_stg6_fsm_6 == ap_CS_fsm))) begin
        tmp_5_reg_199 <= grp_fu_139_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_0 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & (ap_reg_ppstg_tmp_reg_174_pp0_it1 == ap_const_lv1_0))) begin
        tmp_6_reg_204 <= grp_fu_152_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it4) & (ap_ST_pp0_stg7_fsm_7 == ap_CS_fsm) & (ap_reg_ppstg_tmp_reg_174_pp0_it4 == ap_const_lv1_0))) begin
        tmp_7_reg_209 <= grp_fu_157_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it4) & (ap_reg_ppstg_tmp_reg_174_pp0_it4 == ap_const_lv1_0) & (ap_ST_pp0_stg10_fsm_10 == ap_CS_fsm))) begin
        tmp_8_reg_214 <= grp_fu_135_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it5) & (ap_ST_pp0_stg10_fsm_10 == ap_CS_fsm) & (ap_reg_ppstg_tmp_reg_174_pp0_it5 == ap_const_lv1_0))) begin
        tmp_9_reg_219 <= grp_fu_142_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_0 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)))) begin
        tmp_reg_174 <= tmp_fu_161_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_ST_pp0_stg2_fsm_2 == ap_CS_fsm) & (tmp_reg_174 == ap_const_lv1_0))) begin
        tmp_s_reg_184 <= grp_fu_135_p1;
    end
end

/// X2_phi_fu_111_p4 assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it6 or ap_reg_ppstg_tmp_reg_174_pp0_it6 or X_reg_229 or ap_reg_phiprechg_X2_reg_107pp0_it6)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it6) & (ap_reg_ppstg_tmp_reg_174_pp0_it6 == ap_const_lv1_0) & (ap_ST_pp0_stg8_fsm_8 == ap_CS_fsm))) begin
        X2_phi_fu_111_p4 = X_reg_229;
    end else begin
        X2_phi_fu_111_p4 = ap_reg_phiprechg_X2_reg_107pp0_it6;
    end
end

/// ap_done assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it6)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it6) & (ap_ST_pp0_stg8_fsm_8 == ap_CS_fsm))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_reg_ppiten_pp0_it4 or ap_reg_ppiten_pp0_it5 or ap_reg_ppiten_pp0_it6)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_ST_pp0_stg0_fsm_0 == ap_CS_fsm) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it2) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it3) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it4) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it5) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it6))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (ap_start or ap_CS_fsm or ap_reg_ppiten_pp0_it0_preg)
begin
    if ((ap_ST_pp0_stg0_fsm_0 == ap_CS_fsm)) begin
        ap_reg_ppiten_pp0_it0 = ap_start;
    end else begin
        ap_reg_ppiten_pp0_it0 = ap_reg_ppiten_pp0_it0_preg;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_reg_ppiten_pp0_it4 or ap_reg_ppiten_pp0_it5)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it2) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it3) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it4) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it5) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// gaussrand_state_S_o assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it0 or gaussrand_state_S_i or tmp_reg_174)
begin
    if (((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_reg_174 == ap_const_lv1_0))) begin
        gaussrand_state_S_o = ap_const_lv64_3FE0000000000000;
    end else begin
        gaussrand_state_S_o = gaussrand_state_S_i;
    end
end

/// gaussrand_state_S_o_ap_lwr assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        gaussrand_state_S_o_ap_lwr = ap_const_logic_1;
    end else begin
        gaussrand_state_S_o_ap_lwr = ap_const_logic_0;
    end
end

/// gaussrand_state_S_o_ap_vld assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it0 or tmp_reg_174)
begin
    if (((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_reg_174 == ap_const_lv1_0))) begin
        gaussrand_state_S_o_ap_vld = ap_const_logic_1;
    end else begin
        gaussrand_state_S_o_ap_vld = ap_const_logic_0;
    end
end

/// gaussrand_state_V1_ap_vld assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it6 or ap_reg_ppstg_tmp_reg_174_pp0_it6)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it6) & (ap_ST_pp0_stg8_fsm_8 == ap_CS_fsm) & ~(ap_reg_ppstg_tmp_reg_174_pp0_it6 == ap_const_lv1_0))) begin
        gaussrand_state_V1_ap_vld = ap_const_logic_1;
    end else begin
        gaussrand_state_V1_ap_vld = ap_const_logic_0;
    end
end

/// gaussrand_state_V2_o assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it0 or gaussrand_state_V2_i or tmp_reg_174)
begin
    if (((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_reg_174 == ap_const_lv1_0))) begin
        gaussrand_state_V2_o = ap_const_lv64_3FE0000000000000;
    end else begin
        gaussrand_state_V2_o = gaussrand_state_V2_i;
    end
end

/// gaussrand_state_V2_o_ap_lwr assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        gaussrand_state_V2_o_ap_lwr = ap_const_logic_1;
    end else begin
        gaussrand_state_V2_o_ap_lwr = ap_const_logic_0;
    end
end

/// gaussrand_state_V2_o_ap_vld assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it0 or tmp_reg_174)
begin
    if (((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_reg_174 == ap_const_lv1_0))) begin
        gaussrand_state_V2_o_ap_vld = ap_const_logic_1;
    end else begin
        gaussrand_state_V2_o_ap_vld = ap_const_logic_0;
    end
end

/// gaussrand_state_phase_o_ap_lwr assign process. ///
always @ (ap_start or ap_CS_fsm or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_ST_pp0_stg0_fsm_0 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)))) begin
        gaussrand_state_phase_o_ap_lwr = ap_const_logic_1;
    end else begin
        gaussrand_state_phase_o_ap_lwr = ap_const_logic_0;
    end
end

/// gaussrand_state_phase_o_ap_vld assign process. ///
always @ (ap_start or ap_CS_fsm or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_ST_pp0_stg0_fsm_0 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)))) begin
        gaussrand_state_phase_o_ap_vld = ap_const_logic_1;
    end else begin
        gaussrand_state_phase_o_ap_vld = ap_const_logic_0;
    end
end

/// grp_fu_135_p0 assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it4 or gaussrand_state_S_i or tmp_7_reg_209)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it4) & (ap_ST_pp0_stg8_fsm_8 == ap_CS_fsm))) begin
        grp_fu_135_p0 = tmp_7_reg_209;
    end else if (((ap_ST_pp0_stg0_fsm_0 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        grp_fu_135_p0 = gaussrand_state_S_i;
    end else begin
        grp_fu_135_p0 = 'bx;
    end
end

/// grp_fu_139_p0 assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it5 or tmp_4_reg_194 or tmp_9_reg_219)
begin
    if (((ap_ST_pp0_stg11_fsm_11 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it5))) begin
        grp_fu_139_p0 = tmp_9_reg_219;
    end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (ap_ST_pp0_stg4_fsm_4 == ap_CS_fsm))) begin
        grp_fu_139_p0 = tmp_4_reg_194;
    end else begin
        grp_fu_139_p0 = 'bx;
    end
end

/// grp_fu_152_p0 assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it6 or ap_reg_ppstg_V2_reg_189_pp0_it5 or tmp_5_reg_199)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it6) & (ap_ST_pp0_stg2_fsm_2 == ap_CS_fsm))) begin
        grp_fu_152_p0 = ap_reg_ppstg_V2_reg_189_pp0_it5;
    end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (ap_ST_pp0_stg7_fsm_7 == ap_CS_fsm))) begin
        grp_fu_152_p0 = tmp_5_reg_199;
    end else begin
        grp_fu_152_p0 = 'bx;
    end
end

/// grp_fu_152_p1 assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it6 or tmp_1_reg_224)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it6) & (ap_ST_pp0_stg2_fsm_2 == ap_CS_fsm))) begin
        grp_fu_152_p1 = tmp_1_reg_224;
    end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (ap_ST_pp0_stg7_fsm_7 == ap_CS_fsm))) begin
        grp_fu_152_p1 = ap_const_lv64_C000000000000000;
    end else begin
        grp_fu_152_p1 = 'bx;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_reg_ppiten_pp0_it4 or ap_reg_ppiten_pp0_it5 or ap_reg_ppiten_pp0_it6 or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            if ((~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_start == ap_const_logic_0)) & ~((ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it2) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it3) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it4) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it5) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it6) & (ap_const_logic_0 == ap_start)))) begin
                ap_NS_fsm = ap_ST_pp0_stg1_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
            end
        end
        ap_ST_pp0_stg1_fsm_1 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg2_fsm_2;
        end
        ap_ST_pp0_stg2_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg3_fsm_3;
        end
        ap_ST_pp0_stg3_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg4_fsm_4;
        end
        ap_ST_pp0_stg4_fsm_4 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg5_fsm_5;
        end
        ap_ST_pp0_stg5_fsm_5 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg6_fsm_6;
        end
        ap_ST_pp0_stg6_fsm_6 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg7_fsm_7;
        end
        ap_ST_pp0_stg7_fsm_7 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg8_fsm_8;
        end
        ap_ST_pp0_stg8_fsm_8 : 
        begin
            if (~(ap_const_logic_1 == ap_sig_pprstidle_pp0)) begin
                ap_NS_fsm = ap_ST_pp0_stg9_fsm_9;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
            end
        end
        ap_ST_pp0_stg9_fsm_9 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg10_fsm_10;
        end
        ap_ST_pp0_stg10_fsm_10 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg11_fsm_11;
        end
        ap_ST_pp0_stg11_fsm_11 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_phiprechg_X2_reg_107pp0_it5 = ap_const_lv64_1;
assign ap_return = X2_phi_fu_111_p4;
assign gaussrand_state_V1 = ap_const_lv64_BFE0000000000000;
assign gaussrand_state_phase_o = (ap_const_lv32_1 - gaussrand_state_phase_i);
assign grp_fu_135_ce = ap_const_logic_1;
assign grp_fu_139_ce = ap_const_logic_1;
assign grp_fu_142_ce = ap_const_logic_1;
assign grp_fu_142_p0 = ap_const_lv32_0;
assign grp_fu_142_p1 = tmp_8_reg_214;
assign grp_fu_147_ce = ap_const_logic_1;
assign grp_fu_147_p0 = ap_const_lv32_0;
assign grp_fu_147_p1 = tmp_s_reg_184;
assign grp_fu_152_ce = ap_const_logic_1;
assign grp_fu_157_ce = ap_const_logic_1;
assign grp_fu_157_p0 = tmp_6_reg_204;
assign grp_fu_157_p1 = ap_reg_ppstg_S_reg_178_pp0_it2;
assign grp_gaussrand2_rand_uint32_fu_119_ap_ce = ap_const_logic_1;
assign grp_gaussrand2_rand_uint32_fu_119_ap_start = grp_gaussrand2_rand_uint32_fu_119_ap_start_ap_start_reg;
assign tmp_fu_161_p2 = (gaussrand_state_phase_i == ap_const_lv32_0? 1'b1: 1'b0);
always @ (posedge ap_clk)
begin
    ap_reg_phiprechg_X2_reg_107pp0_it6[28:1] <= 28'b0000000000000000000000000000;
    ap_reg_phiprechg_X2_reg_107pp0_it6[30:30] <= 1'b0;
    ap_reg_phiprechg_X2_reg_107pp0_it6[34:33] <= 2'b00;
    ap_reg_phiprechg_X2_reg_107pp0_it6[37:36] <= 2'b00;
    ap_reg_phiprechg_X2_reg_107pp0_it6[41:39] <= 3'b000;
    ap_reg_phiprechg_X2_reg_107pp0_it6[44:43] <= 2'b00;
    ap_reg_phiprechg_X2_reg_107pp0_it6[46:46] <= 1'b0;
    ap_reg_phiprechg_X2_reg_107pp0_it6[48:48] <= 1'b0;
    ap_reg_phiprechg_X2_reg_107pp0_it6[50:50] <= 1'b0;
    ap_reg_phiprechg_X2_reg_107pp0_it6[52:52] <= 1'b0;
    ap_reg_phiprechg_X2_reg_107pp0_it6[62] <= 1'b0;
end



endmodule //gaussrand2

