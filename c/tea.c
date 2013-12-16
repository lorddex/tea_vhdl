#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <inttypes.h>

#define TEA	0
#define STREAM  1
#define STREAM_DECODE 1

#define ROUND       ((32 + KEY*4) - 1)
#define KEY         (256/32)
#define KEY2        4
#define DELTA       0x9e3779b9
#define NUM_ROUNDS  32

//unsigned int a, b, c;

uint8_t key[] = { 128, 182, 218, 1, 139, 193, 19, 93 };

// 11110000001111111100000011111001 -> 4030710009
// 11101010101000000000000000000000 -> 3936354304
// 00101010101010101010101010100000 -> 715827872
// 00000000010101010101010101010101 -> 5592405
//uint32_t key2[] = { 4030710009, 3936354304, 715827872, 5592405 };
uint32_t key2[] = { 5592405, 715827872, 3936354304, 4030710009 };
//uint8_t key[KEY] = { 1, 0, 0, 0, 0, 0, 0, 0 };

// RC4 - http://bradconte.com/rc4_c - https://github.com/B-Con/crypto-algorithms
// Key Scheduling Algorithm 
// Input: state - the state used to generate the keystream
//        key - Key to use to initialize the state 
//        len - length of key in bytes 

void arc4_ksa(uint32_t *state, uint32_t *key)
{
   int i, j=0;
   uint32_t t; 
   
   //printf("%d %d\n", key[0], key[8]);
   //printf("%d %d\n", state[0], state[1023]);
   
   for (i=0; i < 64; ++i)
      state[i] = i; 
/*   printf("STATUS(i): ");
   for (i=0; i< 64; i++)
        printf("%08"PRIX32" ", state[i]);
    printf("\n");*/

   for (i=0; i < 64; ++i) {
      j = (j + state[i] + key[i % KEY2]) % 64; 
      t = state[i];
//      printf("switching i(value)=%d(%"PRIX32") key(value)=%"PRIX32"(%d) with j(value)=%d(%"PRIX32")\n", i, state[i], key[i % KEY2], i % KEY2, j, state[j]); 
      state[i] = state[j]; 
      state[j] = t; 
   }
	
/*   printf("STATUS: ");
   for (i=0; i< 64; i++)
        printf("%08"PRIX32" ", state[i]);
    printf("\n");*/
}

// Pseudo-Random Generator Algorithm 
// Input: state - the state used to generate the keystream 
//        out - Must be of at least "len" length
//        len - number of bytes to generate 
void arc4_prga(uint32_t *state, uint32_t *out, int len)
{
 
   uint32_t i=0, j=0, t;
   int x; 
   
   for (x=0; x < len; ++x)  {
      i = (i + 1) % 64; 
      j = (j + state[i]) % 64; 
      t = state[i]; 
      state[i] = state[j]; 
      state[j] = t; 
      out[x] ^= state[(state[i] + state[j]) % 64];
   }
}  

void arc4_encrypt(uint32_t *v, uint32_t *key, int len)
{
    uint32_t state[64];

    arc4_ksa(state, key);
    arc4_prga(state, v, len);
}

// BTEA or XXTEA http://en.wikipedia.org/wiki/XXTEA 
void xxtea_encode(uint32_t *v, uint8_t *key) {
    int n = 2; // NUM WORDS TO ENCODE
    uint32_t y, z, sum;
    unsigned p, rounds, e;
    rounds = 6 + 52/n;
    sum = 0;
    z = v[n-1];
    do {
        sum += DELTA;
        e = (sum >> 2) & 3;
        for (p=0; p<n-1; p++) {
          y = v[p+1]; 
          z = v[p] += (((z>>5^y<<2) + (y>>3^z<<4)) ^ ((sum^y) + (key[(p&3)^e] ^ z)));
        }
        y = v[0];
        z = v[n-1] += (((z>>5^y<<2) + (y>>3^z<<4)) ^ ((sum^y) + (key[(p&3)^e] ^ z)));
    } while (--rounds);
  }

void xxtea_decode(uint32_t *v, uint8_t *key) {
    int n = 2; // NUM WORDS TO DECODE
    uint32_t y, z, sum;
    unsigned p, rounds, e;
    rounds = 6 + 52/n;
    sum = rounds*DELTA;
    y = v[0];
    do {
        e = (sum >> 2) & 3;
        for (p=n-1; p>0; p--) {
          z = v[p-1];
          y = v[p] -= (((z>>5^y<<2) + (y>>3^z<<4)) ^ ((sum^y) + (key[(p&3)^e] ^ z)));
        }
        z = v[n-1];
        y = v[0] -= (((z>>5^y<<2) + (y>>3^z<<4)) ^ ((sum^y) + (key[(p&3)^e] ^ z)));
    } while ((sum -= DELTA) != 0);
}

