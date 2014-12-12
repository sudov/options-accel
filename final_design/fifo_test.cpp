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
    //static int cnt;

    int data1; 
    int data2;
    long long full;
    my_type cvt;
    my_type ret;



    //char CallPutFlag;
    double r;
    double b;
    double result;

    //CallPutFlag
    char CallPutFlag = (char) in_fifo.read();

    //r
    data1 = in_fifo.read();
    data2 = in_fifo.read();
    full = ((long long) data1 << 32) + data2;
    cvt.myint64 = full;
    r = cvt.mydouble;

    //b
    data1 = in_fifo.read();
    data2 = in_fifo.read();
    full = ((long long) data1 << 32) + data2;
    cvt.myint64 = full;
    b = cvt.mydouble;

    result = r*b;
    ret.mydouble = result;

    data1 = (int)(ret.myint64>>32);
    data2 = (int)(0xffff&(ret.myint64));

    out_fifo.write(data1);
    out_fifo.write(data2);

}




