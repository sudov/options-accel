#include "black_scholes2.h"
// #include "gaussian.h"

#include "parser.h"
#include "timer.h"

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include "mt19937ar.h"
#define uint32 unsigned

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

  double S, E, r, sigma, T;
  int M = 0;
  char* filename = NULL;
  int nthreads = 1;
  double t1, t2;
  

  //------Design 2
  int i;

  if (argc < 3)
    {
      fprintf (stderr, 
	       "Usage: ./hw1.x <filename> <nthreads>\n\n");
      exit (EXIT_FAILURE);
    }
  filename = argv[1];
//  nthreads = to_int (argv[2]);
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


  double A;
  double B;
  double C;
  unsigned long result = 0; 
  uint32 seed = 1; 

  /* 
   * Make sure init_timer() is only called by one thread,
   * before all the other threads run!
   */
  init_timer ();

  /* Same goes for initializing the PRNG */
  //init_prng (random_seed ());

  /*
   * Run the benchmark and time it.
   */
   
  t1 = get_seconds ();

//--------------------------------Design 1----------------------
  
  //sqrt_T = sqrt(T);
  rT = exp(-r*T);
  A = (r - (sigma*sigma) / 2.0) * T;
  B = sigma * sqrt (T);


  for(i = 0;i<M;i++){
    // Result magic inspired from old mt
    rand_uint32(i, &result);
    unsigned long a = result >> 5;
    rand_uint32(i, &result);
    unsigned long b = result >> 6;
    result = (a*67108864.0+b)*(1.0/9007199254740992.0);

    store[i] = black_scholes3 (S, E, A,B,rT, result);
    // printf("store[i] val is : %f\n", store[i]);

    sum += store[i];
  }


  if(M==0){
    printf("Divide by 0\n");
  }else{
    mean = sum/M;
  }
  printf("mean: %f\n", mean);

  t2 = get_seconds ();
  
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
  printf ("Total simulation time: %g seconds\n", t2 - t1);

  return 0;
}












