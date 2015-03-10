#include<string>
#include<iostream>

using namespace std;

int main(void) {
    string a("ENUM");
    string b("name1::ENUM");
    string c("name1::name2::ENUM");
    string d("name1::name2::name3::ENUM");
    string e("name1::name2::name3::ENUM");

    size_t __k__ = a.rfind("::");
    string ra = a.substr((__k__ != string::npos) ? (__k__+2) : 0);
    string rb = b.substr(b.rfind("::")+2);
    string rc = c.substr(c.rfind("::")+2);
    string rd = d.substr(d.rfind("::")+2);
    string re = e.substr(e.rfind("::")+2);

    cout<<"a = "<<a<<"  res a = "<<ra<<endl;
    cout<<"b = "<<b<<"  res b = "<<rb<<endl;
    cout<<"c = "<<c<<"  res c = "<<rc<<endl;
    cout<<"d = "<<d<<"  res d = "<<rd<<endl;
    cout<<"e = "<<e<<"  res e = "<<re<<endl;

    return 0;
}
