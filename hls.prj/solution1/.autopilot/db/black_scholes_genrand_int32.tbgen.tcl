set moduleName black_scholes_genrand_int32
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName black_scholes_genrand_int32
set C_modelType { int 64 }
set C_modelArgList { 
	{ mti int 32 regular {pointer 2} {global 2}  }
	{ mt int 64 regular {array 624 { 2 2 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mti", "interface" : "wire", "bitwidth" : 32} , 
 	{ "Name" : "mt", "interface" : "memory", "bitwidth" : 64} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mti_i sc_in sc_lv 32 signal 0 } 
	{ mti_o sc_out sc_lv 32 signal 0 } 
	{ mti_o_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ mt_address0 sc_out sc_lv 10 signal 1 } 
	{ mt_ce0 sc_out sc_logic 1 signal 1 } 
	{ mt_we0 sc_out sc_logic 1 signal 1 } 
	{ mt_d0 sc_out sc_lv 64 signal 1 } 
	{ mt_q0 sc_in sc_lv 64 signal 1 } 
	{ mt_address1 sc_out sc_lv 10 signal 1 } 
	{ mt_ce1 sc_out sc_logic 1 signal 1 } 
	{ mt_we1 sc_out sc_logic 1 signal 1 } 
	{ mt_d1 sc_out sc_lv 64 signal 1 } 
	{ mt_q1 sc_in sc_lv 64 signal 1 } 
	{ ap_return sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mti_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mti", "role": "i" }} , 
 	{ "name": "mti_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mti", "role": "o" }} , 
 	{ "name": "mti_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mti", "role": "o_ap_vld" }} , 
 	{ "name": "mt_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mt", "role": "address0" }} , 
 	{ "name": "mt_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mt", "role": "ce0" }} , 
 	{ "name": "mt_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mt", "role": "we0" }} , 
 	{ "name": "mt_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mt", "role": "d0" }} , 
 	{ "name": "mt_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mt", "role": "q0" }} , 
 	{ "name": "mt_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mt", "role": "address1" }} , 
 	{ "name": "mt_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mt", "role": "ce1" }} , 
 	{ "name": "mt_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mt", "role": "we1" }} , 
 	{ "name": "mt_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mt", "role": "d1" }} , 
 	{ "name": "mt_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mt", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	mti { ap_ovld {  { mti_i in_data 0 32 }  { mti_o out_data 1 32 }  { mti_o_ap_vld out_vld 1 1 } } }
	mt { ap_memory {  { mt_address0 mem_address 1 10 }  { mt_ce0 mem_ce 1 1 }  { mt_we0 mem_we 1 1 }  { mt_d0 mem_din 1 64 }  { mt_q0 mem_dout 0 64 }  { mt_address1 mem_address 1 10 }  { mt_ce1 mem_ce 1 1 }  { mt_we1 mem_we 1 1 }  { mt_d1 mem_din 1 64 }  { mt_q1 mem_dout 0 64 } } }
}
