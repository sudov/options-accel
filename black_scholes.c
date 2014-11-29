#include "black_scholes.h"
#include "gaussian.h"
#include "util.h"

#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
//#include "mt19937ar.h"
#define MM 100000
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
void 
black_scholes_iterate (black_scholes_args_t* the_args)
{
  black_scholes_args_t* args = the_args;

  int k;    // Iteration Variable

  const int S = args->S;
  const int E = args->E;
  const int M = args->M;
  const double r = args->r;
  const double sigma = args->sigma;
  const double T = args->T;

  // For random Number
  double gaussian_random_number;
  unsigned long init[4]={0x123, 0x234, 0x345, 0x456}, length=4; //***Mod


  /* Temporary variables */
  gaussrand_state_t gaussrand_state;
  
  //void* prng_stream = NULL; 
  
  //double trials[MM];
  double mean = 0.0;
  double current_value;
  double variance = 0.0;
  double diff;

  double n = 0.0;
  double mymean = 0.0;
  double M1 = 0.0;
  double M2 = 0.0;
  double Q1 = 0.0;
  double Q2 = 0.0;
  double delta = 0.0;
  double mydata = 0.0;
  double sum = 0.0;
  /* Spawn a random number generator */
  //prng_stream = spawn_prng_stream (0);

  /* Initialize the Gaussian random number module for this thread */
  init_gaussrand_state (&gaussrand_state);
  init_by_array(init, length);        //***Mod

  
  /* Do the Black-Scholes iterations */
  for (k = 1; k <= MM; k++)
    {
      #pragma HLS pipeline 
     gaussian_random_number = gaussrand2(&gaussrand_state);
    
    current_value = S * exp ( (r - (sigma*sigma) / 2.0) * T + sigma * sqrt (T) * gaussian_random_number );
    mydata = exp(-r * T) * ((current_value - E < 0.0) ? 0.0 : current_value - E);
    if(k==1){
      M2 = mydata;
      M1 = M2;
      Q2 = 0;
      Q1 = Q2;
    }else{
      M2 = M1 + (mydata-M1)/k;

      Q2 = Q1 + (k-1)*pow(mydata-M1,2.0)/k;
      M1 = M2;
      Q1 = Q2;
    }
	sum = sum+mydata;

    //trials[k] = exp(-r * T) * ((current_value - E < 0.0) ? 0.0 : current_value - E);
    //n = n+1;
 //mydata = exp(-r * T) * ((current_value - E < 0.0) ? 0.0 : current_value - E);
 //delta = mydata-mymean;
 //mymean = mymean + (delta)/n;
 //M2 = M2+delta*(mydata-mymean);
      /*
       * We scale each term of the sum in order to avoid overflow. 
       * This ensures that mean is never larger than the max
       * element of trials[0 .. M-1].
       */
      //mean += trials[k] / (double) M;
    }

/*
    //Calculate STDV
    for(k = 0;k<MM;k++){
 //     #pragma HLS pipeline 
      diff = trials[k] - mean;
      variance += diff * diff / (double) M;
    }
*/
    //variance = M2/(n-1);
    variance = Q2/(MM-1);
  /* Pack the OUT values into the args struct */
  args->variance = variance;
  
  args->mean = sum/(MM);
  args->stdv = sqrt(variance);
	printf("mean: %f\n",args->mean);

}



void
black_scholes (confidence_interval_t* interval,
         const double S,
         const double E,
         const double r,
         const double sigma,
         const double T,
         const int M)
{
  black_scholes_args_t args;
  double mean = 0.0;
  double stddev = 0.0;
  double conf_width = 0.0;

  assert (M > 0);

  args.S = S;
  args.E = E;
  args.r = r;
  args.sigma = sigma;
  args.T = T;
  args.M = M;

  args.mean = 0.0;
  args.variance = 0.0;

  black_scholes_iterate (&args);
  mean = args.mean;
  stddev = args.stdv;

  conf_width = 1.96 * stddev / sqrt ((double) M);
  interval->min = mean - conf_width;
  interval->max = mean + conf_width;

}


