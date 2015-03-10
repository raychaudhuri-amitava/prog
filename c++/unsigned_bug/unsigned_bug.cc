#include <errno.h>
#include<iostream>
#include<stdlib.h>

#ifndef VAL_OF_A
#define VAL_OF_A 2147483650
#endif

using namespace std;

void prnt_unsigned(size_t a)
{
    cout<<a<<endl;
}

void prnt_signed(ssize_t a)
{
    cout<<a<<endl;
}

int main(void)
{
    cout<<"sizeof size_t = "<<sizeof(size_t)<<" sizeof ssize_t = "<<sizeof(ssize_t)<<" sizeof int = "<<sizeof(int)<<endl;
    int a=0;
    a = VAL_OF_A;
    cout<<"int a = "<<a<<" unsigned int a = "<<(unsigned int)a<<endl;

    char *b = NULL;
    b = (char *) malloc(a*sizeof(char));
    perror("MALLOC ERROR : ");
    if(b!=NULL)cout<<"Malloc success"<<endl;
    else cout<<"Malloc failure"<<endl;
    free(b);

    cout<<"Printed in the size_t func : ";
    prnt_unsigned(a);
    cout<<"Printed in the ssize_t func : ";
    prnt_signed(a);
    return 0;
}
