#include "hls_stream.h"

void dut(hls::stream<int>& in_fifo, hls::stream<int>& out_fifo) 
{
    #pragma HLS interface ap_ctrl_none port=return
    static int cnt;
    in_fifo.read();
    cnt--;
    out_fifo.write(cnt);
}
