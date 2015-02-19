#include<iostream>
#include<vector>

using namespace std;

double* get1dvector(int num) {
    double *ret = new double[num];
    for(int i = 0; i < num; ++i) {
        ret[i] = i + 1;
    }
    return ret;
}

void get2dfrom1d(vector<double*> &arr2D, double *vect, int row, int col) {
    arr2D.resize(row, NULL);
    arr2D[0] = vect;
    for(int i = 1; i < row; ++i) {
        arr2D[i] = arr2D[i -1] + col;
    }
}

double** get2dfrom1d(double *vect, int row, int col) {
    double **arr2D = new double*[row];
    arr2D[0] = vect;
    for(int i = 1; i < row; ++i) {
        arr2D[i] = arr2D[i -1] + col;
    }
    return arr2D;
}

int main(void) {
    double *junk = get1dvector(24);
    double** A = get2dfrom1d(junk, 3, 8);
    vector<double*> arr2D;
    get2dfrom1d(arr2D, junk, 3, 8);
    for(int r = 0; r < 3; ++r) {
        for(int c = 0; c < 8; ++c) {
            cout<<arr2D[r][c]<<" ";
        }
        cout<<endl;
    }
    for(int r = 0; r < 3; ++r) {
        for(int c = 0; c < 8; ++c) {
            cout<<A[r][c]<<" ";
        }
        cout<<endl;
    }
    delete [] A;
    cout<<"Only the junk\n";
    for(int i = 0; i < 24; i++) {
        cout<<junk[i]<<" ";
    }
    cout<<endl;
    delete [] junk;
    return 0;
}
