#include <iostream>

using namespace std;

class A {
public:
    virtual void print()const {cout << " A\n";}
};

class B {
public:
    virtual void print()const {cout << " B\n";}
};

class C: public A, public B {
public:
    void print()const {cout << " C\n";}
};


int main()
{

    A* a = new A;
    B* b = new B;
    C* c = new C;

    a -> print(); b -> print(); c -> print();
    b = dynamic_cast< B*>(a);  //fails
    if (b)  
       b -> print();  
    else 
       cout << "no B\n";
    a = c;
    a -> print(); //C prints
    b = dynamic_cast< B*>(a);  //succeeds
    if (b)
       b -> print();  
    else 
       cout << "no B\n";
}

