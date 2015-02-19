#include<iostream>

#include<stdint.h>

using namespace std;

template<uint32_t N>
struct A {
  typedef uint32_t key[N];
  key k;

  A():k({0}) {};
  void printa() { 
    cout<<"Starting printing for a"<<N<<endl;
    for(int i = 0;i<N;i++) { 
        cout<<"at i = "<<k[i]<<endl;
    }
    cout<<endl;
  }
};

int main(void) {

    A<1> a1;
    A<2> a2;
    A<10> a10;
    A<4> a4;
    A<5> a5;
    a1.printa();
    a2.printa();
    a10.printa();
    a4.printa();
    a5.printa();

    return 0;
}
