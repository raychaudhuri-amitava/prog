#include<iostream>

#include<vector>
#include<set>

using namespace std;

int pow(int a, int n) {

    int c = 1;
    int b = a;
    int k = n;
    while(k != 0) {
        if(k&0x0001 == 0x0000) {
            k>>=1;
            b*=b;
        }else {
            k--;
            c*=b;
        }
    }
    return c;
}
        

vector<set<int> > getAllSubSets(set<int> &s) {
    int n = s.size();
    int max = pow(2,n);
    vector<set<int> > ret;

    for(int i = 0;i < max; i++) {
        int k = i;
        set<int> l;
        for(set<int>::iterator it = s.begin();it != s.end(); ++it) {
            if(k & 0x1 == 1) {
                l.insert(*it);
            }
            k>>=1;
        }
        ret.push_back(l);
    }
    return ret;
}

void getAllSubSets(vector<int> const& s, vector<vector<int> > &v) {
    v.clear();
    vector<int> init;
    v.push_back(init);
    for(int i = 1; i<= s.size(); ++i) {
        int sz = v.size();
        for(int j = 0; j < sz; j++) {
            vector<int> tmp((v[j]).begin(), (v[j]).end());
            tmp.push_back(s[i-1]);
            v.push_back(tmp);
        }
    }
} 

int main(int argc, char ** argv) {
    set<int> k;
    for(int i = 1; i < argc; i++) {
        int val = atoi(argv[i]);
        k.insert(val);
    }
    cout<<endl<<"Ist method"<<endl;
    vector<set<int> > r = getAllSubSets(k);
    cout<<"\n( ";
    for(vector<set<int> >::iterator it = r.begin(); it != r.end(); ++it) {
        cout<<"(";
        for(set<int>::iterator it1 = it->begin(); it1 != it->end(); ++it1) {
            cout<<*it1;
            set<int>::iterator chit1 = ++it1;
            if(chit1 != it->end() ) cout<<" , ";
            --it1;
        }
        cout<<")";
        vector<set<int> >::iterator chit = ++it;
        if(chit != r.end() ) cout<<" , ";
        --it;
    }
    cout<<" )\n";
    cout.flush();
    cout<<endl<<"IInd method"<<endl;
    vector<vector<int> > p;
    vector<int> l(k.begin(), k.end());
    getAllSubSets(l, p);
    cout<<"\n( ";
    for(vector<vector<int> >::iterator it = p.begin(); it != p.end(); ++it) {
        cout<<"(";
        for(vector<int>::iterator it1 = it->begin(); it1 != it->end(); ++it1) {
            cout<<*it1;
            vector<int>::iterator chit1 = ++it1;
            if(chit1 != it->end() ) cout<<" , ";
            --it1;
        }
        cout<<")";
        vector<vector<int> >::iterator chit = ++it;
        if(chit != p.end() ) cout<<" , ";
        --it;
    }
    cout<<" )\n";
    return 0;
}

