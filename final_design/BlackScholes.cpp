#include "BlackScholes.h"
#include "CND.h"
#include "math.h"
#include <time.h>
#include <stdlib.h>
#include <stdio.h>

#define PI 3.14159265358979323846  /* pi */

double BlackScholes(char CallPutFlag, double S, double X, double T, double r, double b )
{	
	double rand_number = rand_uint32();
	rand_number = rand_number / 1000000000;
	rand_number = CND(rand_number);
	// rand_number = rand_number - (long)rand_number;
	// double sig = CND(b + rand_number);
	double sig = b;

	if (CallPutFlag == 'c') {
		double vc = S * exp ((r-sig*sig/2)*T + sig * sqrt(T)*rand_number);
		double call = (vc - X < 0 ? 0 : vc - X);
		vc = exp(-r*T)*call;
		return vc;
	} else {
		double vp = S * exp ((r+sig*sig/2)*T + sig * sqrt(T)*rand_number);
		double put = (X - vp < 0 ? 0 : X - vp);
		vp = exp(-r*T)*put;
		return vp;
	}
}
