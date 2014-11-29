#ifndef _black_scholes_h
#define _black_scholes_h

#include <math.h>
#include "util.h"
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

/**
 * Run the Black-Scholes MC simulation using the parameters S, E, r,
 * sigma, and T, with M total trials.  
 *
 * @note You might need to modify the signature of this function.
 */
double
black_scholes2_loop (
        double S,
        double E,
        double r,
        double sigma,
        double T,
        double* rand_number,
        double* store,
        int M
        );
double
black_scholes3_loop (
        double S,
        double E,
        double A,
        double B,
        double rT,
        double *rand_number,
        double *store,
        int M,
        double *sum
        );
#endif /* _black_scholes2_loop_h */
