#include<iostream>

using namespace std;

template<typename T>
T getVal(int k) {
    cout<<"int k = "<<k<<" T k/10 = "<<static_cast<T>(k)/10.0<<endl;
    return static_cast<T>(k);
}

int main(void){
    float a = getVal<float>(3);
    double b = getVal<double>(5);

    cout<<"a = "<<a<<"  b = "<<b<<endl;
    return 0;
}

