#include<iostream>
#include<vector>

using namespace std;
void getSubsetsR(vector<char> &subset, vector<char> &initial) {
    if(initial.empty()) {
        if(subset.empty()) {
            cout<<"phi"<<endl;
        } else {
            vector<char>::reverse_iterator it = subset.rbegin();
            cout<<*it;
            ++it;
            for(; it != subset.rend(); ++it) {
                cout<<" , "<<*it;
            }
            cout<<endl;
        }
        return;
    }

    int i = initial.back();
    initial.pop_back();
    getSubsetsR(subset, initial);
    subset.push_back(i);
    getSubsetsR(subset,initial);
    initial.push_back(i);
    subset.pop_back();
}

void getSubsets(vector<vector<char> > &subsets, vector<char> const& inp_set) {
    size_t max = 1 << inp_set.size();
    for(size_t i = 0; i < max; ++i) {
        size_t k = i;
        size_t index = 0;
        vector<char> new_subsets;
        while(k != 0) {
            if((k & 0x01) == 0x01) {
                new_subsets.push_back(inp_set[index]);
            }
            k>>=1;
            index++;
        }
        subsets.push_back(new_subsets);
    }
}


void printSubsets(vector<vector<char> > const& subsets) {
    for(vector<vector<char> >::const_iterator it1 = subsets.begin(); it1 != subsets.end(); ++it1) {
        vector<char>::const_iterator it2 = it1->begin();
        if(it2 == it1->end()) {
            cout<<"phi";
        } else {
            cout<<*it2;
            ++it2;
        }
        for(; it2 != it1->end(); ++it2) {
            cout<<" , "<<*it2;
        }
        cout<<endl;
    }
}

int main(void) {
    cout<<"Enter the number of subsets : ";
    size_t n = 0;
    cin >> n;
    vector<char> inp_set;
    vector<vector<char> > subsets;
    if(n >= 26) return -1;
    char c = 'A';
    for(size_t i = 0; i < n; ++i) {
        inp_set.push_back(c);
        c++;
    }
    cout<<endl;

    getSubsets(subsets, inp_set);
    printSubsets(subsets);
    vector<char> sub;
    getSubsetsR(sub, inp_set);
    return 0;
}

