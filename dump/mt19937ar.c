
#define N 624
#define M 397
#define MATRIX_A 0x9908b0dfUL
#define UPPER_MASK 0x80000000UL
#define LOWER_MASK 0x7fffffffUL
#define KNUTH 1812433253UL
#define K1 0x9d2c5680UL
#define K2 0xefc60000UL

#define uint32 unsigned long
#define uint10 unsigned short

/*
 * Initializes the random number generator with a seed 
 */
void srand_uint32(uint32 seed, uint32 *mt_kk)
{
	uint10 i;

	mt_kk[0] = seed & 0xffffffff;
	for(i=1;i<N;i++)
		mt_kk[i] = (KNUTH * (mt_kk[i-1] ^ (mt_kk[i-1] >> 30)) + (uint32)i);
}

/* 
 * Computes a mod N assuming a is in [0, 2N)
 */
uint10 mod_N(uint10 a)
{
	if(a > N-1)
		return a-N;
	else
		return a;	
}

uint32 new_rand_function(uint32 y, uint32 mt_kk[], uint32 mt_kkp1[], uint32 mt_kkpm[], uint32 mag01, uint32 mt_kk_new, uint10 kk, uint10 kk_p1, uint10 kk_pm) 
{
	y = (mt_kk[kk] & UPPER_MASK) | (mt_kkp1[kk_p1] & LOWER_MASK);
	mag01 = (y&0x1UL)==0 ? 0 : MATRIX_A;
	mt_kk_new = mt_kkpm[kk_pm] ^ (y >> 1) ^ mag01;

	/* update the state, note the manual shadowing */
	mt_kk[kk]     = mt_kk_new;
	mt_kkp1[kk_p1] = mt_kk_new;
	mt_kkpm[kk_pm] = mt_kk_new;

	/* tempering */
	y = mt_kk_new;
	y ^= (y >> 11);
	y ^= (y << 7) & K1;
	y ^= (y << 15) & K2;
	y ^= (y >> 18);

	return y;
}

/*
 * Mersenne Twister 32-bit random number generator 
 */
void rand_uint32(uint32 seed, uint32 *result)
{
	/* manually shadow the state table */
	uint32 mt_kk[N];
	uint32 mt_kkp1[N];
	uint32 mt_kkpm[N];
	uint32 mag01;
	uint32 y, mt_kk_new, tmp;
	uint10 kk, kk_p1, kk_pm, i;
    
	/* Initialize the random number generator with a seed */
	srand_uint32(seed, mt_kk);

	/* Manually shadow the state */
	for(i=0;i<N;i++) {
		tmp = mt_kk[i];
		mt_kkp1[i] = tmp;
		mt_kkpm[i] = tmp;
	}

	/* initialize three counters */
	kk    = 0;
	kk_p1 = 1;
	kk_pm = M;

	/* 
	 * Generate numbers until the close register tells us to stop.
	 * This register must be set to 1 before sending the go signal.
	 */
	loop1: for (i = 0; i < N; i++) {
		#pragma HLS pipeline II=1
		#pragma HLS dependence array false
		
		/* Mersenne twister state update */
		uint32 temp = new_rand_function(y, mt_kk, mt_kkp1, mt_kkpm, mag01, mt_kk_new, kk, kk_p1, kk_pm);

		// printf("curr val of y is: %d\n", y);

		/* update the counters */
		kk    = mod_N(kk+1);
		kk_p1 = mod_N(kk_p1+1);
		kk_pm = mod_N(kk_pm+1);

		/* write the random number to the output stream */
		// if (i == N-1) {
		// 	printf("inner %d\n", y);
		// }
		*result = y;
	}
}
