#include "BlackScholesWrapper.h"
#include "BlackScholes.h"
#include "math.h"
#include <time.h>
#include <stdlib.h>
#include <stdio.h>

void BlackScholesWrapper(char CallPutFlag, double S, double X, double T, double r, double b, double a[NUM_PASSES])
{	 
	double sum = 0;
	int i;

	loop: for (i = 0; i < NUM_PASSES; i++) {
	  // shadow_state();
	  a[i] = BlackScholes(CallPutFlag, S, X, T, r, b);
	}
}
