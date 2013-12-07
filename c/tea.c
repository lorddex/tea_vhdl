#define KEY     (256/32)
#define ROUND   ((32 + KEY*4) - 1)
#include <stdio.h>
#include <stdint.h>

unsigned int    a, b, c;

unsigned int    key[KEY] = {
    0x12F0C17, 0x0,
    0x0, 0x0
};

#define DELTA 0x9e3779b9
#define MX (((z>>5^y<<2) + (y>>3^z<<4)) ^ ((sum^y) + (key[(p&3)^e] ^ z)))

// BTEA or XXTEA http://en.wikipedia.org/wiki/XXTEA 
  void btea(uint32_t *v, int n, uint32_t const key[4]) {
    uint32_t y, z, sum;
    unsigned p, rounds, e;
    if (n > 1) {          /* Coding Part */
      rounds = 6 + 52/n;
      sum = 0;
      z = v[n-1];
      do {
        sum += DELTA;
        e = (sum >> 2) & 3;
        for (p=0; p<n-1; p++) {
          y = v[p+1]; 
          z = v[p] += MX;
        }
        y = v[0];
        z = v[n-1] += MX;
      } while (--rounds);
    } else if (n < -1) {  /* Decoding Part */
      n = -n;
      rounds = 6 + 52/n;
      sum = rounds*DELTA;
      y = v[0];
      do {
        e = (sum >> 2) & 3;
        for (p=n-1; p>0; p--) {
          z = v[p-1];
          y = v[p] -= MX;
        }
        z = v[n-1];
        y = v[0] -= MX;
      } while ((sum -= DELTA) != 0);
    }
  }


void test()
{
    uint32_t sum = 0;
    uint32_t delta=0x9e3779b9;                     /* a key schedule constant */
    
    uint32_t v0, v1;
    uint32_t tmp1, tmp2;
    int i;

    sum += delta;
    v0 = 0x80;
    v1 = 0x0;

    v0 += ((v1<<4) + key[0]) ^ (v1 + sum) ^ ((v1>>5) + key[1]);
    v1 += ((v0<<4) + key[2]) ^ (v0 + sum) ^ ((v0>>5) + key[3]);    
    
    printf("Delta=%08lX Sum=%08lX v0=%08lX v1=%08lX\n", delta, sum, v0, v1);
    for(i=0;i<4;i++)
        printf("key[%d]=%08lX ", i, key[i]);
    printf("\n");

    sum = 0xC6EF3720;
    v0 = 0x80;
    v1 = 0x0;
    
    sum -= delta;
    v1 -= ((v0<<4) + key[2]) ^ (v0 + sum) ^ ((v0>>5) + key[3]);
    v0 -= ((v1<<4) + key[0]) ^ (v1 + sum) ^ ((v1>>5) + key[1]);
    printf("Delta=%08lX Sum=%08lX v0=%08lX v1=%08lX\n", delta, sum, v0, v1);
    for(i=0;i<4;i++)
        printf("key[%d]=%08lX ", i, key[i]);
    printf("\n");

}

// http://en.wikipedia.org/wiki/Tiny_Encryption_Algorithm
void tea_encrypt (uint32_t* v, uint32_t* k) {
    uint32_t v0=v[0], v1=v[1], sum=0, i;           /* set up */
    uint32_t delta=0x9e3779b9;                     /* a key schedule constant */
    uint32_t k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */
    for (i=0; i < 32; i++) {                       /* basic cycle start */
        sum += delta;
        v0 += ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
        v1 += ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);  
    }                                              /* end cycle */
    v[0]=v0; v[1]=v1;
    //printf("%02i %08lX %08lX\n", v0, v1);
}
 
void tea_decrypt (uint32_t* v, uint32_t* k) {
    uint32_t v0=v[0], v1=v[1], sum=0xC6EF3720, i;  /* set up */
    uint32_t delta=0x9e3779b9;                     /* a key schedule constant */
    uint32_t k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */
    for (i=0; i<32; i++) {                         /* basic cycle start */
        v1 -= ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
        v0 -= ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
        sum -= delta;                                   
    }                                              /* end cycle */
    v[0]=v0; v[1]=v1;
    //printf("%02i %08lX %08lX\n", v0, v1);
}

// XTEA http://en.wikipedia.org/wiki/XTEA
void xtea_encrypt(unsigned int num_rounds, uint32_t v[2], uint32_t const key[4]) {
    unsigned int i;
    uint32_t v0=v[0], v1=v[1], sum=0, delta=0x9E3779B9;
    for (i=0; i < num_rounds; i++) {
        v0 += (((v1 << 4) ^ (v1 >> 5)) + v1) ^ (sum + key[sum & 3]);
        sum += delta;
        v1 += (((v0 << 4) ^ (v0 >> 5)) + v0) ^ (sum + key[(sum>>11) & 3]);
    }
    v[0]=v0; v[1]=v1;
}

void xtea_decrypt(unsigned int num_rounds, uint32_t v[2], uint32_t const key[4]) {
    unsigned int i;
    uint32_t v0=v[0], v1=v[1], delta=0x9E3779B9, sum=delta*num_rounds;
    for (i=0; i < num_rounds; i++) {
        v1 -= (((v0 << 4) ^ (v0 >> 5)) + v0) ^ (sum + key[(sum>>11) & 3]);
        sum -= delta;
        v0 -= (((v1 << 4) ^ (v1 >> 5)) + v1) ^ (sum + key[sum & 3]);
    }
    v[0]=v0; v[1]=v1;
}

int main() {

    uint32_t v[] = {128, 0};

    encrypt(v, key);
    printf("Encoded values: v0=%08lX v1=%08lX\n", v[0], v[1], v[0],v[1]);

    decrypt(v, key);
    printf("Decoded values: %d %d\n", v[0], v[1]);


/*    memset(key, 0 , sizeof(key));

    a = 0x12345678;
    b = 0x11112222;

    printf(">>>\n");
    crypt();

    a = 0x12345678;
    b = 0x11112222;

    printf("<<<\n");
    decrypt();*/

//    test();

    return 0;
}
