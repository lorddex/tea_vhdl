#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <inttypes.h>

#define TEA	1
#define STREAM  1
#define STREAM_DECODE 1

#define ROUND       ((32 + KEY*4) - 1)
#define KEY         (256/32)
#define KEY2        4
#define DELTA       0x9e3779b9
#define NUM_ROUNDS  32

uint8_t key[] = { 128, 182, 218, 1 };

// 11110000001111111100000011111001 -> 4030710009
// 11101010101000000000000000000000 -> 3936354304
// 00101010101010101010101010100000 -> 715827872
// 00000000010101010101010101010101 -> 5592405
//uint32_t key2[] = { 4030710009, 3936354304, 715827872, 5592405 };
uint32_t key2[] = { 5592405, 715827872, 3936354304, 4030710009 };

// RC4 - http://bradconte.com/rc4_c - https://github.com/B-Con/crypto-algorithms
// Key Scheduling Algorithm 
// Input: state - the state used to generate the keystream
//        key - Key to use to initialize the state 
//        len - length of key in bytes 

void arc4_ksa(uint8_t *state, uint8_t *key)
{
   int i, j=0;
   uint32_t t; 
   
   //printf("%d %d\n", key[0], key[8]);
   //printf("%d %d\n", state[0], state[1023]);
  
/*   printf("KEY(i): ");
   for (i=0; i<16; i++)
        printf("%02"PRIX8" ", key[i]);
    printf("\n");*/
 
   for (i=0; i < 256; ++i)
      state[i] = i; 
/*   printf("STATUS(i): ");
   for (i=0; i< 255; i++)
        printf("%02"PRIX8" ", state[i]);
    printf("\n");*/

   for (i=0; i < 256; ++i) {
      j = (j + state[i] + key[i % (KEY2*4)]) % 256; 
      t = state[i];
//      printf("switching i(value)=%d(%02"PRIX8") key(value)=%02"PRIX8"(%d) with j(value)=%d(%02"PRIX8")\n", i, state[i], key[i % KEY2], i % KEY2, j, state[j]); 
      state[i] = state[j]; 
      state[j] = t; 
   }
	
 //  printf("STATUS: ");
 //  for (i=0; i<256; i++)
 //       printf("%02"PRIX8" ", state[i]);
 //   printf("\n");
}

// Pseudo-Random Generator Algorithm 
// Input: state - the state used to generate the keystream 
//        out - Must be of at least "len" length
//        len - number of bytes to generate 
void arc4_prga(uint8_t *state, uint8_t *out, int len)
{
 
   uint32_t i=0, j=0, t;
   int x; 
   
   for (x=0; x < len; ++x)  {
      i = (i + 1) % 256; 
      j = (j + state[i]) % 256;
      t = state[i]; 
      state[i] = state[j]; 
      state[j] = t; 
   //   if (i == 14 && j == 3)
//	printf("Switching %d with %d\n t = %d val_i=%2X val_j=%2X\n", i, j, (state[i]+state[j]) %256, state[i], state[j]); 
      out[x] ^= state[(state[i] + state[j]) % 256];
   }
}  

void arc4_encrypt(uint32_t *v, uint32_t *key, int len)
{
    uint8_t state[255];

    arc4_ksa(state, (uint8_t*) key);
    arc4_prga(state, (uint8_t*)v, len*4);
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
//	printf("Tea encoded values: v0=%08"PRIX8" v1=%08"PRIX8"\n", v0, v1);
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

int main() {

    uint32_t v[] = {128, 0};
    uint32_t s[] = {123456789, 987654321, 192837465, 0};

    int i;
#if TEA == 1
    printf("Data to encode:    \t%08"PRIX8"\t%08"PRIX8"\n", v[0], v[1]);

    /* TEA */
/*    for (i=0; i<4; i++)
	printf("Key[%d]=%08"PRIX32" ", i, key[i]);
    printf("\n");  */
    tea_encrypt(v, key);
    printf("Tea encoded values:\t%08"PRIX8" \t%08"PRIX8"\n", v[0], v[1]);

    tea_decrypt(v, key);
    printf("Tea decoded values:\t%08"PRIX8"\t%08"PRIX8"\n", v[0], v[1]);
#endif

#if STREAM == 1
    /* ARC4 */
    printf("\n\nStream to encode:\t");
    for (i=0;i<4;i++)
        printf("%08"PRIX8"\t", s[i]);
    printf("\n");

    arc4_encrypt(s, key2, 4);
    printf("RC4 encoded values:\t");
    for (i=0;i<4;i++)
        printf("%08"PRIX8"\t", s[i]);
    printf("\n");

#if STREAM_DECODE == 1
    printf("Stream to decode:\t");
    for (i=0;i<4;i++)
        printf("%08"PRIX8"\t", s[i]);
    printf("\n");

    arc4_encrypt(s, key2, 4);
    printf("RC4 decoded values:\t");
    for (i=0;i<4;i++)
        printf("%08"PRIX8"\t", s[i]);
    printf("\n");
#endif
#endif

    return 0;
}
