#include "black_scholes2.h"
#include "gaussian.h"
#include "util.h"

#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
//#include "mt19937ar.h"

/**
 * This function is what you compute for each iteration of
 * Black-Scholes.  You don't have to understand it; just call it.
 * "gaussian_random_number" is the current random number (from a
 * Gaussian distribution, which in our case comes from gaussrand1()).
 */


/**
 * Take a pointer to a black_scholes_args_t struct, and return NULL.
 * (The return value is irrelevant, because all the interesting
 * information is written to the input struct.)  This function runs
 * Black-Scholes iterations, and computes the local part of the mean.
 */


double
black_scholes2 (
         const double S,
         const double E,
         const double r,
         const double sigma,
         const double T,
         const double gaussian_random_number
         )
{

    double current_value;
    double mydata;


    current_value = S * exp ( (r - (sigma*sigma) / 2.0) * T + sigma * sqrt (T) * gaussian_random_number );
    mydata = exp(-r * T) * ((current_value - E < 0.0) ? 0.0 : current_value - E);




    return mydata;
}


