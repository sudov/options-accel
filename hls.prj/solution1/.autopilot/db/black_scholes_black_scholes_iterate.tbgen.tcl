set moduleName black_scholes_black_scholes_iterate
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName black_scholes_black_scholes_iterate
set C_modelType { int 128 }
set C_modelArgList { 
	{ the_args_S_read double 64 regular  }
	{ the_args_E_read double 64 regular  }
	{ the_args_r_read double 64 regular  }
	{ the_args_sigma_read double 64 regular  }
	{ the_args_T_read double 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "the_args_S_read", "interface" : "wire", "bitwidth" : 64} , 
 	{ "Name" : "the_args_E_read", "interface" : "wire", "bitwidth" : 64} , 
 	{ "Name" : "the_args_r_read", "interface" : "wire", "bitwidth" : 64} , 
 	{ "Name" : "the_args_sigma_read", "interface" : "wire", "bitwidth" : 64} , 
 	{ "Name" : "the_args_T_read", "interface" : "wire", "bitwidth" : 64} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ the_args_S_read sc_in sc_lv 64 signal 0 } 
	{ the_args_E_read sc_in sc_lv 64 signal 1 } 
	{ the_args_r_read sc_in sc_lv 64 signal 2 } 
	{ the_args_sigma_read sc_in sc_lv 64 signal 3 } 
	{ the_args_T_read sc_in sc_lv 64 signal 4 } 
	{ ap_return_0 sc_out sc_lv 64 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "the_args_S_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "the_args_S_read", "role": "default" }} , 
 	{ "name": "the_args_E_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "the_args_E_read", "role": "default" }} , 
 	{ "name": "the_args_r_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "the_args_r_read", "role": "default" }} , 
 	{ "name": "the_args_sigma_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "the_args_sigma_read", "role": "default" }} , 
 	{ "name": "the_args_T_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "the_args_T_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}
set Spec2ImplPortList { 
	the_args_S_read { ap_none {  { the_args_S_read in_data 0 64 } } }
	the_args_E_read { ap_none {  { the_args_E_read in_data 0 64 } } }
	the_args_r_read { ap_none {  { the_args_r_read in_data 0 64 } } }
	the_args_sigma_read { ap_none {  { the_args_sigma_read in_data 0 64 } } }
	the_args_T_read { ap_none {  { the_args_T_read in_data 0 64 } } }
}
