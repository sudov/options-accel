#define N 624
#define M 397
#define Mm 1000
#define MATRIX_A 0x9908b0dfUL
#define UPPER_MASK 0x80000000UL
#define LOWER_MASK 0x7fffffffUL
#define KNUTH 1812433253UL
#define K1 0x9d2c5680UL
#define K2 0xefc60000UL
#define uint32 unsigned long
#define uint10 unsigned short

static uint32 mt_kk[N]; /* the array for the state vector  */
static uint32 mt_kkp1[N];
static uint32 mt_kkpm[N];
static int mti=N+1; /* mti==N+1 means mt[N] is not initialized */

/* initialize three counters */
uint10 kk = 0;
uint10 kk_p1 = 1;
uint10 kk_pm = M;

/* initializes mt[N] with a seed */
void init_genrand(unsigned long s)
{
    mt_kk[0]= s & 0xffffffffUL;
    for (mti = 1; mti < N; mti++) {
        mt_kk[mti] = 
      (1812433253UL * (mt_kk[mti-1] ^ (mt_kk[mti-1] >> 30)) + mti); 
        /* See Knuth TAOCP Vol2. 3rd Ed. P.106 for multiplier. */
        /* In the previous versions, MSBs of the seed affect   */
        /* only MSBs of the array mt[].                        */
        /* 2002/01/09 modified by Makoto Matsumoto             */
        mt_kk[mti] &= 0xffffffffUL;
        /* for >32 bit machines */
    }
}

/* initialize by an array with array-length */
/* init_key is the array for initializing keys */
/* key_length is its length */
/* slight change for C++, 2004/2/26 */
void init_by_array(unsigned long init_key[], int key_length)
{
    int i, j, k;
    init_genrand(19650218UL);
    i=1; j=0;
    k = (N>key_length ? N : key_length);
    for (; k; k--) {
        mt_kk[i] = (mt_kk[i] ^ ((mt_kk[i-1] ^ (mt_kk[i-1] >> 30)) * 1664525UL))
          + init_key[j] + j; /* non linear */
        mt_kk[i] &= 0xffffffffUL; /* for WORDSIZE > 32 machines */
        i++; j++;
        if (i>=N) { mt_kk[0] = mt_kk[N-1]; i=1; }
        if (j>=key_length) j=0;
    }
    for (k=N-1; k; k--) {
        mt_kk[i] = (mt_kk[i] ^ ((mt_kk[i-1] ^ (mt_kk[i-1] >> 30)) * 1566083941UL))
          - i; /* non linear */
        mt_kk[i] &= 0xffffffffUL; /* for WORDSIZE > 32 machines */
        i++;
        if (i>=N) { mt_kk[0] = mt_kk[N-1]; i=1; }
    }

    mt_kk[0] = 0x80000000UL; /* MSB is 1; assuring non-zero initial array */
}

/* shadow state */
void shadow_state() {
	uint32 tmp;
	uint10 i;

	// Manually shadow the state 
	for(i = 0; i < N; i++) {
		#pragma HLS unroll
		tmp = mt_kk[i];
		mt_kkp1[i] = tmp;
		mt_kkpm[i] = tmp;
	}
}

/* 
 * Computes a mod N assuming a is in [0, 2N)
 */
// First Set of Mods
uint10 mod_N(uint10 a)
{
	if(a > N-1)
		return a-N;
	else
		return a;	
}

uint10 mod_N_p1(uint10 a)
{
	if(a > N-1)
		return a-N;
	else
		return a;	
}

uint10 mod_N_pm(uint10 a)
{
	if(a > N-1)
		return a-N;
	else
		return a;	
}

/*
 * Mersenne Twister 32-bit random number generator 
 */
uint32 rand_uint32()
{
	/* 
	 * Generate numbers until the close register tells us to stop.
	 * This register must be set to 1 before sending the go signal.
	 */
	#pragma HLS pipeline II=1
	#pragma HLS dependence array inter false
	
	uint32 mag01, y, mt_kk_new;

	/* Mersenne twister state update */
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

	/* update the counters */
	kk    = mod_N(kk+1);
	kk_p1 = mod_N_p1(kk_p1+1);
	kk_pm = mod_N_pm(kk_pm+1);
	
	return y;
}
