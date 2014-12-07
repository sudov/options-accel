#define N 32
void dut(int in_fifo[N], int out_fifo[N]) 
{
    #pragma HLS interface ap_fifo port=in_fifo,out_fifo
    #pragma HLS interface ap_ctrl_none port=return
    static int cnt;
    unsigned i;
    for (i = 0; i < N; ++i) {
        if (in_fifo[i] != 0)
            cnt++;
        out_fifo[i] = cnt;
    }
}
