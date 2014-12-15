// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __BlackScholesWrapper_drecip_64ns_64ns_64_11__HH__
#define __BlackScholesWrapper_drecip_64ns_64ns_64_11__HH__
#include "ACMP_drecip.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(BlackScholesWrapper_drecip_64ns_64ns_64_11) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_drecip<ID, 11, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_drecip_U;

    SC_CTOR(BlackScholesWrapper_drecip_64ns_64ns_64_11):  ACMP_drecip_U ("ACMP_drecip_U") {
        ACMP_drecip_U.clk(clk);
        ACMP_drecip_U.reset(reset);
        ACMP_drecip_U.ce(ce);
        ACMP_drecip_U.din0(din0);
        ACMP_drecip_U.din1(din1);
        ACMP_drecip_U.dout(dout);

    }

};

#endif //
