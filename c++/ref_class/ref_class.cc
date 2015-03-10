#include<iostream>

using namespace std;

class ref_member{
    int& a;
    public:
    ref_member(int&c):a(c) {
        //a = c;
    }

    void print(){cout<<a<<endl;}
};

int main(void){
    int i=10;
  
    ref_member rm(i);
    for(i=0; i<100;i++)
    rm.print();
    return 0;
}

