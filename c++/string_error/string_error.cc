#include<iostream>
#include<string>

using namespace std;

string mkstr(const char * str)
{
    return string(str);
}

int main(void)
{
    const char * a = "Amitava";
    const char * b = (const char *)(2092);
    const char * c = (const char *)(NULL);

    try {
    cout<<"GOOD str = "<<mkstr(a)<<endl;
    cout<<"BAD str = "<<mkstr(b)<<endl;
    cout<<"NULL str = "<<mkstr(c)<<endl;
    }
    catch(...)
    {
        cout<<"kool got exception"<<endl;
    }
    return 0;

}
