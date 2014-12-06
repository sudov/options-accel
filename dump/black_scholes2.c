#include "black_scholes2.h"
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
black_scholes2 (
         const double S,
         const double E,
         const double r,
         const double sigma,
         const double T,
         const double gaussian_random_number,
         const double rT
         )
{
    #pragma HLS dataflow
    #pragma HLS pipeline
    double current_value;
    double mydata;
    double tmp;
    double tmp2;
    double tmp3;
    double tmp4;
    double tmp5;
    double tmp6;

    tmp = mult2_1(sigma,sigma);
    tmp = div_1(tmp,2.0);

    //tmp = expo1(r-tmp);
    tmp = mult2_1(r-tmp,T);
    tmp2 = mult2_2(sigma, gaussian_random_number);
    //tmp3 = sqrt1(T);
    tmp2 = mult2_3(tmp2,T);
    tmp3 = tmp + tmp2;
    tmp3 = expo1(tmp3);
    tmp3 = mult2_1(tmp3,S);


    tmp4 = rT;//expo1(-r*T);
    tmp4 = tmp4*((tmp3 - E < 0.0) ? 0.0 : tmp3 - E);

    //current_value = S * expo1 ( (r - (sigma*sigma) / 2.0) * T + sigma * sqrt (T) * gaussian_random_number );
    //mydata = expo1(-r * T) * ((current_value - E < 0.0) ? 0.0 : current_value - E);

    //return mydata;
    return tmp4;
}





double
black_scholes3 (
        const double S,
        const double E,
        const double A,
        const double B,
        const double rT,
        const double result
        )
{
//    #pragma HLS dataflow
    #pragma HLS pipeline II=1
    double tmp;
    double tmp2;
    double tmp3;
    double tmp4;

    tmp = mult2_1(B,result);
    tmp2 = expo1(A+tmp);
    tmp3 = S*tmp2;
    tmp4 = rT*((tmp3 - E < 0.0) ? 0.0 : tmp3 - E);

    //current_value = S * expo1 ( (r - (sigma*sigma) / 2.0) * T + sigma * sqrt (T) * gaussian_random_number );
    //mydata = expo1(-r * T) * ((current_value - E < 0.0) ? 0.0 : current_value - E);

    return tmp4;
}
