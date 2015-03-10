#include<iostream>
#include<string.h>
#include<stdint.h>

using namespace std;

class A {
    int id;
    char name[10];
    double age;

public:
    A():id(1),age(29.71){strcpy(name,"Amitava");cout<<"In A ctor\n";}
    void printme(){cout<<"this = "<<reinterpret_cast<uint64_t>(this)<<"  id = "<<id<<"  name = "<<name<<"  age = "<<age<<endl;}
    ~A(){cout<<"in dtor of A\n";}
};

A* createat(void* addr) {
    A* ret = new(addr) A();
    return ret;
}

int main() {
    char *data = new char[sizeof(A)];
    cout<<"Addr = "<<reinterpret_cast<uint64_t>(data)<<endl;
    A *a = createat(reinterpret_cast<void *>(data));
    a->printme();
    delete a;
    //delete data;
    return 0;
}
    

