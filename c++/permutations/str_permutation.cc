#include<iostream>
#include<string>
#include<vector>
using namespace std;

void print_permutation(string const& str, string &out, vector<bool> &used, size_t out_pos) {
    if(out_pos == str.size()) {
        cout<<out<<endl;
        return;
    }
    for(size_t i = 0; i < str.size(); ++i) {
        if(used[i]) {
             continue;
        }
        out[out_pos] = str[i];
        used[i] = true;
        print_permutation(str, out, used, out_pos + 1);
        used[i] = false;
    }
}


    

vector<string> get_permutation(string &str) {
    if(str.size() == 0) {
        return vector<string>(0, string(""));
    }

    vector<string> ret ;
    for(size_t i = 0; i < str.size(); i++) {
         

int main(void) {
    string str="";

    cout<<"Enter string: ";
    cin>>str;
    vector<bool> used(false, str.size());
    string out(str.size(), '\0');
    print_permutation(str, out, used, 0); 
    cout<<"\n";

    return 0;
}


