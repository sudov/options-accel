#include "CND.h"
#include "math.h"
#include <time.h>
#include <stdlib.h>
#include <stdio.h>

#define NUM_INPUTS 20000
#define NUM_PASSES 50
#define RAND ((double)rand()/RAND_MAX)
#define PI 3.14159265358979323846  /* pi */

double CND(double X)
{
  #pragma HLS pipeline II=1
  double K, w;
  double a1 = 0.31938153; 
  double a2 = -0.356563782;
  double a3 = 1.781477937;
  double a4 = -1.821255978;
  double a5 = 1.330274429;

  K = 1.0 / (1.0 + 0.2316419 * fabs(X));
  w = 1.0 / sqrt(2.0 * PI) * 
            exp(-(X*X) / 2) * 
           (a1*K + 
	    a2*K*K + 
	    a3*pow(K,3) + 
	    a4*pow(K,4) + 
	    a5*pow(K,5));

  return (X < 0.0) ? w : 1.0 - w;	
}
