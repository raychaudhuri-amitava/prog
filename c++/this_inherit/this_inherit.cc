#include<iostream>

using namespace std;

class A{
    public:
        A(){cout<<"A ctor this = "<<(unsigned int)(this)<<endl;}
        virtual ~A(){cout<<"A dtor this = "<<(unsigned int)(this)<<endl;}
};
class B : public A{
    public:
        B(){cout<<"B ctor this = "<<(unsigned int)(this)<<endl;}
        virtual ~B(){cout<<"B dtor this = "<<(unsigned int)(this)<<endl;}
};
class C : public B{
    public:
        C(){cout<<"C ctor this = "<<(unsigned int)(this)<<endl;}
        virtual ~C(){cout<<"C dtor this = "<<(unsigned int)(this)<<endl;}
};
class D : public C{
    public:
        D(){cout<<"D ctor this = "<<(unsigned int)(this)<<endl;}
        virtual ~D(){cout<<"D dtor this = "<<(unsigned int)(this)<<endl;}
};
class E : public A{
    public:
        E(){cout<<"E ctor this = "<<(unsigned int)(this)<<endl;}
        virtual ~E(){cout<<"E dtor this = "<<(unsigned int)(this)<<endl;}
};
class F : public C{
    public:
        F(){cout<<"F ctor this = "<<(unsigned int)(this)<<endl;}
        virtual ~F(){cout<<"F dtor this = "<<(unsigned int)(this)<<endl;}
};

int main(void){
    A a;
    B b;
    C c;
    D d;
    E e;
    F f;
    A *g = new A();
    A *h = new B();
    A *i = new C();
    B *j = new D();
    E *k = new E();
    C *l = new F();
    delete g;
    delete h;
    delete i;
    delete j;
    delete k;
    delete l;

    return 0;
}
