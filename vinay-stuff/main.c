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

  double S, E, r, sigma, T, t1, t2;
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

  int j = 0;
//--------------------------------Design 1----------------------
  for(i = 0;i<M;i++){
      rand_number[i] = gaussrand2(&gaussrand_state);
  }

  t1 = get_seconds ();
  printf("\n");
  sum = black_scholes2_loop(S, E, r, sigma, T, rand_number, store, M);
  // for(i = 0;i<M;i++){
  //     store[i] = black_scholes2 (S, E, r, sigma, T, rand_number[i]);
  //     sum += store[i];
  // }
 
  t2 = get_seconds ();
 sum = 0.0;
 for(i = 0;i<M;i++){
 	sum += store[i];
// 	printf("store %d:%f\n",i,store[i]);
 }
  
  printf("sum af: %f\n", sum);

  if(M==0){
    printf("Divide by 0\n");
  }else{
    mean = sum/M;
  }

  
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



