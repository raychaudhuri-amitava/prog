#include<iostream>
using namespace std;
class A
{
    public:
        int i;
    virtual float getProb(int &k) const;
};

float A::getProb(int &k) const
{
    cout<<"In A's getProb"<<endl;
    k=i;
    k++;
    return i/20;
}

class B : public A
{
    public:
    int p;

    virtual float getProb(int &k) const;
};

float B::getProb(int &k) const 
{        
    cout<<"In B's getProb"<<endl;
    k = p;
    k++;
    return (p+A::i)/100;
}

int main(void)
{   
    A *a = new A(); 
    A *b = (A *)(new B());
    a->i =10;
    ((B*)b)->p=20;
    int k=0;
    cout<<"prob A = "<<a->getProb(k)<<endl;
    cout<<"prob B = "<<b->getProb(k)<<endl;

    delete a;
    delete b;

    return 0;
}
