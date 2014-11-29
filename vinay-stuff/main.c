#ifndef _black_scholes3_loop_H
#define _black_scholes3_loop_H
#include "black_scholes2.h"
#include "gaussian.h"
#include "parser.h"
#include "timer.h"
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>

/**
 * Usage: ./hw1.x <filename> <nthreads>
 *
 * <filename> (don't include the angle brackets) is the name of 
 * a data file in the current directory containing the parameters
 * for the Black-Scholes simulation.  It has exactly six lines 
 * with no white space.  Put each parameter one to a line, with
 * an endline after it.  Here are the parameters:
 *
 * S
 * E
 * r
 * sigma
 * T
 * M
 *
 * <nthreads> (don't include the angle brackets) is the number of
 * worker threads to use at a time in the benchmark.  The sequential
 * code which we supply to you doesn't use this argument; your code
 * will.
 */

int
main (int argc, char* argv[])
{

  double S, E, r, sigma, T, t1, t2, A, B, rT;
  int M = 0;
  int i;
  char* filename = NULL;

  if (argc < 3)
    {
      fprintf (stderr, 
	       "Usage: ./hw1.x <filename> <nthreads>\n\n");
      exit (EXIT_FAILURE);
    }
  filename = argv[1];
  parse_parameters (&S, &E, &r, &sigma, &T, &M, filename);


  double store[M];
  double sum = 0.0;
  double mean = 0.0;
  double variance = 0.0;
  double conf_width;
  double rand_number[M];
  // double rand_number;


  gaussrand_state_t gaussrand_state;
  // Init mt19937ar random number generator
  unsigned long init[4]={0x123, 0x234, 0x345, 0x456}, length=4; //***Mod
  init_gaussrand_state (&gaussrand_state);
  init_by_array(init, length);        //***Mod

  /* 
   * Make sure init_timer() is only called by one thread,
   * before all the other threads run!
   */
  init_timer ();

  /*
   * Run the benchmark and time it.
   */

  t1 = get_seconds ();
  int j = 0;

  for(i = 0;i<M;i++){
      rand_number[i] = gaussrand2(&gaussrand_state);
  }

//--------------------------------Design 2----------------------
  // sum = black_scholes2_loop(S, E, r, sigma, T, rand_number, store, M);

//--------------------------------Design 3----------------------
  rT = exp(-r*T);
  A = (r - (sigma*sigma) / 2.0) * T;
  B = sigma * sqrt (T);
  black_scholes3_loop(S, E, A, B, rT, rand_number, store, M, &sum);
  printf("store_aft %f\n", store[5000]);
  printf("sum_aft %f\n", sum);

  sum = 0;
  for(i = 0;i<M;i++){
  	sum += store[i];
  }

  if(M==0){
    printf("Divide by 0\n");
  }else{
    mean = sum/M;
  }

  t2 = get_seconds ();
  
  for(i = 0;i<M;i++){
    variance += (store[i]-mean)*(store[i]-mean)/(double)M;
  }

  conf_width = 1.96 * sqrt(variance) / sqrt ((double) M);
	printf("conf:%f\n",conf_width);
  /*
   * A fun fact about C string literals (i.e., strings enclosed in
   * double quotes) is that the C preprocessor automatically
   * concatenates them if they are separated only by whitespace.
   */
  printf ("Black-Scholes benchmark:\n"
	  "------------------------\n"
	  "S        %g\n"
	  "E        %g\n"
	  "r        %g\n"
	  "sigma    %g\n"
	  "T        %g\n"
	  "M        %d\n",
	  S, E, r, sigma, T, M);
  printf ("Confidence interval: (%g, %g)\n", mean-conf_width, mean+conf_width);
  printf ("Total simulation time: %g seconds\n", t2 - t1);

  return 0;
}
#endif


