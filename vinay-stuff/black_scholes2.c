#include "black_scholes2.h"
#include "gaussian.h"
#include "util.h"
#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
//#include "mt19937ar.h"

/**
 * This function is what you compute for each iteration of
 * Black-Scholes.  You don't have to understand it; just call it.
 * "gaussian_random_number" is the current random number (from a
 * Gaussian distribution, which in our case comes from gaussrand1()).
 */

double mult2_1(double a, double b){
  float res = a*b;
  #pragma HLS RESOURCE variable=res core=FAddSub_nodsp
  return res;
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


//double
void black_scholes2 (
        const double S,
        const double E,
        const double r,
        const double sigma,
        const double T,
        const double gaussian_random_number,
        double store[]
        )
{
    // #pragma HLS dataflow
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
    tmp5 = r - tmp;
    tmp = expo1(tmp5);
    tmp = mult2_1(tmp,S);
    tmp = mult2_1(tmp,T);

    tmp2 = mult2_1(sigma, gaussian_random_number);
    tmp2 = mult2_1(tmp2,sqrt1(T));

    tmp3 = tmp + tmp2;
    tmp6 = -r*T;
    tmp4 = expo1(tmp6);
    tmp4 = tmp4*((tmp3 - E < 0.0) ? 0.0 : tmp3 - E);

    current_value = S * exp ( (r - (sigma*sigma) / 2.0) * T + sigma * sqrt (T) * gaussian_random_number );
    mydata = exp(-r * T) * ((current_value - E < 0.0) ? 0.0 : current_value - E);
    //printf("%f\n", mydata);
    *store = mydata;
    //return mydata;
}
