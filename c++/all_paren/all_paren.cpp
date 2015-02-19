#include<iostream>
#include<string>
#include<cstdlib>

using namespace std;

void printparen(string &s, char* tmp, int l, int r, int pos) {
    if(l<0 || r<l) return;
    if(l == 0 && r == 0) {
        if(s == ""){
            s = tmp;
        }
        else {
            s = s + " , " + tmp; 
        }
        return;
    } else {
        if(l > 0) {
            tmp[pos] = '(';
            printparen(s,tmp,l-1,r,pos+1);
        }
        if(r > l) {
            tmp[pos] = ')';
            printparen(s,tmp,l,r-1,pos+1);
        }
    }
}

int main(int argc, char **argv) { 
    for(int i  = 1; i < argc; i++) {
        int count = atoi(argv[i]);
        string s("");
        char* tmp = new char[2*count + 1];
        tmp[2*count] = '\0';
        printparen(s, tmp, count, count, 0);
        cout<<argv[i]<<" : "<<s<<endl;
    }
    return 0;
}
   
