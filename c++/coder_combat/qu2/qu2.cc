#include<iostream>
#include<algorithm>
#include<set>

int get_sum3(int*  A, int len, int S, int curr, std::set<std::multiset<int> > &memo) {
    int sum = memo.size();    
    for(int k = 0; k < len; ++k) {
        int i = 0;
        int j = len - 1;
        while((i < len) && (j >= 0)) {
            if((A[i] + A[j])==(S-A[k])) {
                std::multiset<int> L;
                L.insert(curr);
                L.insert(A[i]);
                L.insert(A[j]);
                L.insert(A[k]);
                memo.insert(L);
                i++; j--;
            } else if((A[i] + A[j])<(S-A[k])) {
                i++;
            } else if((A[i] + A[j])>(S-A[k])) {
                j--;
            }
        }
    }
    return memo.size() - sum;
}

int get_sum4(int *A, int len, int S) {
    int sum = 0;
    std::set<std::multiset<int> > memo;
    std::sort(A, A + len);
    for(int i = 0; i < len; i++) {
        sum += get_sum3(A, len, S - A[i], A[i], memo);
    }
    return sum;
}

int main(void) {
    int A[]={1, 2};
    int S = 5;
    std::cout<<"case : "<<get_sum4(A, sizeof(A) / sizeof(int), S)<<std::endl;

    return 0;
}


