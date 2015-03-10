#include<iostream>

using namespace std;

int main(void)
{
    const int size = 5;
    cout<<"With pre increment"<<endl;
    for(int i=0;i<size;++i){cout<<"i = "<<i<<endl;}
    cout<<"With post increment"<<endl;
    for(int i=0;i<size;i++){cout<<"i = "<<i<<endl;}
    cout<<"With def increment"<<endl;
    for(int i=0;i<size;i+=1){cout<<"i = "<<i<<endl;}

    return 0;
}
