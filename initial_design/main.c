#include "black_scholes.h"
#include "gaussian.h"

#include "parser.h"
#include "timer.h"

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>

// #define uint32 unsigned long

/**
 * Usage: ./hw1.x <filename> <nthreads>
 *
 * <filename> (don't include the angle brackets) is the name of 
 * a data file in the current directory containing the parameters
 * for the Black-Scholes simulation.  It has exactly six lines 
 * with no white space.  Put each parameter one to a line, with
 * an endline after it.  Here are the parameters: S, E, r, sigma, T, M
 *
 * <nthreads> 1 by default
 */
void
init_gaussrand_state (gaussrand_state_t* state)
{
 if(state==NULL){
  printf("init gauss error\n");
 }
 state->V1 = 0.0;
 state->V2 = 0.0;
 state->S = 0.0;
 state->phase = 0;
}

int
main (int argc, char* argv[])
{

  double S, E, r, sigma, T;
  int M = 0;
  char* filename = NULL;
  int nthreads = 1;  
  int i;

  if (argc < 3)
    {
      fprintf (stderr, 
	       "Usage: ./hw1.x <filename> <nthreads>\n\n");
      exit (EXIT_FAILURE);
    }
  filename = argv[1];
  parse_parameters (&S, &E, &r, &sigma, &T, &M, filename);


  //------Design 2
  double store[M];
  double sum = 0.0;
  double mean = 0.0;
  double variance = 0.0;
  double conf_width;
  double rand_number;
  double sqrt_T;
  double rT;

  double A, B, C;
  double time_sum_runs, time_average_runs, time_sum_bs, time_avg_bs;
  double t1[M], t2[M];


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
   
  //------------------------  Design 1   -------------------------------
  rT = exp(-r*T);
  A = (r - (sigma*sigma) / 2.0) * T;
  B = sigma * sqrt (T);

  for(i = 0;i<M;i++){
    shadow_state();
    t1[i] = get_seconds();
    store[i] = black_scholes (S, E, A,B,rT, gaussrand_state);
    sum += store[i];
    t2[i] = get_seconds();
  }
  //---------------------  End of Design 1   ----------------------------

  // Calculating latencies per run and for total experiment
  for (i = 0; i < M; i++) {
    time_sum_runs += t2[i] - t1[i];
  }

  time_average_runs = time_sum_runs/M;

  if(M==0){
    printf("Divide by 0\n");
  }else{
    mean = sum/M;
  }
  printf("mean: %f\n", mean);
  
  for(i = 0;i<M;i++){
    variance += (store[i]-mean)*(store[i]-mean)/(double)M;
  }

  printf("variance: %f\n", variance);

  conf_width = 1.96 * sqrt(variance) / sqrt ((double) M);

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
  
  printf ("Total simulation time: %g seconds\n", time_sum_runs);
  printf ("Avg time per valuation: %g seconds\n", time_average_runs);
  return 0;
}
