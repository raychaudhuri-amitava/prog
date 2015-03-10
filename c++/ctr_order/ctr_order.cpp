#include<iostream>
#include<string>
using namespace std;

class A {
    public:
        A(string str) {
            cout<<"In A ctor: ("<<str<<endl;
        }
        ~A() {
            cout<<"In A dtor)"<<endl;
        }
};

inline void fncA() {
    A a("In fncA 4");
}

int main(void) {
    A a("1");
    {
        cout<<"In A 2"<<endl;
        A a("2");
        fncA();
        cout<<"Done A 2"<<endl;
    }
    fncA();
    A b("3");
    return 0;
}
