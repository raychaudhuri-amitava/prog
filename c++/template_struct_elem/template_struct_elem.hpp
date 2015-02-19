#pragma once

#ifndef TEMPL
template<const char* str1>
struct B {
    void print(){
        cout<<str1<<endl;
    }
};
extern const char name[]="MRCLASS";

typedef B<name> myB;
#endif
