#include<iostream>
#include<sstream>
#include<map>
#include<utility>

using namespace std;

struct node {
    int val;
    size_t less_subtree_size;
    size_t low_count;
    node *left;
    node *right;
    node(int v) : val(v), less_subtree_size(0), low_count(0), left(NULL), right(NULL) {}
};

class LowCalculator {
  public:
    void calc(vector<in

int main(void) {
    map<node, size_t> ndmp;
    int a[] = {27,1,2,6,8,3,19,24,16,18,6};
    vector<int> arr(a, a + sizeof(a) / sizeof(int));

    for(size_t i = arr.size() - 1; i != 0 ; i--) {
        ndmp.insert(std::pair<node, size_t>(arr[i], 0));
    }

    for(map<node, size_t>::iterator it = ndmp.begin(); it != ndmp.end(); ++it) {
        cout<<


