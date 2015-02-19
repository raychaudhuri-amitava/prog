/*
 * =====================================================================================
 *
 *       Filename:  8_queens.cc
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  08/05/2014 05:18:23 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include<string>
#include<iostream>
#include<vector>
#include<cstdlib>

using namespace std;

void printBoard(int n, string const &s) {
    for(int i=0; i<n; i++){
        for(int j=0;j<n;j++) {
            cout<<s[n*i +j]<<" ";
        }
        cout<<endl;
    }
}

bool check_rows_cols(int n, string const &s, bool isRow) {
    for(int x=0; x<n; x++) {
        bool gotFirst = false;
        for(int y=0; y<n; y++) {
            if(s[isRow?(n*x + y) : (n*y + x)] == 'Q') {
                if(gotFirst) {
                    return false;
                }
                gotFirst = true;
            }
        }
    }
    return true;
}

bool check_diagonals(int n, string const &s) {
    for(int delta = -(n - 1); delta < n; delta++) {
        int x = delta > 0? delta : 0;
        int y = x - delta;
        bool gotFirst = false;
        while(x < n && y < n) {
            if(s[n*x + y] == 'Q') {
                if(gotFirst) {
                    return false;
                }
                gotFirst = true;                
            }
            x++;
            y++;
        }
    }

    for(int x = 0, y = 0; y < n; ) {
        int r = x;
        int c = y;
        bool gotFirst = false;
        while((r >= 0) && (c<n)) {
            if(s[n*r + c] == 'Q') {
                if(gotFirst) {
                    return false;
                }
                gotFirst = true;                
            }
            r--;
            c++;
        }
        if(x < n-1) {
            x++;
        } else {
            y++;
        }
    }

    return true;
}
bool check(int n, string const &s) {
    return check_rows_cols(n, s, true) && check_rows_cols(n, s, false) && check_diagonals(n, s);
}

bool _h_queen(int n, string &s, int i) {
    if(i >= n) return true;
    for(int j = 0; j < n; j++) {
        s[n*(i + 1) + j] = 'Q';
        if(check(n, s) && _h_queen(n, s, i+1)) {
            return true;
        }        
        s[n*(i + 1) + j] = '.';
    }
    return false;
}

void h_queen(int n, vector<string> &Q) {
    Q.clear();
    for(int j=0; j<n; j++){
        string s(n*n, '.');
        s[j] = 'Q';
        if(_h_queen(n, s, 0)) {
            Q.push_back(s);
        }
    }
}

int main(int argc, char ** argv) {
    int n = 4;
    if(argc > 1) {
        n = atoi(argv[1]);
    }
    cout<<"Solving n-queens for n = "<<n<<endl;
    vector<string> Q;
    h_queen(n, Q);
    int c = 1;
    for(vector<string>::iterator it = Q.begin(); it != Q.end(); ++it) {
        cout<<"Board config : "<<c<<endl;
        printBoard(n, *it);
        cout<<endl;
        c++;
    }

    return 0;
}
