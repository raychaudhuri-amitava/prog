#include<iostream>
#include<sstream>
#include<exception>
#include<stdint.h>

using namespace std;

int main(void) {

    string line("234 8182 81919	78.11	");    
    istringstream is(line);
    try {
        uint64_t key;

        for(int i =0; i< 4;i++) {
            if(!(is>>key)){
                throw std::ios::failure("error on parsing key");
            }
            cout<<"key_"<<i<<"="<<key<<endl;
        }

        double val;
        if(!(is>>val)) {
            throw std::ios::failure("error on parsing value");
        }
        double chk=0.0;
        if(is>>chk) {
            cout<<"after val = "<<chk<<endl;
        }
        cout<<"val="<<val<<endl;
    }catch(exception &e){
        cout<<"Exception caught: "<<e.what()<<endl;
    }
    string str("1.1	1	2	0.99");
    istringstream is1(str);
    cout<<"Str = "<<str<<endl;
    uint64_t ky = 0;

    for(int i = 0; i<3; i++) {
        is1>>ky;
        cout<<ky<<"\n";
    }
    double vl(0);
    is1>>vl;
    cout<<"val = "<<vl<<endl;
    return 0;
}
