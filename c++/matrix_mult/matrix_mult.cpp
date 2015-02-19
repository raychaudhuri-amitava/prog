#include<iostream>
#include<vector>

using namespace std;

int matrix_mult(vector<int> const& p, vector<vector<size_t> > &s) {
    int n = p.size() - 1;
    s.clear();
    s.resize(n, vector<size_t>(n, 0));
    vector<vector<int> > m(n, vector<int>(n, 0));

    for(size_t diffij = 1; diffij < n; diffij++) {
        for(size_t i = 0; i < n - diffij; i++) {
            size_t j = i + diffij; // always i < j case.
            size_t k = i;
            m[i][j] =  m[i][k] + m[k+1][j] + p[i]*p[k+1]*p[j+1];
            s[i][j] = k;
            k++;
            for(;k < j; k++) {
                int q = m[i][k] + m[k+1][j] + p[i]*p[k+1]*p[j+1];
                if(q < m[i][j]) {
                    m[i][j] = q;
                    s[i][j] = k;
                }
            }
        }
    }

    return m[0][n-1];

}


void print_matrix(vector<vector<size_t> > const& s, size_t i, size_t j) {
    if(i == j) {
        cout<<"A"<<i;
    } else {
        cout<<"(";
        print_matrix(s, i, s[i][j]);
        print_matrix(s, s[i][j] + 1, j);
        cout<<")";
    }
}

int main(void) {
    int p[] = {30,35,15,5,10,20,25,60,6};

    vector<int> pvec(p, p+(sizeof(p)/sizeof(int)));
    vector<vector<size_t> >s;
 
    int min_mults = matrix_mult(pvec, s);
    cout<<"min no. of multiplications = "<<min_mults<<endl;

    print_matrix(s, 0, pvec.size() - 2);

    cout<<endl;

    return 0;
}

