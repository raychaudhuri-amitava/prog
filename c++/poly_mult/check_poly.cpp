#include "polynomial.hpp"
#include<iostream>
#include<sstream>

using namespace std;

int main(void) {
/*    string s1("0 (1,0)");
    string s2("4 (2,5) 3 (8,7) -2 (-6,9)");
    istringstream a1(s1), a2(s2);*/
    Polynomial p1;

    cin>>p1;
    while(cin) {
        Polynomial p2;
        cin>>p2;
        if(cin) {p1=p1*p2;}
    }
    cin.clear();
    cout<<"Final product = "<<p1<<endl;
    cout<<"Size = "<<p1.size()<<endl;
    return 0;
}

