set moduleName black_scholes2_loop
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName black_scholes2_loop
set C_modelType { double 64 }
set C_modelArgList { 
	{ S double 64 regular  }
	{ E double 64 regular  }
	{ r double 64 regular  }
	{ sigma double 64 regular  }
	{ T double 64 regular  }
	{ rand_number double 64 regular {array 10000 { 1 3 } 1 1 }  }
	{ store double 64 regular {array 10000 { 0 3 } 0 1 }  }
	{ M int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "S", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "S","cData": "double","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "E", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "E","cData": "double","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "r", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "r","cData": "double","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "sigma", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "sigma","cData": "double","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "T", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "T","cData": "double","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "rand_number", "interface" : "memory", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "rand_number","cData": "double","cArray": [{"low" : 0,"up" : 9999,"step" : 1}]}]}]} , 
 	{ "Name" : "store", "interface" : "memory", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "store","cData": "double","cArray": [{"low" : 0,"up" : 9999,"step" : 1}]}]}]} , 
 	{ "Name" : "M", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "return","cData": "","cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ S sc_in sc_lv 64 signal 0 } 
	{ E sc_in sc_lv 64 signal 1 } 
	{ r sc_in sc_lv 64 signal 2 } 
	{ sigma sc_in sc_lv 64 signal 3 } 
	{ T sc_in sc_lv 64 signal 4 } 
	{ rand_number_address0 sc_out sc_lv 14 signal 5 } 
	{ rand_number_ce0 sc_out sc_logic 1 signal 5 } 
	{ rand_number_q0 sc_in sc_lv 64 signal 5 } 
	{ store_address0 sc_out sc_lv 14 signal 6 } 
	{ store_ce0 sc_out sc_logic 1 signal 6 } 
	{ store_we0 sc_out sc_logic 1 signal 6 } 
	{ store_d0 sc_out sc_lv 64 signal 6 } 
	{ M sc_in sc_lv 32 signal 7 } 
	{ ap_return sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "S", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "S", "role": "default" }} , 
 	{ "name": "E", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "E", "role": "default" }} , 
 	{ "name": "r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "r", "role": "default" }} , 
 	{ "name": "sigma", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sigma", "role": "default" }} , 
 	{ "name": "T", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "T", "role": "default" }} , 
 	{ "name": "rand_number_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "rand_number", "role": "address0" }} , 
 	{ "name": "rand_number_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rand_number", "role": "ce0" }} , 
 	{ "name": "rand_number_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rand_number", "role": "q0" }} , 
 	{ "name": "store_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "store", "role": "address0" }} , 
 	{ "name": "store_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "store", "role": "ce0" }} , 
 	{ "name": "store_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "store", "role": "we0" }} , 
 	{ "name": "store_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "store", "role": "d0" }} , 
 	{ "name": "M", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	S { ap_none {  { S in_data 0 64 } } }
	E { ap_none {  { E in_data 0 64 } } }
	r { ap_none {  { r in_data 0 64 } } }
	sigma { ap_none {  { sigma in_data 0 64 } } }
	T { ap_none {  { T in_data 0 64 } } }
	rand_number { ap_memory {  { rand_number_address0 mem_address 1 14 }  { rand_number_ce0 mem_ce 1 1 }  { rand_number_q0 mem_dout 0 64 } } }
	store { ap_memory {  { store_address0 mem_address 1 14 }  { store_ce0 mem_ce 1 1 }  { store_we0 mem_we 1 1 }  { store_d0 mem_din 1 64 } } }
	M { ap_none {  { M in_data 0 32 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
