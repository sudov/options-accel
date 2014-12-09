#include "math.h"
#include <time.h>
#include <stdlib.h>
#include <stdio.h>

#define NUM_INPUTS 20000
#define NUM_PASSES 50
#define RAND ((double)rand()/RAND_MAX)
#define PI 3.14159265358979323846  /* pi */

/* parts of this code, Copyright 1999: Tempus Financial Engineering */

double CND(double X)
{
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

double BlackScholes(char CallPutFlag, 
		    double S, 
		    double X, 
		    double T, 
		    double r, 
		    double b, 
		    double v)
{
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
    /*printf( "%c,%f,%f,%f,%f,%f,%f\n", f[i],s[i],x[i],t[i],r[i],b[i],v[i]);*/
  }
  printf( "...done\nStarting test...\n" );

  before = clock();
  for (j=0;j<NUM_PASSES;j++) {
    for (i=0;i<NUM_INPUTS;i++) {
      a[i] = BlackScholes(f[i],s[i],x[i],t[i],r[i],b[i],v[i]);
    }
  }
  after = clock();
  
  printf( "Time in secs: %f\n", ((double)(after-before))/CLOCKS_PER_SEC );

  return(0);
}
