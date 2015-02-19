#include<iostream>

using namespace std;

class A{
    protected:
        int i;
};

class B : public A{
    public:
        void print(){cout<<"A i = "<<i<<endl;}
};

int main(void){
    B b;
    b.print();
}
