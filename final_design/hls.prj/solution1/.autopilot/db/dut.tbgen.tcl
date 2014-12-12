set moduleName dut
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set C_modelName dut
set C_modelType { void 0 }
set C_modelArgList { 
	{ in_fifo_V int 32 regular {fifo 0 volatile }  }
	{ out_fifo_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_fifo_V", "interface" : "fifo", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_fifo.V","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_fifo_V", "interface" : "fifo", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_fifo.V","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ in_fifo_V_dout sc_in sc_lv 32 signal 0 } 
	{ in_fifo_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_fifo_V_read sc_out sc_logic 1 signal 0 } 
	{ out_fifo_V_din sc_out sc_lv 32 signal 1 } 
	{ out_fifo_V_full_n sc_in sc_logic 1 signal 1 } 
	{ out_fifo_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "in_fifo_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_fifo_V", "role": "dout" }} , 
 	{ "name": "in_fifo_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_fifo_V", "role": "empty_n" }} , 
 	{ "name": "in_fifo_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_fifo_V", "role": "read" }} , 
 	{ "name": "out_fifo_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_fifo_V", "role": "din" }} , 
 	{ "name": "out_fifo_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_fifo_V", "role": "full_n" }} , 
 	{ "name": "out_fifo_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_fifo_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	in_fifo_V { ap_fifo {  { in_fifo_V_dout fifo_data 0 32 }  { in_fifo_V_empty_n fifo_status 0 1 }  { in_fifo_V_read fifo_update 1 1 } } }
	out_fifo_V { ap_fifo {  { out_fifo_V_din fifo_data 1 32 }  { out_fifo_V_full_n fifo_status 0 1 }  { out_fifo_V_write fifo_update 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	in_fifo_V { fifo_read 11 no_conditional }
	out_fifo_V { fifo_write 2 no_conditional }
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
