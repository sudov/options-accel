// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dut,hls_ip_2014_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.789000,HLS_SYN_LAT=12,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}" *)

module dut (
        ap_clk,
        ap_rst,
        in_fifo_V_dout,
        in_fifo_V_empty_n,
        in_fifo_V_read,
        out_fifo_V_din,
        out_fifo_V_full_n,
        out_fifo_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 4'b0000;
parameter    ap_ST_st2_fsm_1 = 4'b1;
parameter    ap_ST_st3_fsm_2 = 4'b10;
parameter    ap_ST_st4_fsm_3 = 4'b11;
parameter    ap_ST_st5_fsm_4 = 4'b100;
parameter    ap_ST_st6_fsm_5 = 4'b101;
parameter    ap_ST_st7_fsm_6 = 4'b110;
parameter    ap_ST_st8_fsm_7 = 4'b111;
parameter    ap_ST_st9_fsm_8 = 4'b1000;
parameter    ap_ST_st10_fsm_9 = 4'b1001;
parameter    ap_ST_st11_fsm_10 = 4'b1010;
parameter    ap_ST_st12_fsm_11 = 4'b1011;
parameter    ap_ST_st13_fsm_12 = 4'b1100;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input  [31:0] in_fifo_V_dout;
input   in_fifo_V_empty_n;
output   in_fifo_V_read;
output  [31:0] out_fifo_V_din;
input   out_fifo_V_full_n;
output   out_fifo_V_write;

reg in_fifo_V_read;
reg[31:0] out_fifo_V_din;
reg out_fifo_V_write;
reg   [31:0] tmp_3_reg_119;
reg   [3:0] ap_CS_fsm = 4'b0000;
reg   [31:0] tmp_6_reg_124;
reg   [31:0] tmp_7_reg_129;
wire   [63:0] full_fu_66_p2;
reg   [63:0] full_reg_134;
wire   [63:0] full_1_fu_83_p2;
reg   [63:0] full_1_reg_139;
reg   [31:0] data1_reg_154;
wire   [15:0] data2_fu_111_p1;
reg   [15:0] data2_reg_159;
wire   [31:0] tmp_2_fu_115_p1;
wire   [63:0] grp_fu_52_p0;
wire   [63:0] grp_fu_52_p1;
wire   [63:0] tmp_4_fu_56_p3;
wire   [63:0] full_fu_66_p1;
wire   [63:0] tmp_s_fu_72_p3;
wire   [63:0] full_1_fu_83_p1;
wire   [63:0] grp_fu_52_p2;
wire   [63:0] ret_fu_97_p1;
wire    grp_fu_52_ce;
reg   [3:0] ap_NS_fsm;


dut_dmul_64ns_64ns_64_6_max_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dut_dmul_64ns_64ns_64_6_max_dsp_U1(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_52_p0 ),
    .din1( grp_fu_52_p1 ),
    .ce( grp_fu_52_ce ),
    .dout( grp_fu_52_p2 )
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

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st11_fsm_10 == ap_CS_fsm)) begin
        data1_reg_154 <= {{ret_fu_97_p1[ap_const_lv32_3F : ap_const_lv32_20]}};
        data2_reg_159 <= data2_fu_111_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((~(in_fifo_V_empty_n == ap_const_logic_0) & (ap_ST_st5_fsm_4 == ap_CS_fsm))) begin
        full_1_reg_139 <= full_1_fu_83_p2;
        full_reg_134 <= full_fu_66_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(in_fifo_V_empty_n == ap_const_logic_0))) begin
        tmp_3_reg_119 <= in_fifo_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((~(in_fifo_V_empty_n == ap_const_logic_0) & (ap_ST_st3_fsm_2 == ap_CS_fsm))) begin
        tmp_6_reg_124 <= in_fifo_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((~(in_fifo_V_empty_n == ap_const_logic_0) & (ap_ST_st4_fsm_3 == ap_CS_fsm))) begin
        tmp_7_reg_129 <= in_fifo_V_dout;
    end
