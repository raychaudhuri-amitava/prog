#include<iostream>

using namespace std;

class A{
    public:
        A(){cout<<"A ctor this = "<<(unsigned int)(this)<<endl;}
        virtual ~A(){cout<<"A dtor this = "<<(unsigned int)(this)<<endl;}
};
class B {
    A a;
    public:
        B():a(){cout<<"B ctor this = "<<(unsigned int)(this)<<endl;}
        virtual ~B(){cout<<"B dtor this = "<<(unsigned int)(this)<<endl;}
};
class C {
    A a;
    B b;
    public:
        C():a(),b(){cout<<"C ctor this = "<<(unsigned int)(this)<<endl;}
        virtual ~C(){cout<<"C dtor this = "<<(unsigned int)(this)<<endl;}
};
class D {
    A a;
    B b;
    C c;
    public:
        D():a(),b(),c(){cout<<"D ctor this = "<<(unsigned int)(this)<<endl;}
        virtual ~D(){cout<<"D dtor this = "<<(unsigned int)(this)<<endl;}
};

int main(void){
    A a;
    B b;
    C c;
    D d;
    A *g = new A();
    B *h = new B();
    C *i = new C();
    D *j = new D();
    delete g;
    delete h;
    delete i;
    delete j;

    return 0;
}
