#include<iostream>
#pragma once
using namespace std;

template <class T>
class cpl
{
  private:
    T a[200];
  public:
    cpl(char * a)
    {
        int i=0;
        while(a[i] != '\0')
        {
            this->a[i]=a[i];
            i++;
        }

        this->a[i]='\0';

    }

    void print_me(void)
    {
        cout<<"me = "<<a<<endl;
        cout<<"Some more changes"<<endl;
    }
    int anyfunc(void)
    {
        int y=0;
        cout<<"Just printing "<<y<<endl;
        return y;
    }
};
