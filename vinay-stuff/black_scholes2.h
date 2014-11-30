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
//double
void black_scholes2 (
         const double S,
         const double E,
         const double r,
         const double sigma,
         const double T,
         const double gaussian_random_number,
         double store[]
         );

void black_scholes3 (
        const double S,
        const double E,
        const double A,
        const double B,
        const double rT,
        const double gaussian_random_number,
        double store[]
        );
#endif /* _black_scholes_h */
