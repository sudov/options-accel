#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("in_fifo_V_dout", 32, hls_in, 0, "ap_fifo", "fifo_data", 10),
	Port_Property("in_fifo_V_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 10),
	Port_Property("in_fifo_V_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 10),
	Port_Property("out_fifo_V", 32, hls_in, 1, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "dut";
