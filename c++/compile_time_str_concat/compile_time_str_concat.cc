#include<iostream>
#include<string>

using namespace std;

#define THIS_IS_ONE (1)
#define THIS_IS_TWO_CHECK (2)
#define THIS_IS_THREE_CHECK (3)
#define THIS_IS_FOUR_CHECK (4)

#define CONCAT2(A,B) A##B
#define CONCAT3(A,B,C) A##B##C


template<char* T="THREE">
void print(){
    cout<<CONCAT3(THIS_IS_,T,_CHECK)<<endl;
}

int main(void){

    CONCAT2(str,ing) a("Amitava");
    cout<<a<<endl;
    cout<<CONCAT2(THIS_IS_,ONE)<<endl;
    cout<<CONCAT3(THIS_IS_,TWO,_CHECK)<<endl;

    return 0;
}
