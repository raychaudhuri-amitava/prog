#include<iostream>
#include<string>
#include<vector>

using namespace std;

vector<string> permute(string s) {
    vector<string> ret;
    if(s.length() == 1) {
        ret.push_back(s);
        return ret;
    }
   
    char c = s[0];
    vector<string> p = permute(s.substr(1));

    for(vector<string>::iterator it = p.begin(); it != p.end(); ++it) {
        string a = c + *it;
        ret.push_back(a);
        for(int i = 0; i < it->length()-1; ++i) {
            string q((*it).substr(0,i+1));
            q = q + c;
            q = q + (*it).substr(i+1);
            ret.push_back(q);
        }
        string z = *it + c;
        ret.push_back(z);
    }
    return ret;
}

int main(int argc, char ** argv) {
    for(int i = 1; i < argc; i++) {
        cout<<"Actual String : "<<argv[i]<<endl;
        string t(argv[i]);
        vector<string> p = permute(t);
        for(vector<string>::iterator it = p.begin(); it != p.end(); ++it) {
            cout<<*it<<endl;
        }
    }
    return 0;
} 
