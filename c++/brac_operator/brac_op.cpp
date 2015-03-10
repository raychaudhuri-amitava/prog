#include<iostream>
#include<stdint.h>
#include<vector>
#include<boost/array.hpp>
using namespace std;
using namespace boost;

#define __COMMA__ ,
#define DUP(A) A##__COMMA__##A

#define ABC(isgood, k1, k2) \
    if(isgood) { \
        printf("both are same %d %d\n",k1,k2); \
    } \
    else {  \
        printf("both are diferent %d %d\n",k1,k2); \
    }

class A {
    private:
    array<vector<bool>, 4> something;
    public:
    A() {
        for(size_t x=0;x<4;x++) {
            if(x == 0) {
                something[x].resize(6);
                for(size_t y=0;y < 6;++y) {
                    something[x][y] = false;
                }
            }
            else {
                something[x].resize(9);
                for(size_t y=0;y<9;y++) {
                    something[x][y]=false;
                }
            }
        }
    }

    A& operator() (size_t x, size_t y) {
        if(x>=4) return *this;
        if((x == 0) && (y >=6)) return *this;
        if((x != 0) && (y >=9)) return *this;
        something[x][y] = true;
        return *this;
    }

    A& addSpec() {
        return *this;
    }

    void print() {
        for(size_t x=0;x<4;x++) {
            for(vector<bool>::iterator it = something[x].begin();
                    it != something[x].end(); ++it) {
                cout<<"x = "<<x<<":val = "<<*it<<",";
            }
            cout<<endl;
        }
    }
};


class B {
    A a;
    public:
        A& addOptions(){
            return a;
        }
        void printA() {
            a.print();
        }
};

int main(void) {
    B b;
    b.addOptions()
        (2,5)
        (3,8)
        (1,5)
        (0,0)
        ;

    b.printA();

    A a;
    a.addSpec()
        (2,3)
        (0,3)
        (1,2)
        ;
    a.print();

    int i = 100;
    int j = 200;

    ABC(true,DUP(i));
    ABC(true,i,j);

    return 0;
}
