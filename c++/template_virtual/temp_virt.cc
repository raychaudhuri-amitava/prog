#include<iostream>
#include<boost/array.hpp>

using namespace std;

class A {
    public:
        template<typename T>
            virtual void print(T x) {
                cout<<"in A template "<<x<<endl;
            }
        virtual ~A(){}
};

class B : public A {
    public:
        template<typename T>
            virtual void print(T x) {
                cout<<"in B template "<<x<<endl;
            }
        virtual ~B(){}
};

int main(void) {

    A *a = new B();
    a->print(10);
    a->print('c');

    delete a;

    return 0;
}
