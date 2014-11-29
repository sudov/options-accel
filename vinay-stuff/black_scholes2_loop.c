/**
 * This function is what you compute for each iteration of
 * Black-Scholes.  You don't have to understand it; just call it.
 * "gaussian_random_number" is the current random number (from a
 * Gaussian distribution, which in our case comes from gaussrand1()).
 */

double
black_scholes2_loop (
        double S,
        double E,
        double r,
        double sigma,
        double T,
        double *rand_number,
        double *store,
        int M        
        )
{
  int i;
  double sum = 0.0;
  printf("sum init %f\n", sum);

  for (i = 0; i < M; i++){
      //store[i] = black_scholes2 (S, E, r, sigma, T, rand_number[i]);
      black_scholes2 (S, E, r, sigma, T, rand_number[i],&store[i]);
      sum += store[i];
      //printf("%f\n", store[i]);
  }

  printf("sum bef %f\n", sum);

  return sum;
}
