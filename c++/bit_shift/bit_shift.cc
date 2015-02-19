#include<iostream>
#include<stdint.h>

using namespace std;

template<typename T1, typename T2>
union Both {
    typedef T1 first;
    T1 val1;
    T2 val2;
    char print[sizeof(first)];
};

void print8(uint8_t n) {
    char out[33] = {'\0'};
    uint32_t mask = 0x01;
    for(int i=7; i>=0; i--) {
        if(n&mask == mask) out[i] = '1';
        else out[i] = '0';
        n>>=1;
    }
    cout<<out;
}


template<typename T1, typename T2>
void printAll(Both<T1, T2> const& v) {
    for(int32_t i = sizeof(typename Both<T1,T2>::first) - 1; i >= 0; --i) {
        print8(v.print[i]);
    }
    cout<<endl;
}

void printPowersOf2(void) {
    Both<int64_t, uint64_t> v1;
    v1.val2=1;
    for(int i = 0; i < 64; i++) {
        cout<<"uint64_t "<<v1.val2<<" = ";
        printAll(v1);        
        v1.val2<<=1;
    }
}

int main(void) {

    Both<int64_t, uint64_t> v1;
    v1.val2=0;
    printPowersOf2();
    v1.val1=25;
    cout<<"int32_t 25 = ";
    printAll(v1);
    v1.val1=-25;
    cout<<"int32_t -25 = ";
    printAll(v1);
    v1.val1>>=4;
    cout<<"shift right by 4 = ";
    printAll(v1);
    v1.val1=-25;
    v1.val1<<=4;
    cout<<"shift left by 4 = ";
    printAll(v1);
    v1.val1=-25;
    cout<<"uint32_t "<<v1.val2<<" = ";
    printAll(v1);
    v1.val2>>=4;
    cout<<"shift right by 4 = ";
    printAll(v1);
    v1.val1=-25;
    v1.val2<<=4;
    cout<<"shift left by 4 = ";
    printAll(v1);
 
    return 0;
} 
    
