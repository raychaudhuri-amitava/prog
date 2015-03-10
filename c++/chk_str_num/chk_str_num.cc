#include<iostream>
#include<sstream>
#include<string>

using namespace std;

int main(void)
{
    string str("agfs10");
    stringstream strs(str);
    int buk=0;
    if(strs>>buk)
    {
        cout<<"Conversion happened buk = "<<buk<<endl;
    }
    else
    {
        cout<<"Conversion did not happened"<<endl;
    }
}

