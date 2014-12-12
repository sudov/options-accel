#include "hls_stream.h"
#include "BlackScholes.h"

typedef union
{
    long long myint64;
    double mydouble;
} my_type ;


void dut(hls::stream<int>& in_fifo, hls::stream<int>& out_fifo) 
{
    #pragma HLS interface ap_ctrl_none port=return
    static int cnt;
    int first_data = in_fifo.read();
    int second_data = in_fifo.read();
    long long full_data = ((long long) first_data << 32) + second_data;



    my_type cvt;
    cvt.myint64 = full_data;

    double double_data = cvt.mydouble;

    cnt--;
    out_fifo.write(cnt);


    my_type a;




}
