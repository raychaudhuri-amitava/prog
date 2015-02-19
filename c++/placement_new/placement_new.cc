#include<iostream>

using namespace std;

class A {
  public:
   int l;
    A() {
        l = 20;
        cout<<"In the ctor\n";
    }
    A(int a) {
        l = a;
        cout<<"in another ctor\n";
    }
    
};

int main(void) {
    size_t a_sz = sizeof(A);
    A b;
    cout<<"Allocating char a\n";
    char *a = new char[a_sz];
    cout<<"calling placement new\n";
    new(a) A();
    cout<<"int set = "<<reinterpret_cast<A*>(a)->l<<"\n";
    new(a) A(90);
    cout<<"int set = "<<reinterpret_cast<A*>(a)->l<<"\n";
    cout<<"int set = "<<b.l<<"\n";
    new(&b) A(100);
    cout<<"int set = "<<b.l<<"\n";

    return 0;
}


