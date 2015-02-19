#include<iostream>

using namespace std;

int get_sum(vector<int> const&v) {
    int sum = 0;
    for(vector<int>::const_iterator it = v.begin(); it != v.end(); ++it) {
        sum+=(*it);
    }
    return sum;
}

struct subset_marker {
    bool is_sum;
    ssize_t offset;
    subset_marker() : is_sum(false), offset(-1){}
};

void subset_sum(vector<int> const&v, vector<int> &v1, vector<int> &v2) {
   int sum = get_sum(v);

   vector<vector<subset_marker> > P(v.size(), vector<subset_marker>(sum + 1));

   for(ssize_t i = 0; i < v.size();  ++i) {
       for(ssize_t j = 0; j < sum+1; ++j) {
            if(j == v[i]) {
                (P[i][j]).is_sum = true;
            } else if((P[i-1][j]).is_sum || (((j - v[i]) >= 0) && (P[i-1][j - v[i]]))) {
                (P[i][j]).is_sum = true;
            }
       }
   }
    
}
