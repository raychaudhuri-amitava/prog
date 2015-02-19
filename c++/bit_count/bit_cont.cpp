#include<iostream>
#include<stdint.h>
#include<string>

using namespace std;

uint32_t atou(char *p) {
    int i = 0;
    uint32_t val = 0;
    while(p[i] != '\0') {
       val = val*10+p[i] - '0';
       i++;
    }
    return val;
} 

void  print32(uint32_t n) {
    char out[33] = {'\0'};
    uint32_t mask = 0x00000001;
    for(int i=31; i>=0; i--) {
        if(n&mask == mask) out[i] = '1';
        else out[i] = '0';
        n>>=1;
    }
    cout<<out;
}

string get32(uint32_t n) {
    char out[33] = {'\0'};
    uint32_t mask = 0x00000001;
    for(int i=31; i>=0; i--) {
        if(n&mask == mask) out[i] = '1';
        else out[i] = '0';
        n>>=1;
    }
    return string(out);
}

template<typename T>
void checkShift(T n) {
    for(uint32_t i = 0; i <= 2*sizeof(T) * 8; ++i) {
        //cout<<n<<"<<"<<i<<" = "<<(n<<i)<<" : "<<get32(n<<i)<<endl;
        cout<<n<<">>"<<i<<" = "<<(n>>i)<<" : "<<get32(n>>i)<<endl;
    }
}

int main(int argc, char ** argv) {
    for(int i = 1; i < argc; i++) {
        uint32_t val = atou(argv[i]);
/*        cout<<"val = "<<val<<" : ";print32(val);cout<<endl;
        cout<<"      "<<(val >> 1)<<" : ";print32(val>>1);cout<<endl;
        cout<<"      "<<((val >> 1) & 033333333333)<<" : ";print32((val>>1)&033333333333);cout<<endl;
        cout<<"      "<<(val >> 2)<<" : ";print32(val>>2);cout<<endl;
        cout<<"      "<<((val >> 2) & 011111111111)<<" : ";print32((val>>2)&011111111111);cout<<endl;
        cout<<"      "<<(val - ((val >> 1) & 033333333333) - ((val >> 2) & 011111111111))<<" : ";print32((val - ((val >> 1) & 033333333333) - ((val >> 2) & 011111111111)));cout<<endl;
        register uint32_t tmp = (val - ((val >> 1) & 033333333333) - ((val >> 2) & 011111111111));
        cout<<"      "<<(tmp >> 3)<<" : ";print32(tmp >> 3);cout<<endl;
        cout<<"      "<<(tmp + (tmp >> 3))<<" : ";print32(tmp + (tmp >> 3));cout<<endl;
        cout<<"      "<<((tmp + (tmp >> 3)) & 030707070707)<<" : ";print32((tmp + (tmp >> 3)) & 030707070707);cout<<endl;
        cout<<"      "<<(((tmp + (tmp >> 3)) & 030707070707)%63)<<" : ";print32(((tmp + (tmp >> 3)) & 030707070707)%63);cout<<endl;*/
        print32(val);cout<<endl;
        print32(val>>1);cout<<endl;
        print32((val>>1)&033333333333);cout<<endl;
        print32(val>>2);cout<<endl;
        print32((val>>2)&011111111111);cout<<endl;
        print32((val - ((val >> 1) & 033333333333) - ((val >> 2) & 011111111111)));cout<<endl;
        register uint32_t tmp = (val - ((val >> 1) & 033333333333) - ((val >> 2) & 011111111111));
        print32(tmp >> 3);cout<<endl;
        print32(tmp + (tmp >> 3));cout<<endl;
        print32((tmp + (tmp >> 3)) & 030707070707);cout<<endl;
        print32(((tmp + (tmp >> 3)) & 030707070707)%63);cout<<endl;
        cout<<(((tmp + (tmp >> 3)) & 030707070707)%63)<<endl;
        cout<<"Done"<<endl<<endl;
    }

    checkShift<int32_t>(-10);
    checkShift<int32_t>(10);
    checkShift<int32_t>(-1);
    checkShift<int32_t>(1);

    return 0;
}
       

