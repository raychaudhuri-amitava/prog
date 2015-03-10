#include<iostream>

using namespace std;

class A {
    public:
       virtual void f1() {
        cout<<"In f1 of A"<<endl;
       }
       virtual void f2() {
        cout<<"In f2 of A"<<endl;
        f2();
       }    
       virtual ~A(){}
};

class B : public A {
    public:
        virtual void f1() {
            cout<<"In f1 of B"<<endl;
            A::f2();
        }
       virtual void f2() {
        cout<<"In f2 of B"<<endl;
       }    
      
        virtual ~B(){}
};

int main(void) {

    A *a = new B();
    a->f1();
    delete a;
    return 0;
}
