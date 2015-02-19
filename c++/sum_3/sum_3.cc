#include<iostream>
#include<algorithm>
#include<vector>

using namespace std;

void print_sum3(vector<int> A, int S) {
    sort(A.begin(), A.end());

    for(int k = 0; k < A.size(); ++k) {
        int i = 0;
        int j = A.size() - 1;

        while((i < A.size()) && (j >= 0)) {
            if((A[i] + A[j])==(S-A[k])) {
                if((i!=j) && (i!=k) && (j!=k)) {
                    cout<<A[i]<<" , "<<A[j]<<" , "<<A[k]<<endl;
                    cout<<i<<" , "<<j<<" , "<<k<<endl;
                }
                i++; j--;
            } else if((A[i] + A[j])<(S-A[k])) {
                i++;
            } else if((A[i] + A[j])>(S-A[k])) {
                j--;
            }
        }
    }
}

int main(void) {
    int A[]={20, 10, -30, 60, 25, -100, 40, 32, 0, 98, -32};
    vector<int> B(A, A + (sizeof(A) / sizeof(int)));

    for(int i=0; i<B.size(); ++i) {
        cout<<B[i]<<" , ";
    }
    cout<<"\b\b\b"<<endl;

    print_sum3(B, 10);
    return 0;
}


