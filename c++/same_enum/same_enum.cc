#include<iostream>

using namespace std;

enum same{
    a = 1,
    b = 1,
    c = 1,
    d = 2,
    e
};

int main(void){
    cout<<"a = "<<a<<" b = "<<b<<" c = "<<c<<" d = "<<d<<" e = "<<e<<endl;
    size_t a=10,b=20;
    cout<<"a-b = "<<a-b<<" signed a-b = "<<(ssize_t)(a-b)<<endl;
    return 0;
}
