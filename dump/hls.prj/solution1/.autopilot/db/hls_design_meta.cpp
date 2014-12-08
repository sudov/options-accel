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
	Port_Property("A", 64, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("B", 64, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("rT", 64, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("gaussrand_state_V1", 64, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("gaussrand_state_V2", 64, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("gaussrand_state_S", 64, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("gaussrand_state_phase", 32, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("ap_return", 64, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "black_scholes";
