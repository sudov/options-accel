set moduleName black_scholes_gaussrand2
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 411
set pipeLatency 565
set C_modelName black_scholes_gaussrand2
set C_modelType { double 64 }
set C_modelArgList { 
	{ gaussrand_state_V2_read double 64 regular  }
	{ gaussrand_state_S_read double 64 regular  }
	{ gaussrand_state_phase_read int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gaussrand_state_V2_read", "interface" : "wire", "bitwidth" : 64} , 
 	{ "Name" : "gaussrand_state_S_read", "interface" : "wire", "bitwidth" : 64} , 
 	{ "Name" : "gaussrand_state_phase_read", "interface" : "wire", "bitwidth" : 32} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ gaussrand_state_V2_read sc_in sc_lv 64 signal 0 } 
	{ gaussrand_state_S_read sc_in sc_lv 64 signal 1 } 
	{ gaussrand_state_phase_read sc_in sc_lv 32 signal 2 } 
	{ ap_return sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "gaussrand_state_V2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gaussrand_state_V2_read", "role": "default" }} , 
 	{ "name": "gaussrand_state_S_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gaussrand_state_S_read", "role": "default" }} , 
 	{ "name": "gaussrand_state_phase_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gaussrand_state_phase_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	gaussrand_state_V2_read { ap_none {  { gaussrand_state_V2_read in_data 0 64 } } }
	gaussrand_state_S_read { ap_none {  { gaussrand_state_S_read in_data 0 64 } } }
	gaussrand_state_phase_read { ap_none {  { gaussrand_state_phase_read in_data 0 32 } } }
}
