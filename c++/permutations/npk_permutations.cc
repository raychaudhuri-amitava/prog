#include<iostream>
#include<vector>
#include<ctime>
#include<cstdlib>
#include<algorithm>

using namespace std;

void permute(vector<char> &subset, size_t k) {
    size_t n = subset.size();
    if(k >= n) return;
    srand(time(NULL));
    for(size_t i = 0; i < k; i++) {
        int r = rand()%(n-i);
        std::swap(subset[r], subset[n-(k+1)]);
    }
}

int main(void) {
    size_t n = 0;
    size_t k = 0;
    cout<<"Enter n: ";
    cin>>n;
    vector<char> subsets(n);
    for(size_t i = 0; i < n; i++) {
        subsets[i] = static_cast<char>(static_cast<size_t>('A') + i);
    }
    cout<<"Enter k: ";
    cin>>k;

    permute(subsets, k);

    cout<<subsets[0];
    for(size_t i = 1; i < n; i++) {
        cout<<","<<subsets[i];
    }
    cout<<endl;
    return 0;
}
