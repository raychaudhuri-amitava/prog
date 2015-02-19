#include<iostream>
#include<cstring>

using namespace std;

struct A
{
    long double l;
    long double h;
    uint64_t d;
    int64_t i;
    double c;
    int32_t f;
    uint32_t a;
    float m;
    uint32_t b;
    int16_t j;
    uint16_t k;
    char e;
    unsigned char g;

/* sizeof(long double) > sizeof(uint64_t) == sizeof(double) > sizeof(int32_t) == sizeof(uint32_t) > sizeof(char) == sizeof(unsigned char) */
};

#define SIZEOF_A (sizeof(long double)+sizeof(long double)+sizeof(uint64_t)+sizeof(double)+sizeof(int32_t)+sizeof(uint32_t)+sizeof(uint32_t)+sizeof(char)+sizeof(unsigned char)+sizeof(int64_t)+sizeof(int16_t)+sizeof(uint16_t)+sizeof(float))

char A_arr[SIZEOF_A];

int main(void)
{
    A a;
    a.d = 25366;
    a.a = 9812;
    a.b = 7781;
    a.c = 981.007817728;
    a.e = 'j';
    a.f = -918;
    a.g = 't';
    a.h = 818755322L;
    a.i = -9182;
    a.j = 92;
    a.k = 762;
    a.l = 671281182.818828;
    a.m = 0.00812;
    
    cout<<"sizeof A = "<<sizeof(A)<<" bytes."<<endl;
    cout<<"Actual size used = "<<SIZEOF_A<<" bytes."<<endl;
    cout<<"long double = "<<sizeof(long double)<<" uint64_t = "<<sizeof(uint64_t)<<" int64_t = "<<sizeof(int64_t)<<" double = "<<sizeof(double)<<" int32_t = "<<sizeof(int32_t)<<" uint32_t = "<<sizeof(uint32_t)<<" int16_t = "<<sizeof(int16_t)<<" uint16_t = "<<sizeof(uint16_t)<<" char = "<<sizeof(char)<<" unsigned char = "<<sizeof(unsigned char) <<endl;

    cout<<"A.d = "<<a.d<<" A.a = "<<a.a<<" A.b = "<<a.b<<" A.c = "<<a.c<<" A.e = "<<a.e<<" A.f = "<<a.f<<" A.g = "<<a.g<<" A.h = "<<a.h<<" A.i = "<<a.i<<" A.j = "<<a.j<<" A.k = "<<a.k<<" A.l = "<<a.l<<" A.m = "<<a.m<<endl;

    //Time of write.
    memcpy((void *)A_arr,(void *)(&a),SIZEOF_A);

    //Time of reading.
    A b;
    memcpy((void *)(&b),(void *)A_arr,SIZEOF_A);

    cout<<"A.d = "<<b.d<<" A.a = "<<b.a<<" A.b = "<<b.b<<" A.c = "<<b.c<<" A.e = "<<b.e<<" A.f = "<<b.f<<" A.g = "<<b.g<<" A.h = "<<b.h<<" A.i = "<<b.i<<" A.j = "<<b.j<<" A.k = "<<b.k<<" A.l = "<<a.l<<" A.m = "<<a.m<<endl;

    return 0;
}
