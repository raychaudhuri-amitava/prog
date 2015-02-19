#include<iostream>
#include<vector>
#include<stack>
#include<ctime>
#include<cstdlib>
#include<stdint.h>

using namespace std;

int max_area(vector<int> const & A, int &s, int &e, int &ht) {
    stack<int> frontier;

    vector<int> left(A.size(), 0);

    for(int i = 0; i < A.size(); ++i) {
        if(!frontier.empty() && A[frontier.top()] >= A[i]) {
            frontier.pop();
        }

        left[i] = frontier.empty() ? -1 : frontier.top();
        frontier.push(i);
    }

    while(!frontier.empty()) frontier.pop();

    vector<int> right(A.size(), 0);

    for(int i = A.size(); i > 0; --i) {
        if(!frontier.empty() && A[frontier.top()] >= A[i-1]) {
            frontier.pop();
        }
        right[i-1] = frontier.empty() ? A.size() : frontier.top();
        frontier.push(i - 1);
    }

    int max_area = 0;
    s = -1;
    e = -1;
    ht = -1;
    for(int i = 0; i < A.size(); ++i) {
        if(max_area < (right[i] - left[i] - 1)*A[i] ){
            max_area = (right[i] - left[i] - 1) * A[i];
            s = left[i] + 1;
            e = right[i] - 1;
            ht = A[i];
        }
    }
    return max_area;
}

int main(void) {
    vector<int> heights(10, 0);

    srand(time(NULL));
    for(int i = 0; i < heights.size(); ++i) {
        heights[i] = rand()%(2*heights.size());
    }

    for(vector<int>::iterator it=heights.begin(); it != heights.end(); ++it) {
        cout<<*it<<"    ";
    }

    int k = 0;
    int l = 0;
    int ht = 0;
    cout<<endl<<"Max area = "<<max_area(heights, k, l, ht)<<endl;
    cout<<"start idx = "<<k<<"  end idx = "<<l<<" height = "<<ht<<endl;
    return 0;
}


