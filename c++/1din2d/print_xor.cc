#include<iostream>
#include<stdint.h>

using namespace std;

#ifndef NUM_BITS
#define NUM_BITS 3
#endif

void print_binary(uint32_t v, int len) {
    if(len > sizeof(v)*8) len = sizeof(v) * 8;
    for(int i = 0; i < len; i++) {
        if(v & (0x01 << i)) {
            cout<<"1";
        } else {
            cout<<"0";
        }
    }
}

int main(void) {
    int rtsf = NUM_BITS;
    for(uint32_t a=0; a<(0x01 << rtsf); ++a) {
        for(uint32_t b = 0; b < (0x01 << rtsf); ++b) {
            for(uint32_t c = 0; c < (0x01 << rtsf); ++c) {
                print_binary(a, rtsf);
                cout<<"  |  ";
                print_binary(b, rtsf);
                cout<<"  |  ";
                print_binary(c, rtsf);
                cout<<"  |  ";
                print_binary(a^b^c, rtsf);
                cout<<"  |  \n";
            }
        }
    }
    return 0;
}



