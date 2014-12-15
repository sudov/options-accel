set moduleName BlackScholesWrapper
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName BlackScholesWrapper
set C_modelType { void 0 }
set C_modelArgList { 
	{ CallPutFlag int 8 regular  }
	{ S double 64 regular  }
	{ X double 64 regular  }
	{ T double 64 regular  }
	{ r double 64 regular  }
	{ b double 64 regular  }
	{ a double 64 regular {array 100000 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "CallPutFlag", "interface" : "wire", "bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "CallPutFlag","cData": "char","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "S", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "S","cData": "double","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "X", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "X","cData": "double","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "T", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "T","cData": "double","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "r", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "r","cData": "double","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "b","cData": "double","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "a","cData": "double","cArray": [{"low" : 0,"up" : 99999,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ CallPutFlag sc_in sc_lv 8 signal 0 } 
	{ S sc_in sc_lv 64 signal 1 } 
	{ X sc_in sc_lv 64 signal 2 } 
	{ T sc_in sc_lv 64 signal 3 } 
	{ r sc_in sc_lv 64 signal 4 } 
	{ b sc_in sc_lv 64 signal 5 } 
	{ a_address0 sc_out sc_lv 17 signal 6 } 
	{ a_ce0 sc_out sc_logic 1 signal 6 } 
	{ a_we0 sc_out sc_logic 1 signal 6 } 
	{ a_d0 sc_out sc_lv 64 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "CallPutFlag", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CallPutFlag", "role": "default" }} , 
 	{ "name": "S", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "S", "role": "default" }} , 
 	{ "name": "X", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "X", "role": "default" }} , 
 	{ "name": "T", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "T", "role": "default" }} , 
 	{ "name": "r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "r", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "we0" }} , 
 	{ "name": "a_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "d0" }}  ]}
set Spec2ImplPortList { 
	CallPutFlag { ap_none {  { CallPutFlag in_data 0 8 } } }
	S { ap_none {  { S in_data 0 64 } } }
	X { ap_none {  { X in_data 0 64 } } }
	T { ap_none {  { T in_data 0 64 } } }
	r { ap_none {  { r in_data 0 64 } } }
	b { ap_none {  { b in_data 0 64 } } }
	a { ap_memory {  { a_address0 mem_address 1 17 }  { a_ce0 mem_ce 1 1 }  { a_we0 mem_we 1 1 }  { a_d0 mem_din 1 64 } } }
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
