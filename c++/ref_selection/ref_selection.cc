#include<iostream>

using namespace std;

void incr(int& val) {
    val++;
}

int result(bool ret) {
    return 10 + (ret?sizeof(char) : sizeof(double)) * 20 + 6;
}

class A {
    public:
    A(){cout<<"In A ctor\n";}
    virtual void print() = 0;
};

class B : public A {
    public:
    B() {cout<<"In B ctor"<<endl;}
    virtual void print() {cout<<"In B print\n";}
};


class C : public A {
    public:
    C() {cout<<"In C ctor"<<endl;}
    virtual void print() {cout<<"In C print\n";}
};

class Fact {
    public:
    void checkPass(A &a) {
        cout<<"In Fact checkPass\n";
        a.print();
    }
};

int main(void) {
    int i = 10;
    int j = 20;

    bool sel = false;

    incr(sel ? i : j);
    cout<<"sel is false, i = "<<i<<" j = "<<j<<endl;
    sel = true;
    incr(sel ? i : j);
    cout<<"sel is false, i = "<<i<<" j = "<<j<<endl;

    cout<<"false = "<<result(false)<<endl;
    cout<<"true = "<<result(true)<<endl;
    B b;
    C c;
    Fact f;
    f.checkPass(b);
    f.checkPass(c);
    return 0;
}
