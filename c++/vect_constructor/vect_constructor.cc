#include<iostream>
#include<vector>
#include<utility>
#include<stdint.h>

using namespace std;

int main(void)
{
    vector<uint64_t> a(0);
    vector<pair<uint64_t,uint64_t> >b(0);
    cout<<"size of a = "<<a.size()<<" size of b = "<<b.size()<<endl;
    int64_t lena = a.size();
    int64_t lenb = b.size();
    for(int64_t i = 0;i<lena;i++)
    {
        cout<<"a["<<i<<"] = "<<a[i]<<endl;
    }
    for(int64_t i = 0;i<lenb;i++)
    {
        cout<<"b["<<i<<"].first = "<<b[i].first<<"  b["<<i<<"].second = "<<b[i].second<<endl;
    }

    a.clear();
    b.clear();

    return 0;
}
