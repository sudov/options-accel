#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("S", 64, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("E", 64, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("r", 64, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("sigma", 64, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("T", 64, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("rand_number_address0", 14, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("rand_number_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("rand_number_q0", 64, hls_in, 5, "ap_memory", "mem_dout", 1),
	Port_Property("store_address0", 14, hls_out, 6, "ap_memory", "mem_address", 1),
	Port_Property("store_ce0", 1, hls_out, 6, "ap_memory", "mem_ce", 1),
	Port_Property("store_we0", 1, hls_out, 6, "ap_memory", "mem_we", 1),
	Port_Property("store_d0", 64, hls_out, 6, "ap_memory", "mem_din", 1),
	Port_Property("M", 32, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("ap_return", 64, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "black_scholes2_loop";
