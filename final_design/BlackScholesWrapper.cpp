#include "BlackScholes.h"
#include "math.h"
#include <time.h>
#include <stdlib.h>
#include <stdio.h>

#define RAND ((double)rand()/RAND_MAX)
#define PI 3.14159265358979323846  /* pi */
#define NUM_PASSES 100000

double * BlackScholesWrapper(char CallPutFlag, double S, double X, double T, double r, double b)
{	
		double a[NUM_PASSES];
	  double sum = 0;
		int i;

		for (i = 0; i < NUM_PASSES; i++) {
		  shadow_state();
		  a[i] = BlackScholes(CallPutFlag, S, X, T, r, b);
		}

		return a;
}
