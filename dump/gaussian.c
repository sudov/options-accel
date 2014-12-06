#include "gaussian.h"
#include <math.h>
#include "mt19937ar.h"

void
init_gaussrand_state (gaussrand_state_t* state)
{
  if(state==NULL){
  	printf("init gauss error\n");
  }
  state->V1 = 0.0;
  state->V2 = 0.0;
  state->S = 0.0;
  state->phase = 0;
}



double gaussrand2 (gaussrand_state_t* gaussrand_state)
{
  /*
   * Source: http://c-faq.com/lib/gaussian.html
   * Discussed in Knuth and due originally to Marsaglia.
   */

   double X;
  const int phase = gaussrand_state->phase;
  

  if (phase == 0) 
    {
      double V1, V2, S;

      do {
  const double U1 = genrand_res53();
  const double U2 = genrand_res53();

  V1 = 2 * U1 - 1;
  V2 = 2 * U2 - 1;
  S = V1 * V1 + V2 * V2;
      } while (S >= 1 || S == 0);
      /* 
       * Save (pack) the state.  Note that we never needed to unpack
       * it, because the above DO loop is guaranteed to run at least
       * once (so S, V1, and V2 will all be written). 
       */
      gaussrand_state->S = S;
      gaussrand_state->V1 = V1;
      gaussrand_state->V2 = V2;

      X = V1 * sqrt (-2.0 * log (S) / S);
    } 
  else /* phase == 1 */
    {
      /* Unpack the state */
      const double S = gaussrand_state->S;
      const double V2 = gaussrand_state->V2;

      X = V2 * sqrt (-2.0 * log (S) / S);
    }

  /* Modify and pack the "phase" state */
  gaussrand_state->phase = 1 - phase;
  return X;
}


