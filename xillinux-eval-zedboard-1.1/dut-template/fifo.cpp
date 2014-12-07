#include "hls_stream.h"

void dut(hls::stream<int>& in_fifo, hls::stream<int>& out_fifo) 
{
    //#pragma HLS interface ap_fifo port=in_fifo,out_fifo
    #pragma HLS interface ap_ctrl_none port=return
    int val1 = in_fifo.read();
    int val2 = in_fifo.read();
    out_fifo.write(val1 - val2);
    out_fifo.write(val1 + val2);
}
