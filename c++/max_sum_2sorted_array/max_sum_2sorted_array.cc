#include<stdint.h>
#include<iostream>
#include<vector>
#include<utility>
#include<algorithm>

using namespace std;

vector<pair<int,int> > getAllPairs(const vector<int>& A, const vector<int>& B, int k) {
    vector<pair<int, int> > ret;
    vector<int>::const_iterator it1 = B.begin();
    vector<int>::const_iterator it2 = B.end();
    for(vector<int>::const_iterator it = A.begin(); it != A.end(); ++it) {
        vector<int>::const_iterator itn = std::lower_bound(it1, it2, (k - (*it)));
        if(itn != B.end()) {
            if(*itn == k - *it) {
                ret.push_back(pair<int,int>(*it,*itn));
                it2 = itn;                
            }
        }
    }
    return ret; 
} 

class AA{
public:
~AA()const{}
private:
};
class BB:AA{
};

int main(void) {
const int k = 19;
int a[] = {2,5,7,9,11,32};
vector<int> A(a,a + sizeof(a)/sizeof(int));
int b[] = {6,7,8,10,20};
vector<int> B(b,b + sizeof(b)/sizeof(int));
vector<pair<int,int> > prs = getAllPairs(A,B,k);
AA aa;
//BB bb;

for(vector<pair<int,int> >::iterator it = prs.begin(); it!= prs.end(); ++it) {
cout<<it->first<<" , "<<it->second<<endl;
}
return 0;
}
