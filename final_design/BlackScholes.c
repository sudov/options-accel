#include "BlackScholes.h"
#include "math.h"
#include <time.h>
#include <stdlib.h>
#include <stdio.h>

#define NUM_INPUTS 20000
#define NUM_PASSES 50
#define RAND ((double)rand()/RAND_MAX)
#define PI 3.14159265358979323846  /* pi */

double BlackScholes(char CallPutFlag, 
		    double S, 
		    double X, 
		    double T, 
		    double r, 
		    double b, 
		    double v)
{
	#pragma HLS pipeline II=1
	double d1, d2, v1, v2, t1, t2, vc1, vc2, vc, vp1, vp2, vp;
	
	t1=S*exp((b-r)*T);
	t2=X*exp(-r*T);
	v1=log(S/X) + (b+v*v/2)*T;
	v2=v*sqrt(T);
	
	d1=v1/v2;
	d2=(v1/v2)-v2;

	vc1=t1*CND(d1);
	vc2=t2*CND(d2);
	vc=vc1 - vc2;
	
	vp1=t1*CND(-d1);
	vp2=t2*CND(-d2);
	vp=vp2 - vp1;
			
	return (CallPutFlag=='c') ? vc : vp;
}
