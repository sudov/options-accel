set moduleName dut
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isOneStateSeq 1
set C_modelName dut
set C_modelType { void 0 }
set C_modelArgList { 
	{ in_fifo_V int 32 {fifo 0}  }
	{ out_fifo_V int 32 {fifo 1}  }
}

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

set Spec2ImplPortList { 
	in_fifo_V { ap_fifo {  { in_fifo_V_dout fifo_data 0 32 }  { in_fifo_V_empty_n fifo_status 0 1 }  { in_fifo_V_read fifo_update 1 1 } } }
	out_fifo_V { ap_fifo {  { out_fifo_V_din fifo_data 1 32 }  { out_fifo_V_full_n fifo_status 0 1 }  { out_fifo_V_write fifo_update 1 1 } } }
}
