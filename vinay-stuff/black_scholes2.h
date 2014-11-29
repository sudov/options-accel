#ifndef _black_scholes_h
#define _black_scholes_h

#include <math.h>
#include "util.h"
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
/**
 * In (read-only) and out (write-only) arguments to the function(s)
 * that do(es) Black-Scholes iterations.  This is used for both the
 * sequential and parallel (threaded with Pthreads) implementation.
 *
 * Fields marked [IN] are read-only inputs; don't modify them once
 * they are set.
 *
 * Fields marked [OUT] are outputs to be computed by your code.
 *
 * You might add additional field(s) to this struct.
 *
 * @note The typedef lets you refer to this type without saying
 * "struct" in front of it, but it means that you have to include this
 * header file if you ever use this datatype.  Example:
 *
 * #include "black_scholes.h"
 * #include <stdio.h>
 *
 * void 
 * foo (black_scholes_args_t* args) 
 * {
 *   printf ("M = %d\n", args->M);
 *   ...
 * }
 */


 

/**
 * Run the Black-Scholes MC simulation using the parameters S, E, r,
 * sigma, and T, with M total trials.  
 *
 * @note You might need to modify the signature of this function.
 */
double
black_scholes2 (
         const double S,
         const double E,
         const double r,
         const double sigma,
         const double T,
         const double gaussian_random_number
         );
#endif /* _black_scholes_h */
