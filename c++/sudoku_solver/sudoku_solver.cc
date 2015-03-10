/*
 * =====================================================================================
 *
 *       Filename:  sudoku_solver.cc
 *
 *    Description:  Solve a given sudoku, you have to enter n and then some triplets 
 *    (i, j, val) format. Max number of triplets that are taken is n^4 and only once the
 *    triplet will be taken.
 *
 *        Version:  1.0
 *        Created:  03/06/2015 06:22:30 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include<stdint.h>
#include<vector>
#include<sstream>
#include<iostream>

using namespace std;

class Sudoku {
    private:
    int N;
    vector<vector<int> > sudoku;
    vector<vector<bool> > pp;
      
    public:
    Sudoku(int n): N(n<0 ? -n : n), sudoku(N*N, vector<int>(N*N, 0)), pp(N*N, vector<bool>(N*N, false)){}
    bool set(int i, int j, int val) {
        if((i < 0) || (i > N*N) || (j < 0) || (j > N*N) || (val <= 0) || (val > N*N)) {
            cout<<"wrong triplet with values ("<<i<<","<<j<<","<<val<<")"<<endl;
            return false;
        }
        if(pp[i][j]) {
            cout<<"Double value set"<<endl;
            return false;
        }
        sudoku[i][j] = val;
        if(!check()) {
            cout<<"The input is wrong and not satisfiable"<<endl;
            return false;
        }
        pp[i][j] = true;

        return true;
    }
    void print() {
        for(vector<vector<int> >::iterator r = sudoku.begin(); r != sudoku.end(); ++r) {
            for(vector<int>::iterator c = r->begin(); c != r->end(); ++c) {
                cout<<*c<<"  ";
            }
            cout<<endl;
        }
    }

    void solveMe() {
        if(solve()) {
            cout<<"Solved!!"<<endl;
        } else {
            cout<<"Cant solve"<<endl;
        }
    }

    private:
    bool check() const {
        return checkRows() && checkCols() && checkBoxes();
    }

    bool checkRows() const {
        for(vector<vector<int> >::const_iterator r = sudoku.begin(); r != sudoku.end(); ++r) {
            if(!checkRow(*r)) {
                return false;
            }
        }
        return true;
    }
    bool checkRow(vector<int> const& row) const {
        vector<bool> check(N*N + 1, false);
        for(vector<int>::const_iterator r = row.begin(); r != row.end(); ++r) {
            if((*r < 0) || (*r > N*N)) {
                return false;
            }
            if((*r > 0) && check[*r]) {
                return false;
            }
            check[*r] = true;
        }
        return true;
    }

    bool checkCols() const {
        for(int c = 0; c < N*N; ++c) {
            if(!checkCol(c)) {
                return false;
            }
        }
        return true;
    }
    bool checkCol(int colNo) const {
        vector<bool> check(N*N + 1, false);
        for(int r = 0; r < N*N; ++r) {
            if((sudoku[r][colNo] < 0) || (sudoku[r][colNo] > N*N)) {
                return false;
            }
            if((sudoku[r][colNo] > 0) && check[sudoku[r][colNo]]) {
                return false;
            }
            check[sudoku[r][colNo]] = true;
        }
        return true;
    }


    bool checkBoxes() const {
        for(int r = 0; r < N*N; r+=N) {
            for(int c = 0; c < N*N; c+=N) {
                if(!checkBox(r,c)) {
                    return false;
                }
            }
        }
        return true;
    }
    bool checkBox(int sr, int sc) const {
        vector<bool> check(N*N + 1, false);
        for(int r = sr; r < sr + N; ++r) {
            for(int c = sc; c < sc + N; ++c) {
                if((sudoku[r][c] < 0) || (sudoku[r][c] > N*N)) {
                    return false;
                }
                
                if((sudoku[r][c] > 0) && check[sudoku[r][c]]) {
                    return false;
                }
                check[sudoku[r][c]] = true;
            }
        }
        return true;
    }

    bool solve() {
        bool solveThis = false;
        int lastc = 0;
        for(int r = 0; r < N*N; ++r) {
            solveThis = false;
            for(int c = lastc; c < N*N; ++c) {
                solveThis = false;
                lastc = 0;
                for(int val = sudoku[r][c] >= 9 ? 1 : sudoku[r][c] + 1; (!pp[r][c]) && (val <= N*N); ++val) {
                    int oldVal = sudoku[r][c];
                    sudoku[r][c] = val;
                    if(!check()) {
                        sudoku[r][c] = oldVal;
                    } else {
                        solveThis = true;
                        break;
                    }
                }
                cout<<"solve = "<<solveThis<<" val= "<<sudoku[r][c];
                cout<<" for row "<<r<<" col = "<<c<<endl;
                if((c > 0) && (!solveThis) && (!pp[r][c])) {
                    lastc = 0;
                    bool rchanged = false;
                    while(r >= 0) {
                        while((c > 0) && ((pp[r][c-1]) || sudoku[r][c-1] >= 9)) {
                            c--;                          
                            if(!pp[r][c]) {
                                sudoku[r][c] = 0;
                            }
                        }
                        if(c<0) {
                            for(int cl = 0; cl < N*N; ++cl) {
                                sudoku[r][cl] = 0;
                            }
                            r--;
                            rchanged = true;
                            c = N*N - 1;
                            if((!pp[r][c]) && (sudoku[r][c] < 9)) {
                                break;
                            }
                        } else {
                            cout<<"here"<<endl;
                            if(c >= 1) {
                                c-=2;
                            }
                            break;
                        }
                    }
                    if(rchanged) {
                        cout<<"in change"<<endl;
                        lastc = c + 1;
                        r--;
                    }
                }
                
                cout<<"solve = "<<solveThis<<" val= "<<sudoku[r][c];
                cout<<" for row "<<r<<" col = "<<c<<endl;

            }
        }
        if(!solveThis) return false;
        return true;
    }
};


int main(int argc, char **argv) {
    int n = 0;
    if(argc < 3) {
        cout<<"syntax : "<<argv[0]<<" <n> [<i> <j> <val>, ...]"<<endl;
        return 0;
    }

    stringstream is1(argv[1], ios_base::in | ios_base::out | ios_base::ate);
    is1>>n;
    if((argc - 2)%3 != 0) {
        cout<<"Enter proper triplets"<<endl;
        return 0;
    }
    Sudoku S(n);
    for(int i = 2; i<argc; i+=3) {
        int si = 0;
        int sj = 0;
        int val = 0;
        is1.clear();
        is1.str(argv[i]);
        is1>>si;
        is1.clear();
        is1.str(argv[i+1]);
        is1>>sj;
        is1.clear();
        is1.str(argv[i+2]);
        is1>>val;
        if(!S.set(si, sj, val)) {
            cout<<"Error at arg position : "<<(i + 1)<<endl;
            return 0;
        }
    }

    S.print();
    S.solveMe();
    cout<<"After solving : "<<endl;
    S.print();
    return 0;
}
