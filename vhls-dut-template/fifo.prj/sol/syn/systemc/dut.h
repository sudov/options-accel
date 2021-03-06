// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2012.3
// Copyright (C) 2012 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _dut_HH_
#define _dut_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct dut : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<32> > in_fifo_V_dout;
    sc_in< sc_logic > in_fifo_V_empty_n;
    sc_out< sc_logic > in_fifo_V_read;
    sc_out< sc_lv<32> > out_fifo_V_din;
    sc_in< sc_logic > out_fifo_V_full_n;
    sc_out< sc_logic > out_fifo_V_write;


    // Module declarations
    dut(sc_module_name name);
    SC_HAS_PROCESS(dut);

    ~dut();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<32> > cnt;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< bool > ap_sig_bdd_24;
    sc_signal< sc_lv<32> > tmp_fu_49_p2;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_st1_fsm_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_NS_fsm();
    void thread_ap_sig_bdd_24();
    void thread_in_fifo_V_read();
    void thread_out_fifo_V_din();
    void thread_out_fifo_V_write();
    void thread_tmp_fu_49_p2();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
