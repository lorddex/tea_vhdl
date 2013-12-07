#define KEY     (256/32)
#define ROUND   ((32 + KEY*4) - 1)
#include <stdio.h>
#include <stdint.h>

unsigned int    a, b, c;

unsigned int    key[KEY] = {
    0x12F0C17, 0x0,
    0x0, 0x0
};

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

void crypt() {
    char r;

    for (r=0; r <= ROUND; r++) {
        c = b;
        b = b + (a + ((b<<6)^(b>>8)) + key[r % KEY] + r);
        a = c;
        printf("%02i %08lX %08lX\n", r, a, b);
    }
}

void decrypt() {
    char r;

    for (r = ROUND; r>=0; r--) {
        c = a;
        a = b - (a + ((a<<6)^(a>>8)) + key[r % KEY] + r);
        b = c;
        printf("%02i %08lX %08lX\n", r, a, b);
    }
}

int main() {

/*    memset(key, 0 , sizeof(key));

    a = 0x12345678;
    b = 0x11112222;

    printf(">>>\n");
    crypt();

    a = 0x12345678;
    b = 0x11112222;

    printf("<<<\n");
    decrypt();*/

    test();

    return 0;
}
