#include<set>
#include<iostream>
#include<utility>
#include<string>

using namespace std;

struct A{
    int a;
    char b;
    string c;
    inline bool operator<(const A& val) const
    {
    	return a < val.a;
    }

    inline bool operator==(const A& val) const
    {
        return (a == val.a) && (b == val.b) && (c == val.c);
    }
    A(void):a(0),b('\0'),c(""){};
    A(int aa,char bb,string cc):a(aa),b(bb),c(cc){}
    inline void printme(void) const {cout<<"a = "<<a<<" b = "<<b<<" c = "<<c<<endl;}
};

typedef set<A> SETA;

int main(void){
    A a1(1,'a',"Amitava");
    A a2(1,'a',"Amitava");
    A a3(1,'a',"Amitava");
    A a4(1,'a',"Amitava");
    A a5(1,'a',"Amitava");
    A a6(1,'a',"Amitava");
    A a7(1,'a',"Amitava");
    A a8(2,'a',"Amitava");

    SETA alla;

    alla.insert(a1);
    alla.insert(a2);
    alla.insert(a3);
    alla.insert(a4);
    alla.insert(a5);
    alla.insert(a6);
    alla.insert(a7);
    alla.insert(a8);

   for(SETA::iterator it = alla.begin();it!=alla.end();++it){
       (*it).printme();
   }

   set<int> intset;
   set<int>::iterator one = intset.insert(1).first;
   set<int>::iterator two = intset.insert(2).first;
   set<int>::iterator three = intset.insert(3).first;
   set<int>::iterator four = intset.insert(4).first;
   set<int>::iterator five = intset.insert(5).first;
   set<int>::iterator six = intset.insert(6).first;
   set<int>::iterator seven = intset.insert(7).first;
   set<int>::iterator eight = intset.insert(8).first;
   set<int>::iterator nine = intset.insert(9).first;
   set<int>::iterator ten = intset.insert(10).first;

   for(set<int>::iterator it = intset.begin(); it != intset.end(); ++it) {
       cout<<*it<<"  ";          
   }
   cout<<endl;

   set<int>::iterator eleven = intset.insert(11).first;
   set<int>::iterator twelve = intset.insert(12).first;

   intset.erase(ten);
   set<int>::iterator fourteen = intset.insert(14).first;

   for(set<int>::iterator it = intset.begin(); it != intset.end(); ++it) {
       cout<<*it<<"  ";          
   }
   cout<<endl;

    return 0;
}
