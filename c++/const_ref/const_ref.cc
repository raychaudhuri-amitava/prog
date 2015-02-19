#include<iostream>

using namespace std;

int func(const int &a) {
    cout<<"in Func val a = "<<a<<"    addr a = "<<&a<<endl;
    return a;
}

class A {
public:
    A() {
        cout<<"In A ctor"<<endl;
    }
    A(const A& a) {
        cout<<"In A cpctor"<<endl;
    }
    operator int() {
        cout<<"In A int cast"<<endl;
        return 5;
    }
};

class B {
public:
    B() {
        cout<<"In B ctor"<<endl;
    }
    operator A() {
        cout<<"In B A cast"<<endl;
        A a;
        cout<<"addr of temp A in B A cast = "<<&a<<endl;
        return a;
    }
    
};

int main(void) {

    double a = 10.0;
    double &r = a;
    const int &p = a;
    const int &c = 21;
    int *pc = const_cast<int *>(&c);
    
    cout<<"a = "<<a<<" addr a = "<<&a<<" r = "<<r<<" addr r = "<<&r<<"  p = "<<p<<" addr p = "<<&p<<"  c = "<<c<<"  addr c = "<<&c<<endl;
    a = 100;
    cout<<"a = "<<a<<" addr a = "<<&a<<" r = "<<r<<" addr r = "<<&r<<"  p = "<<p<<" addr p = "<<&p<<"  c = "<<c<<"  addr c = "<<&c<<endl;
    r++;
    cout<<"a = "<<a<<" addr a = "<<&a<<" r = "<<r<<" addr r = "<<&r<<"  p = "<<p<<" addr p = "<<&p<<"  c = "<<c<<"  addr c = "<<&c<<endl;
    (*pc)++;
    cout<<"a = "<<a<<" addr a = "<<&a<<" r = "<<r<<" addr r = "<<&r<<"  p = "<<p<<" addr p = "<<&p<<"  c = "<<c<<"  addr c = "<<&c<<endl;

    double fa = 90;
    int fb = 100;

    cout<<"double fa = "<<fa<<"  addr fa = "<<&fa<<endl;
    func(fa);

    cout<<"int fb = "<<fb<<"  addr fb = "<<&fb<<endl;
    func(fb);
 
    A cla;
    const int &cli = cla;
    cout<<"addr cla = "<<&cla<<"  addr cli = "<<&cli<<endl;
    B clb;
    const A &rcla = clb; 
    cout<<"addr clb = "<<&clb<<"  addr rcla = "<<&rcla<<endl;

    A x;
    x = B(clb);
    cout <<"addr of A x = "<<&x<<endl;

    x = B(clb);
    cout <<"addr of A x = "<<&x<<endl;

    return 0;
}
