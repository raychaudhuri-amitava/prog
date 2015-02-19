#include<iostream>
#include<algorithm>
#include<vector>

using namespace std;

struct Pos {
    vector<int>::const_iterator left;
    vector<int>::const_iterator right;
};

bool findAll(vector<int> const& sortedArr, int X, Pos &pos) {
    vector<int>::const_iterator left = lower_bound(sortedArr.begin(), sortedArr.end(), X);
    if(left == sortedArr.end() || *left != X) {
        return false;
    } 

    pos.left = left;

    vector<int>::const_iterator right = upper_bound(left, sortedArr.end(), X);

    pos.right = right;

    return true;
}

int main(void) {

    int myints[] = {2,3,4,4,4,4,5,5,5,5,6,6,6,6,6,6,6,6,6,7,7,7,7,7,7,7};
    vector<int> v(myints, myints + sizeof(myints) / sizeof(int));

    Pos pos;
    if(findAll(v, 2, pos)) {
        for(vector<int>::const_iterator start = pos.left; start != pos.right; ++start) {
            cout<<*start<<"  ";
        }
    }
    cout<<endl;
    if(findAll(v, 3, pos)) {
        for(vector<int>::const_iterator start = pos.left; start != pos.right; ++start) {
            cout<<*start<<"  ";
        }
    }
    cout<<endl;
    if(findAll(v, 4, pos)) {
        for(vector<int>::const_iterator start = pos.left; start != pos.right; ++start) {
            cout<<*start<<"  ";
        }
    }
    cout<<endl;
    if(findAll(v, 5, pos)) {
        for(vector<int>::const_iterator start = pos.left; start != pos.right; ++start) {
            cout<<*start<<"  ";
        }
    }
    cout<<endl;
    if(findAll(v, 6, pos)) {
        for(vector<int>::const_iterator start = pos.left; start != pos.right; ++start) {
            cout<<*start<<"  ";
        }
    }
    cout<<endl;
    if(findAll(v, 7, pos)) {
        for(vector<int>::const_iterator start = pos.left; start != pos.right; ++start) {
            cout<<*start<<"  ";
        }
    }
    cout<<endl;
 
    return 0;
}



