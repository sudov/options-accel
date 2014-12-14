#include "BlackScholesWrapper.h"
#include "mt19937ar.h"
#include "math.h"
#include <time.h>
#include <stdlib.h>
#include <stdio.h>

// #define NUM_INPUTS 10000
#define NUM_PASSES 100000
#define RAND ((double)rand()/RAND_MAX) 
#define PI 3.14159265358979323846  /* pi */

main()
{
  int i, j;
  clock_t before, after;

  // Synthesizable Random Number Initialization - mt19937ar
  unsigned long init[4]={0x123, 0x234, 0x345, 0x456}, length=4; //***Mod
  init_by_array(init, length);        //***Mod

  printf( "Initialization...." );
  char   f = 'c';
  double s = 3.0;
  double x = 1.0;
  double t = 1.0;
  double r = 5.0;
  double b = 1.5; 
  double a[NUM_PASSES];
  printf( "....done\nStarting test........\n" );

  before = clock();
  BlackScholesWrapper(f, s, x, t, r, b, a);
  after = clock();
  
  // Mean, Variance and Confidence Calculations
  double sum = 0;
  double mean = 0;
  double variance = 0;
  for (i = 0; i < NUM_PASSES; i++) {
    sum += a[i];
  }
  mean = sum/NUM_PASSES;
  for(i = 0; i < NUM_PASSES; i++){
    variance += (a[i]-mean)*(a[i]-mean)/(double)NUM_PASSES;
  }

  double conf_width = 1.96 * sqrt(variance) / sqrt ((double) NUM_PASSES);

  printf ("Black-Scholes benchmark:\n"
    "------------------------\n"
    "S        %.2f\n"
    "T        %.2f\n"
    "r        %.2f\n"
    "b        %.2f\n",
    3.0, 1, 5.0, 1.5);

  printf("Mean: %f\nVariance: %f\nConfidence Interval: (%f, %f)\n", mean, variance, mean-conf_width, mean+conf_width);
  printf( "Simulation Time in secs: %f\n", ((double)(after-before))/CLOCKS_PER_SEC );

  return(0);
}
