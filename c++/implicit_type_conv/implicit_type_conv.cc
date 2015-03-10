#include<iostream>

using namespace std;

int main(void) {
    int j=2;
    double x1 = 0.99;
    double x2 = 2.00000001;
    double x3 = 1.999999999;
    double x4 = 3.17628;
    double x5 = 1.9999999999999999999999999;

    cout.precision(10);

    if(x1>j){
        cout<<x1<<" > "<<j<<endl;
    }
    if(x2>j){
        cout<<x2<<" > "<<j<<endl;
    }
    if(x3>j){
        cout<<x3<<" > "<<j<<endl;
    }
    if(x4>j){
        cout<<x4<<" > "<<j<<endl;
    }
    if(x5>j){
        cout<<x5<<" > "<<j<<endl;
    }
    return 0;
}
