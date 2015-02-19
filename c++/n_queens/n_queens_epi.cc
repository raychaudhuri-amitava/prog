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
#include<algorithm>

using namespace std;

void printBoard(int n, string const &s) {
    for(int i=0; i<n; i++){
        for(int j=0;j<n;j++) {
            cout<<s[n*i +j]<<" ";
        }
        cout<<endl;
    }
}


bool is_feasible(vector<int> const &col_placement, int row) {
    for(int i = 0; i < row; ++i) {
        int diff = abs(col_placement[i] - col_placement[row]);
        if(diff == 0 || diff == row - i) {
            return false;
        }
    }
    return true;
}

class MyPrint {
    public:
    void operator()(int n) {
        cout<<n<<"  ";
    }
};

void _h_queen(int n, int row, vector<int> &col_placement, vector<string> &res) {
    cout<<"+_h_queen("<<n<<","<<row<<","<<"[  ";
    for_each(col_placement.begin(), col_placement.end(), MyPrint());
    cout<<"])"<<endl;
    if(row == n) {
        string line(n*n, '.');
        for(int row = 0; row < col_placement.size(); ++row) {
            line[row*n + col_placement[row]] = 'Q';
        }
        res.push_back(line);
    } else {
        for(int col = 0; col < n; ++col) {
            col_placement[row] = col;
            if(is_feasible(col_placement, row)) {
                _h_queen(n, row+1, col_placement, res);
            }
        }
    }
    cout<<"-_h_queen("<<n<<","<<row<<","<<"[  ";
    for_each(col_placement.begin(), col_placement.end(), MyPrint());
    cout<<"])"<<endl;
}

void h_queen(int n, vector<string> &Q) {
    Q.clear();
    vector<int> placement(n);
    _h_queen(n, 0, placement, Q);
}

int main(int argc, char ** argv) {
    int n = 4;
    if(argc > 1) {
        n = atoi(argv[1]);
    }
    cout<<"Solving n-queens for n = "<<n<<endl;
    vector<string> Q;
    h_queen(n, Q);
/*  int c = 1;
    for(vector<string>::iterator it = Q.begin(); it != Q.end(); ++it) {
        cout<<"Board config : "<<c<<endl;
        printBoard(n, *it);
        cout<<endl;
        c++;
    }
*/
    return 0;
}
