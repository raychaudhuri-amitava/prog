#include<iostream>

using namespace std;

class A {
public: 
A(){cout<<"In ctor of A"<<endl;}
};

class B {
public: 
B(){cout<<"In ctor of B"<<endl;}
};

template<class T>
class C : public T {
public: 
C(){cout<<"In ctor of C"<<endl;}
};


int main(void) {
C<A> ca;
C<B> cb;
return 0;
}
