#include "BlackScholes.h"
#include "math.h"
#include <time.h>
#include <stdlib.h>
#include <stdio.h>

#define NUM_INPUTS 10000
#define NUM_PASSES 50
#define RAND ((double)rand()/RAND_MAX)
#define PI 3.14159265358979323846  /* pi */

/* parts of this code, Copyright 1999: Tempus Financial Engineering */

main()
{
  char f[NUM_INPUTS];
  double s[NUM_INPUTS], x[NUM_INPUTS], t[NUM_INPUTS], 
         r[NUM_INPUTS], b[NUM_INPUTS], v[NUM_INPUTS], 
         a[NUM_INPUTS]; 
  int i, j;
  clock_t before, after;

  printf( "Loading input arrays..." );
  for (i=0;i<NUM_INPUTS;i++) {
    f[i] = (rand()&1) ? 'c' : 'p';
    s[i] = 30.0 + RAND*70.0;
    x[i] = s[i] + RAND*(-5.0);
    t[i] = 0.25 + RAND;
    r[i] = 6 + RAND*4;
    b[i] = 8.0;
    v[i] = s[i]/2.0 + RAND*(-4.0);
  }
  printf( "...done\nStarting test...\n" );

  before = clock();
  for (j=0;j<NUM_PASSES;j++) {
    for (i=0;i<NUM_INPUTS;i++) {
      a[i] = BlackScholes(f[i],s[i],x[i],t[i],r[i],b[i],v[i]);
    }
  }
  after = clock();
  
  double sum = 0;
  double mean = 0;
  double variance = 0;

  for (i = 0; i < NUM_INPUTS; i++) sum += a[i];
  mean = sum/NUM_INPUTS;
  for(i = 0; i < NUM_INPUTS; i++){
    variance += (a[i]-mean)*(a[i]-mean)/(double)NUM_INPUTS;
  }
  double conf_width = 1.96 * sqrt(variance) / sqrt ((double) NUM_INPUTS);

  printf ("Black-Scholes benchmark:\n"
    "------------------------\n"
    "S        %.2f\n"
    "T        %.2f\n"
    "r        %.2f\n"
    "b        %.2f\n",
    30.0, 0.25, 6.0, 8.0);

  printf("Mean: %f\nVariance: %f\nConfidence Interval: (%f, %f)\n", mean, variance, mean-conf_width, mean+conf_width);
  printf( "Time in secs: %f\n", ((double)(after-before))/CLOCKS_PER_SEC );

  return(0);
}
