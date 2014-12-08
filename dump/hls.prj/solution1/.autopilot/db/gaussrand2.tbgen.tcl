set moduleName gaussrand2
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 12
set pipeLatency 80
set C_modelName gaussrand2
set C_modelType { double 64 }
set C_modelArgList { 
	{ gaussrand_state_V1 double 64 regular {pointer 1}  }
	{ gaussrand_state_V2 double 64 regular {pointer 2}  }
	{ gaussrand_state_S double 64 regular {pointer 2}  }
	{ gaussrand_state_phase int 32 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gaussrand_state_V1", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "gaussrand_state.V1","cData": "double","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "gaussrand_state_V2", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "gaussrand_state.V2","cData": "double","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "gaussrand_state_S", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "gaussrand_state.S","cData": "double","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "gaussrand_state_phase", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "gaussrand_state.phase","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "return","cData": "","cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gaussrand_state_V1 sc_out sc_lv 64 signal 0 } 
	{ gaussrand_state_V1_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ gaussrand_state_V2_i sc_in sc_lv 64 signal 1 } 
	{ gaussrand_state_V2_o sc_out sc_lv 64 signal 1 } 
	{ gaussrand_state_V2_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ gaussrand_state_S_i sc_in sc_lv 64 signal 2 } 
	{ gaussrand_state_S_o sc_out sc_lv 64 signal 2 } 
	{ gaussrand_state_S_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ gaussrand_state_phase_i sc_in sc_lv 32 signal 3 } 
	{ gaussrand_state_phase_o sc_out sc_lv 32 signal 3 } 
	{ gaussrand_state_phase_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ gaussrand_state_V2_o_ap_lwr sc_out sc_logic 1 outlwr 1 } 
	{ gaussrand_state_S_o_ap_lwr sc_out sc_logic 1 outlwr 2 } 
	{ gaussrand_state_phase_o_ap_lwr sc_out sc_logic 1 outlwr 3 } 
	{ ap_return sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gaussrand_state_V1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gaussrand_state_V1", "role": "default" }} , 
 	{ "name": "gaussrand_state_V1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "gaussrand_state_V1", "role": "ap_vld" }} , 
 	{ "name": "gaussrand_state_V2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gaussrand_state_V2", "role": "i" }} , 
 	{ "name": "gaussrand_state_V2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gaussrand_state_V2", "role": "o" }} , 
 	{ "name": "gaussrand_state_V2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "gaussrand_state_V2", "role": "o_ap_vld" }} , 
 	{ "name": "gaussrand_state_S_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gaussrand_state_S", "role": "i" }} , 
 	{ "name": "gaussrand_state_S_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gaussrand_state_S", "role": "o" }} , 
 	{ "name": "gaussrand_state_S_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "gaussrand_state_S", "role": "o_ap_vld" }} , 
 	{ "name": "gaussrand_state_phase_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gaussrand_state_phase", "role": "i" }} , 
 	{ "name": "gaussrand_state_phase_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gaussrand_state_phase", "role": "o" }} , 
 	{ "name": "gaussrand_state_phase_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "gaussrand_state_phase", "role": "o_ap_vld" }} , 
 	{ "name": "gaussrand_state_V2_o_ap_lwr", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outlwr", "bundle":{"name": "gaussrand_state_V2", "role": "o_ap_lwr" }} , 
 	{ "name": "gaussrand_state_S_o_ap_lwr", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outlwr", "bundle":{"name": "gaussrand_state_S", "role": "o_ap_lwr" }} , 
 	{ "name": "gaussrand_state_phase_o_ap_lwr", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outlwr", "bundle":{"name": "gaussrand_state_phase", "role": "o_ap_lwr" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	gaussrand_state_V1 { ap_vld {  { gaussrand_state_V1 out_data 1 64 }  { gaussrand_state_V1_ap_vld out_vld 1 1 } } }
	gaussrand_state_V2 { ap_ovld {  { gaussrand_state_V2_i in_data 0 64 }  { gaussrand_state_V2_o out_data 1 64 }  { gaussrand_state_V2_o_ap_vld out_vld 1 1 }  { gaussrand_state_V2_o_ap_lwr out_lwr 1 1 } } }
	gaussrand_state_S { ap_ovld {  { gaussrand_state_S_i in_data 0 64 }  { gaussrand_state_S_o out_data 1 64 }  { gaussrand_state_S_o_ap_vld out_vld 1 1 }  { gaussrand_state_S_o_ap_lwr out_lwr 1 1 } } }
	gaussrand_state_phase { ap_ovld {  { gaussrand_state_phase_i in_data 0 32 }  { gaussrand_state_phase_o out_data 1 32 }  { gaussrand_state_phase_o_ap_vld out_vld 1 1 }  { gaussrand_state_phase_o_ap_lwr out_lwr 1 1 } } }
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
