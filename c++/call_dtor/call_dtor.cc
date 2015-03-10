#include<iostream>

using namespace std;

template<typename A>
class B {
    public:
      typedef A*       pointer;
      typedef const A* const_pointer;
      typedef A&       reference;
      typedef const A& const_reference;
      typedef A        value_type;
      
      void destroy(pointer __a) { __a->~A();}
      void destroy1(pointer __a) { __a->~int();}
      ~B(){}
};

int main(void) {
    B<int> b;
    int a = 10;
    b.destroy(&a);
    b.destroy1(&a);
    return 0;
}


