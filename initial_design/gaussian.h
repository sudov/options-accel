#ifndef _gaussian_h
#define _gaussian_h
/**
 * These objects and functions help us transform uniformly distributed
 * random numbers (which come from the system's random number
 * generator or from the Mersenne Twister generator) into random
 * numbers from a Gaussian ("bell curve") distribution.  
 * 
 * @note YOU DON'T NEED TO UNDERSTAND THE MATH IN ORDER TO DO THE
 * ASSIGNMENT!  (You are, however, encouraged to learn the math.)
 */
#include "util.h"

/**
 * Current state of the Gaussian random number generator.
 */
typedef struct __gaussrand_state_t {
  double V1, V2, S;
  int phase;
} gaussrand_state_t;


/**
 * Initialize the gaussrand_state_t object.  Call this before giving
 * "state" to gaussrand().
 */
void
init_gaussrand_state (gaussrand_state_t* state);



//double gaussrand2 (gaussrand_state_t* gaussrand_state);
double gaussrand2 (gaussrand_state_t* gaussrand_state);

#endif /* _gaussian_h */
