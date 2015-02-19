#include<iostream>

#define max(a, b) ((a) > (b)? (a) : (b))
#define abs(a) ((a) >= 0? (a) : (-(a)))

using namespace std;

int main(void) {
    /*  
    int A[] = {1,2,3,4,5,6,7,8};
    int B[] = {9,10,11,12,13};
    int C[] = {14,15,16,17,18,19,20,21,22,23,24};
*/

    int A[] = {7,25,38,53,62,74,76,99};
    int B[] = {9,27,30,47,59};
    int C[] = {9,11,12,34,38,47,49,51,83,93,97,98};

    int I = -1;
    int J = -1;
    int K = -1;
    int max_dist = -1;
    for(int i = 0; i < sizeof(A) / sizeof(int); i++) {
        for(int j = 0; j < sizeof(B) / sizeof(int); j++) {
            for(int k = 0; k < sizeof(C) / sizeof(int); k++) {
                if(max_dist < max(max(abs(A[i] - B[j]), abs(A[i] - C[k])), abs(B[j] - C[k]))) {
                    max_dist = max(max(abs(A[i] - B[j]), abs(A[i] - C[k])), abs(B[j] - C[k]));
                    I = i;
                    J = j;
                    K = k;
                }
                cout<<"i="<<i<<",j="<<j<<",k="<<k<<",mx_dist="<<max(max(abs(A[i] - B[j]), abs(A[i] - C[k])), abs(B[j] - C[k]))<<endl;

            }
        }
    }

    cout<<"i="<<I<<",j="<<J<<",k="<<K<<",mx_dist="<<max_dist<<endl;
    return 0;
}



