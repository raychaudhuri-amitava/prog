#include<iostream>
#include<string>
#include<cstdio>

using namespace std;

string next_seq(string a) {
    string ret("");
    int count = 1;
    char cnt[100] = {'\0'};

    for(int i = 1;i < a.size(); ++i) {
        if(a[i] != a[i-1]) {
            snprintf(cnt, 100, "%d", count);
            ret += cnt;
            ret += a[i-1];
            count = 1;
        } else {
            count++;
        }
    }

    snprintf(cnt, 100, "%d", count);
    ret += cnt;
    ret += a[a.size() - 1];

    return ret;
}

string look_see_seq(int n) {
    string seq = "6";
    for(int i = 2; i <= n; i++){
        seq = next_seq(seq);
    }
    return seq;
}

int main(void) {
    for(int i = 1; i<=200; i++) {
        string seq = look_see_seq(i);
        cout<<i<<"  :  "<<seq.size()<<endl;
    }
    return 0;
}



