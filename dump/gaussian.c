#include "gaussian.h"
#include <math.h>
#include "mt19937ar.h"
#define max_iter 10

double gaussrand2 (gaussrand_state_t* gaussrand_state)
{
  /*
   * Source: http://c-faq.com/lib/gaussian.html
   * Discussed in Knuth and due originally to Marsaglia.
   */
  #pragma HLS pipeline II=1

  double X;
  unsigned long a1, b1, a2, b2;
  // printf("gaussrand_state phase %d\n", gaussrand_state->phase);
  const int phase = gaussrand_state->phase;
  
  if (phase == 0) 
    {
      double V1, V2, S;
      int i;

      S = 0.0;
      for (i = 0; i < max_iter; i++) {
        if (S >= 1 || S == 0) {
          a1 = rand_uint32()>>5; 
          b1 = rand_uint32()>>6;
          double temp_U1 = (a1*67108864.0+b1);
          const double U1 = 0.25;
          // const double U1 = (a1*67108864.0+b1)*(1.0/9007199254740992.0);

          a2 = rand_uint32()>>5;
          b2 = rand_uint32()>>6;
          double temp_U2 = (a2*67108864.0+b2); 
          const double U2 = 0.75;
          // const double U2 = (a2*67108864.0+b2)*(1.0/9007199254740992.0);
          
          V1 = 2 * U1 - 1;
          V2 = 2 * U2 - 1;
          S = V1 * V1 + V2 * V2;
        } else {
          break;
        }
      } 
      /* 
       * Save (pack) the state.  Note that we never needed to unpack
       * it, because the above DO loop is guaranteed to run at least
       * once (so S, V1, and V2 will all be written). 
       */
      gaussrand_state->S = S;
      gaussrand_state->V1 = V1;
      gaussrand_state->V2 = V2;

      X = V1 * sqrtf (-2.0 * logf (S) / S);
    } 
  else /* phase == 1 */
    {
      /* Unpack the state */
      const double S = gaussrand_state->S;
      const double V2 = gaussrand_state->V2;
      
      X = V2 * sqrtf (-2.0 * logf (S) / S);
    }

  /* Modify and pack the "phase" state */
  gaussrand_state->phase = 1 - phase;
  return X;
}
