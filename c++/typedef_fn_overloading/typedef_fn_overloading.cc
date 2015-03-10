#include<iostream>
#include<stdint.h>

using namespace std;

typedef uint32_t predict_versionid_t;
typedef uint32_t bucket_id_t;

bool getJunk(predict_versionid_t a)
{
    cout<<"get predict version junk is called a = "<<(uint32_t)a<<endl;
}


bool getJunk(bucket_id_t a)
{
    cout<<"get bucket id junk is called a = "<<a<<endl;
}
struct A {
    int a;
}a;

typedef A::a b;

int main(void)
{
    predict_versionid_t a = 20;
    bucket_id_t b = 30;
    getJunk(a);
    getJunk(b);
    return 0;
}