end

/// in_fifo_V_read assign process. ///
always @ (in_fifo_V_empty_n or ap_CS_fsm)
begin
    if ((((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(in_fifo_V_empty_n == ap_const_logic_0)) | (~(in_fifo_V_empty_n == ap_const_logic_0) & (ap_ST_st3_fsm_2 == ap_CS_fsm)) | (~(in_fifo_V_empty_n == ap_const_logic_0) & (ap_ST_st4_fsm_3 == ap_CS_fsm)) | (~(in_fifo_V_empty_n == ap_const_logic_0) & (ap_ST_st5_fsm_4 == ap_CS_fsm)) | (~(in_fifo_V_empty_n == ap_const_logic_0) & (ap_ST_st1_fsm_0 == ap_CS_fsm)))) begin
        in_fifo_V_read = ap_const_logic_1;
    end else begin
        in_fifo_V_read = ap_const_logic_0;
    end
end

/// out_fifo_V_din assign process. ///
always @ (out_fifo_V_full_n or ap_CS_fsm or data1_reg_154 or tmp_2_fu_115_p1)
begin
    if (~(out_fifo_V_full_n == ap_const_logic_0)) begin
        if ((ap_ST_st13_fsm_12 == ap_CS_fsm)) begin
            out_fifo_V_din = tmp_2_fu_115_p1;
        end else if ((ap_ST_st12_fsm_11 == ap_CS_fsm)) begin
            out_fifo_V_din = data1_reg_154;
        end else begin
            out_fifo_V_din = 'bx;
        end
    end else begin
        out_fifo_V_din = 'bx;
    end
end

/// out_fifo_V_write assign process. ///
always @ (out_fifo_V_full_n or ap_CS_fsm)
begin
    if ((((ap_ST_st12_fsm_11 == ap_CS_fsm) & ~(out_fifo_V_full_n == ap_const_logic_0)) | (~(out_fifo_V_full_n == ap_const_logic_0) & (ap_ST_st13_fsm_12 == ap_CS_fsm)))) begin
        out_fifo_V_write = ap_const_logic_1;
    end else begin
        out_fifo_V_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (in_fifo_V_empty_n or out_fifo_V_full_n or ap_CS_fsm)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(in_fifo_V_empty_n == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(in_fifo_V_empty_n == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : 
        begin
            if (~(in_fifo_V_empty_n == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st4_fsm_3 : 
        begin
            if (~(in_fifo_V_empty_n == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st5_fsm_4 : 
        begin
            if (~(in_fifo_V_empty_n == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
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
            if (~(out_fifo_V_full_n == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st13_fsm_12;
            end else begin
                ap_NS_fsm = ap_ST_st12_fsm_11;
            end
        end
        ap_ST_st13_fsm_12 : 
        begin
            if (~(out_fifo_V_full_n == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st13_fsm_12;
            end
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign data2_fu_111_p1 = ret_fu_97_p1[15:0];
assign full_1_fu_83_p1 = $signed(in_fifo_V_dout);
assign full_1_fu_83_p2 = (tmp_s_fu_72_p3 + full_1_fu_83_p1);
assign full_fu_66_p1 = $signed(tmp_6_reg_124);
assign full_fu_66_p2 = (tmp_4_fu_56_p3 + full_fu_66_p1);
assign grp_fu_52_ce = ap_const_logic_1;
assign grp_fu_52_p0 = full_reg_134;
assign grp_fu_52_p1 = full_1_reg_139;
assign ret_fu_97_p1 = grp_fu_52_p2;
assign tmp_2_fu_115_p1 = $unsigned(data2_reg_159);
assign tmp_4_fu_56_p3 = {{tmp_3_reg_119}, {ap_const_lv32_0}};
assign tmp_s_fu_72_p3 = {{tmp_7_reg_129}, {ap_const_lv32_0}};


endmodule //dut

