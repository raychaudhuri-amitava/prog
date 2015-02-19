/*
 * =====================================================================================
 *
 *       Filename:  max_pages.cc
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  08/03/2014 07:08:15 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Amitava 
 *   Organization:  
 *
 * =====================================================================================
 */

#include<stdint.h>
#include<iostream>
#include<string>
#include<list>
#include<map>
#include<utility>
#include<algorithm>

using namespace std;

struct Entry {
    uint32_t timestamp;
    string page;
    Entry(uint32_t ts, string const &pg) : timestamp(ts), page(pg){}
};

struct PrintPage {
    void operator()(string const &s) const {cout<<s<<endl;}
    void operator()(Entry const &e) const {cout<<"("<<e.timestamp<<","<<e.page<<")"<<endl;}
};

class Log {
    public:
        void add(Entry p);
        list<string> common(int k);
    private:
        map<string, multimap<int, string>::iterator> m;
        multimap<int, string> s;
};

void Log::add(Entry p) {
    map<string, multimap<int, string>::iterator>::iterator it = m.find(p.page);
    if(it != m.end()) {
        multimap<int, string>::iterator countit = it->second;
        int count = countit->first;
        count++;
        s.erase(countit);
        countit = s.insert(make_pair(count, p.page));
        it->second = countit;
    } else {
        multimap<int, string>::iterator countit = s.insert(make_pair(1, p.page));
        m[p.page] = countit;
    }
}

list<string> Log::common(int k) {
    list<string> ret;
    for(multimap<int, string>::reverse_iterator rit = s.rbegin(); k>0 && rit != s.rend();--k, ++rit) {
        ret.push_back(rit->second);
    }
    return ret;
}


int main(void) {
    Log l;
    Entry e[] = {
        Entry(1, string("www.amitava.com")), 
        Entry(2, string("www.yahoo.com")), 
        Entry(3, string("www.yahoo.com")),
        Entry(4, string("www.yahoo.com")),
        Entry(5, string("www.yahoo.com")),
        Entry(6, string("www.google.com")),
        Entry(7, string("www.microsoft.com")),
        Entry(8, string("www.microsoft.com")),
        Entry(9, string("www.google.com")),
        Entry(10, string("www.google.com")),
    };
    for(int i = 0; i < sizeof(e) / sizeof(Entry); i++) {
        l.add(e[i]);
    }
    list<string> l1 = l.common(1);
    list<string> l2 = l.common(2);
    list<string> l3 = l.common(3);
    list<string> l4 = l.common(4);

    cout<<"printing all : "<<endl;
    for_each(e, e + sizeof(e) / sizeof(Entry), PrintPage());
    cout<<"printing l1 : "<<endl;
    for_each(l1.begin(), l1.end(), PrintPage());
    cout<<"printing l2 : "<<endl;
    for_each(l2.begin(), l2.end(), PrintPage());
    cout<<"printing l3 : "<<endl;
    for_each(l3.begin(), l3.end(), PrintPage());
    cout<<"printing l4 : "<<endl;
    for_each(l4.begin(), l4.end(), PrintPage());

    return 0;


}
