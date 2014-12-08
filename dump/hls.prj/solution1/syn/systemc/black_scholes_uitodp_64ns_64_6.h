// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __black_scholes_uitodp_64ns_64_6__HH__
#define __black_scholes_uitodp_64ns_64_6__HH__
#include "ACMP_uitodp.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int dout_WIDTH>
SC_MODULE(black_scholes_uitodp_64ns_64_6) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_uitodp<ID, 6, din0_WIDTH, dout_WIDTH> ACMP_uitodp_U;

    SC_CTOR(black_scholes_uitodp_64ns_64_6):  ACMP_uitodp_U ("ACMP_uitodp_U") {
        ACMP_uitodp_U.clk(clk);
        ACMP_uitodp_U.reset(reset);
        ACMP_uitodp_U.ce(ce);
        ACMP_uitodp_U.din0(din0);
        ACMP_uitodp_U.dout(dout);

    }

};

#endif //
