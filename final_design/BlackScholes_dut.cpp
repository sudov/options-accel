#include "BlackScholes_dut.h"



#define NUM_PASSES 100000
#define RAND ((double)rand()/RAND_MAX)
#define PI 3.14159265358979323846  /* pi */
// typedef union
// {
//     long long myint64;
//     double mydouble;
// } my_type ;


void dut(hls::stream<int> in_fifo, hls::stream<int> out_fifo) 
{
    //#pragma HLS pipeline II=4
    //#pragma HLS dependence variable=rand_number inter false
    #pragma HLS interface ap_ctrl_none port=return
    //static int cnt;

    int i;

    //fifo tmp variables
    int data1; 
    int data2;
    long long full;
    my_type cvt;
    my_type ret;

    //BS parameters
    char CallPutFlag = 'c';
    double S;
    double X;
    double T;
    double r;
    double b;
    double result;


//======================Initialize BlackSchole parameters though FIFO=====================
    //S
    data1 = in_fifo.read();
    data2 = in_fifo.read();
    full = ((long long) data1 << 32) + data2;
    cvt.myint64 = full;
    S = cvt.mydouble;

    //X
    data1 = in_fifo.read();
    data2 = in_fifo.read();
    full = ((long long) data1 << 32) + data2;
    cvt.myint64 = full;
    X = cvt.mydouble;

    //T
    data1 = in_fifo.read();
    data2 = in_fifo.read();
    full = ((long long) data1 << 32) + data2;
    cvt.myint64 = full;
    T = cvt.mydouble;

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


//======================Starting MC Iterations for BS=====================


    loop: for (i = 0; i < NUM_PASSES; i++) {
        // shadow_state();
        result = BlackScholes(CallPutFlag, S, X, T, r, b);
        ret.mydouble = result;
        //data1 = (int)(ret.myint64>>32);
        //data2 = (int)(0xffffffff&(ret.myint64));
        //out_fifo.write(data1);
        //out_fifo.write(data2);
    }

}




