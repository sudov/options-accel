#include "black_scholes.h"
#include "gaussian.h"
#include "util.h"

#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#define uint32 unsigned
//#include "mt19937ar.h"

/**
 * This function is what you compute for each iteration of
 * Black-Scholes.  You don't have to understand it; just call it.
 * "gaussian_random_number" is the current random number (from a
 * Gaussian distribution, which in our case comes from gaussrand1()).
 */


/**
 * Take a pointer to a black_scholes_args_t struct, and return NULL.
 * (The return value is irrelevant, because all the interesting
 * information is written to the input struct.)  This function runs
 * Black-Scholes iterations, and computes the local part of the mean.
 */

double mult2_1(double a, double b){
  return a*b;
}
double mult2_2(double a, double b){
  return a*b;
}
double mult2_3(double a, double b){
  return a*b;
}
double div_1(double a, double b){
  return a/b;
}

double expo1(double a){
  return exp(a);
}

double sqrt1(double a){
  return sqrt(a);
}

double
black_scholes (
        const double S,
        const double E,
        const double A,
        const double B,
        const double rT,
        gaussrand_state_t gaussrand_state
        )
{
  #pragma HLS pipeline II=1
  double tmp, tmp2, tmp3, tmp4, tmp5;
  double rand_number = gaussrand2(&gaussrand_state);
  #pragma HLS dependence variable=rand_number inter false

  tmp = mult2_1(B,rand_number);
  tmp2 = expo1(A+tmp);
  tmp3 = mult2_2(S,tmp2);
  tmp4 = (tmp3 - E < 0.0) ? 0.0 : tmp3 - E;
  tmp5 = mult2_3(rT,tmp4);

  return tmp5;
}
