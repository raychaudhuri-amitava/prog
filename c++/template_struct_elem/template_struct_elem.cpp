#include<iostream>
using namespace std;

#include "template_struct_elem.hpp"

struct A {
    int a;
    char b;
};

#define str(van) #van



int main(void) {
    A a;
    myB b;
    b.print();
    return 0;
}