// http://en.wikipedia.org/wiki/Tiny_Encryption_Algorithm
void tea_encrypt (uint32_t* v, uint8_t* k) {
    uint32_t v0=v[0], v1=v[1], sum=0, i;           /* set up */
    uint32_t delta=DELTA;                          /* a key schedule constant */
    uint32_t k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */
    for (i=0; i < 32; i++) {                       /* basic cycle start */
        sum += delta;
        v0 += ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
        v1 += ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);  
    }                                              /* end cycle */
    v[0]=v0; v[1]=v1;
}
 
void tea_decrypt (uint32_t* v, uint8_t* k) {
    uint32_t v0=v[0], v1=v[1], sum=0xC6EF3720, i;  /* set up */
    uint32_t delta=DELTA;                          /* a key schedule constant */
    uint32_t k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */
    for (i=0; i<32; i++) {                         /* basic cycle start */
        v1 -= ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
        v0 -= ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
        sum -= delta;                                   
    }                                              /* end cycle */
    v[0]=v0; v[1]=v1;
}

// XTEA http://en.wikipedia.org/wiki/XTEA
void xtea_encrypt(uint32_t *v, uint8_t *key) {
    unsigned int i;
    uint32_t v0=v[0], v1=v[1], sum=0, delta=DELTA;
    for (i=0; i < NUM_ROUNDS; i++) {
        v0 += (((v1 << 4) ^ (v1 >> 5)) + v1) ^ (sum + key[sum & 3]);
        sum += delta;
        v1 += (((v0 << 4) ^ (v0 >> 5)) + v0) ^ (sum + key[(sum>>11) & 3]);
    }
    v[0]=v0; v[1]=v1;
}

void xtea_decrypt(uint32_t *v, uint8_t *key) {
    unsigned int i;
    uint32_t v0=v[0], v1=v[1], delta=DELTA, sum=delta*NUM_ROUNDS;
    for (i=0; i < NUM_ROUNDS; i++) {
        v1 -= (((v0 << 4) ^ (v0 >> 5)) + v0) ^ (sum + key[(sum>>11) & 3]);
        sum -= delta;
        v0 -= (((v1 << 4) ^ (v1 >> 5)) + v1) ^ (sum + key[sum & 3]);
    }
    v[0]=v0; v[1]=v1;
}

int main() {

    uint32_t v[] = {128, 0};
    uint32_t s[] = {123456789, 987654321, 192837465, 918273645, 123987564, 987321645, 25, 10};

    int i;
#if TEA == 1
    printf("Data to encode: %08"PRIX32" %08"PRIX32"\n", v[0], v[1]);

    /* TEA */
    tea_encrypt(v, key);
    printf("Tea encoded values: v0=%08"PRIX32" v1=%08"PRIX32"\n", v[0], v[1]);

    tea_decrypt(v, key);
    printf("Tea decoded values: v0=%08"PRIX32" %08"PRIX32"\n", v[0], v[1]);
#elif TEA == 2
    /* XTEA */
    xtea_encrypt(v, key);
    printf("XTea encoded values: v0=%08"PRIX32" v1=%08"PRIX32"\n", v[0], v[1]);

    xtea_decrypt(v, key);
    printf("XTea decoded values: v0=%08"PRIX32" %08"PRIX32"\n", v[0], v[1]);
#elif TEA == 3
    /* XXTEA */
    xtea_encrypt(v, key);
    printf("XXTea encoded values: v0=%08"PRIX32" v1=%08"PRIX32"\n", v[0], v[1]);

    xtea_decrypt(v, key);
    printf("XXTea decoded values: v0=%08"PRIX32" %08"PRIX32"\n", v[0], v[1]);
#endif

#if STREAM == 1
    /* ARC4 */
    printf("Stream to encode: ");
    for (i=0;i<6;i++)
        printf("%08"PRIX32" ", s[i]);
    printf("\n");

    arc4_encrypt(s, key2, 6);
    printf("RC4 encoded values: ");
    for (i=0;i<6;i++)
        printf("%08"PRIX32" ", s[i]);
    printf("\n");

#if STREAM_DECODE == 1
    printf("Stream to decode: ");
    for (i=0;i<6;i++)
        printf("%08"PRIX32" ", s[i]);
    printf("\n");

    arc4_encrypt(s, key2, 6);
    printf("RC4 decoded values: ");
    for (i=0;i<6;i++)
        printf("%08"PRIX32" ", s[i]);
    printf("\n");
#endif
#endif

    return 0;
}
