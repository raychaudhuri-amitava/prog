#include<iostream>
#include<vector>
#include<string>

using namespace std;

int lcs(string const& s1, string const& s2, vector<vector<int> > &res) {
    res.clear();
    res.resize(s1.size()+1, vector<int>(s2.size()+1, 0));

    vector<vector<int> > c(s1.size()+1, vector<int>(s2.size()+1, 0));

    string::const_iterator it1 = s1.begin();

    for(int i = 1; i <= s1.size(); i++) {
        string::const_iterator it2 = s2.begin();
        for(int j = 1; j <= s2.size(); j++) {
            if(*it1 == *it2) {
                c[i][j] = c[i-1][j-1] + 1;
                res[i][j] = 0;
            } else if(c[i-1][j] >= c[i][j-1]) {
                c[i][j] = c[i-1][j];
                res[i][j] = 1;
            } else {
                c[i][j] = c[i][j-1];
                res[i][j] = 2;
            }
            it2++;
        }
        it1++;
    }

    return c[s1.size()][s2.size()];
}

int printLCS(vector<vector<int> > const& res, string const& s1, int i, int j) {
    if(s1.size() + 1 != res.size()) return -1;
    
    if((i == 0) || (j == 0)) {
        return 1;
    }

    if(res[i][j] == 0) {
        if(printLCS(res, s1, i-1, j-1) == -1) {
            return -1;
        }

        cout<<s1[i-1];
    } else if(res[i][j] == 1) {
        if(printLCS(res, s1, i-1, j) == -1) {
            return -1;
        }
    } else {
        if(printLCS(res, s1, i, j-1) == -1) {
            return -1;
        }
    }
    return 1;
}

void printMaxPalindromeSub(string const& s) {
    string s2(s.rbegin(), s.rend());
    vector<vector<int> > res;

    cout<<"String = "<<s<<endl;
    cout<<"Longest palindrome subsequence length = "<<lcs(s, s2, res)<<endl;
    printLCS(res, s, s.size(), s.size());
    cout<<endl;
}

int main(void) {
    string s1("ABCBDAB");
    string s2("BDCABA");
    cout<<"s1 = "<<s1<<endl<<"s2 = "<<s2<<endl;
    vector<vector<int> > res;
    cout<<"Length of lcs = "<<lcs(s1, s2, res)<<endl;
    cout<<"Subsequence = ";
    printLCS(res, s1, s1.size(), s2.size());
    cout<<endl;
    string dna_seq("CACAATTCCCATGGGTTGTGGAG");
    printMaxPalindromeSub(dna_seq);
    string clrstr("character");
    printMaxPalindromeSub(clrstr);
    return 0;
}

