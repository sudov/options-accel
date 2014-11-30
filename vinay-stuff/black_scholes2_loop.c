#ifndef _black_scholes3_loop_H
#define _black_scholes3_loop_H
#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#define Mm 10000
/**
 * This function is what you compute for each iteration of
 * Black-Scholes.  You don't have to understand it; just call it.
 * "gaussian_random_number" is the current random number (from a
 * Gaussian distribution, which in our case comes from gaussrand1()).
 */
double
black_scholes2_loop (
        double S,
        double E,
        double r,
        double sigma,
        double T,
        double rand_number[Mm],
        double store[Mm],
        int M        
        )
{
  int i;
  double sum = 0.0;

  for (i = 0; i < M; i++){
      black_scholes2 (S, E, r, sigma, T, rand_number[i],&store[i]);
      sum += store[i];
  }

  return sum;
}

void
black_scholes3_loop (
        double S,
        double E,
        double A,
        double B,
        double rT,
        double rand_number[Mm],
        double store[Mm],
        int M,
        double *sum
        )
{
  // #pragma HLS interface ap_fifo port=rand_number
  // #pragma HLS interface ap_fifo port=store

  // // Slave
  // #pragma HLS resource core=AXI4Stream variable=rand_number metadata="-bus_bundle AXI4Stream_S" port_map={{rand_number_data TDATA} {store_strb TSTRB}}

  // // Master
  // #pragma HLS resource core=AXI4Stream variable=rand_number metadata="-bus_bundle AXI4Stream_M" port_map={{rand_number_data TDATA} {store_strb TSTRB}}

  int i;
  assert(Mm < 10000);
  pipe_loop: for(i = 0; i < Mm; i++){
    #pragma HLS loop_tripcount min=0 max=10000 avg=500
    black_scholes3 (S, E, A,B,rT, rand_number[i],&store[i]);
    *sum += store[i];
  }
}
#endif
