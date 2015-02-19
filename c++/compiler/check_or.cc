#include<iostream>

using namespace std;

bool E1(int i) {
    cout<<"In E1 i = "<<i<<"\n";
    return true;
}

bool E2(int i) {
    cout<<"In E2 i = "<<i<<"\n";
    return false;
}

bool E() {
    int i = 10;
    return (i = 20, E1(i))
        || (i = 30, E2(i));
}

int main(void) {
    bool ret = E();
    cout<<"E returned "<<ret<<endl;
    return 0;
}


