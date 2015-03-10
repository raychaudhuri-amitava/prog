#include<iostream>

using namespace std;
class ref_mem1;
class ref_member{
    static ref_member& b;
    public:
    static ref_member& getInstance(){return b;}
    virtual void print(){cout<<"Good way"<<endl;}

};
ref_member& ref_member::b=*((ref_member)(new ref_mem1));

class ref_mem1:public ref_member{
    public:
        virtual void print(){cout<<"new Good way"<<endl;}
};


int main(void){
    int i=10;
    ref_member::getInstance().print();
    return 0;
}

