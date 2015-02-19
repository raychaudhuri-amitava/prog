#include<utility>
#include<iostream>
#include <unordered_map>
using namespace std;

int main(void) {
    unordered_map<int, int> a;

    for(int i = 1; i < 100; i++) {
        a.insert(std::pair<int, int>(i,i));
    }

    unordered_map<int, int>::iterator rt = a.find(2);
    unordered_map<int, int>::iterator en = a.end();
    unordered_map<int, int>::iterator bg = a.begin();

    if(rt != a.end()) {
        cout<<"key = "<<rt->first<<" val = "<<rt->second<<endl;
    }

    a.insert(std::pair<int, int>(103, 103));

    if(rt != a.end()) {
        cout<<"key = "<<rt->first<<" val = "<<rt->second<<endl;
    } 


    a.insert(std::pair<int, int>(106, 106));
    if(en != a.end()) {
        cout<<"end change after insert\n";
    } else if(en == a.end()) {
        cout<<"end same after insert\n";
    }

    if(bg != a.begin()) {
        cout<<"begin change after insert\n";
    } else if(bg == a.begin()) {
        cout<<"begin same after insert\n";
    }

    struct A {
        int a[5];
        A() {
            a[0] = 1;
            a[1] = 2;
            a[2] = 3;
            a[3] = 4;
            a[4] = 5;
        }
    };

    A c1;
    A c2;

    c2.a[0] = 10;
    c2.a[1] = 20;
    c2.a[2] = 30;
    c2.a[3] = 40;
    c2.a[4] = 50;

    c1 = c2;

    return 0;
}

