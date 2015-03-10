#include<iostream>

using namespace std;

class B;

class A : public B {
  public:
    A() {
        cout<<"I am in A"<<endl;
    }
};

class B : public A {
  public:
    B() {
        cout<<"I am in B"<<endl;
    }
};



int main() {
    A a;
    B b;
    return 0;
}

