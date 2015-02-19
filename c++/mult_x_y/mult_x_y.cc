#include<iostream>
#include<stdint.h>

using namespace std;

uint64_t add(uint64_t a, uint64_t b) {
    if(b) {
        return add(a^b, (a&b)<<1);
    }

    return a;
}

uint64_t dec(uint64_t a) {
    return add(a, ~(0x00ul));
}

uint64_t mult(uint64_t a, uint64_t b) {
    uint64_t s = 0;
    while(b) {
        s = add(s, a);
        b = dec(b);
    }
    return s;
}

uint64_t another_mult(uint64_t a, uint64_t b) {
    uint64_t s = 0;
    uint64_t temp_b = b;
    uint64_t mult_mask = 0x01UL;

    while(temp_b) {
        if(b&mult_mask) {
            s = add(s, a);
            temp_b &= dec(temp_b);
        }
        mult_mask<<=1;
        a<<=1;
    }
    return s;
}

int main(void) {
    uint64_t x = 8192788;
    uint64_t y = 32768655;

    //cout<<x<<" x "<<y<<" = "<<mult(x, y)<<endl;
    cout<<x<<" x "<<y<<" = "<<another_mult(x, y)<<endl;
    return 0;
}


