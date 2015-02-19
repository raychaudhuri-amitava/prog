// Copyright (c) 2013 Elements of Programming Interviews. All rights reserved.

#include <cassert>
#include <iostream>
#include <numeric>
#include <vector>

using namespace std;

void printTable(const vector<vector<long>> &table) {
    cout<<"========================================================="<<endl;
    for(int i = 0; i < table.size(); i++) {        
        for(int j = 0; j < table[i].size(); j++) {
            cout<<table[i][j]<<"  ";
        }
        cout<<endl;
    }
    cout<<"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++"<<endl;
}

// @include
// V contains the number of votes for each state.
// This function returns the total number of ways to tie.
long long ties_election(const vector<int>& V) {
  int total_votes = accumulate(V.cbegin(), V.cend(), 0);

  cout<<"Total states : "<<V.size()<<"  Total votes : "<<total_votes<<endl;

  // No way to tie if the total number of votes is odd.
  if (total_votes & 1) {
    return 0;
  }

  vector<long long> v1(total_votes + 1, 0);
  vector<long long> v2(total_votes + 1, 0);

  v1[0] = 1;

  for (int i = 0; i < V.size(); ++i) {
    for (int j = 0; j <= total_votes; ++j) {
        v2[j] = v1[j] + (j >= V[i] ? v1[j - V[i]] : 0);
    }
    v1.swap(v2);
  }
  return v1[total_votes >> 1];
}

long ties_election_orig(const vector<int>& V) {
  int total_votes = accumulate(V.cbegin(), V.cend(), 0);

  // No way to tie if the total number of votes is odd.
  if (total_votes & 1) {
    return 0;
  }

  vector<vector<long>> table(V.size() + 1, vector<long>(total_votes + 1, 0));
  table[0][0] = 1;  // base condition: 1 way to reach 0.
  for (int i = 0; i < V.size(); ++i) {
    for (int j = 0; j <= total_votes; ++j) {
      table[i + 1][j] = table[i][j] + (j >= V[i] ? table[i][j - V[i]] : 0);
    }
  }
  return table[V.size()][total_votes >> 1];
}


int main(int argc, char* argv[]) {
  vector<int> votes = {9,  3, 11, 6,  55, 9,  7,  3,  29, 16, 4, 4,  20,
                       11, 6, 6,  8,  8,  4,  10, 11, 16, 10, 6, 10, 3,
                       5,  6, 4,  14, 5,  29, 15, 3,  18, 7,  7, 20, 4,
                       9,  3, 11, 38, 6,  3,  13, 12, 5,  10, 3, 3};

//  vector<int> votes = {4, 5, 2, 7};


  cout << "Total ties : " <<  ties_election(votes) << endl;
  cout << "Total ties orig : " <<  ties_election_orig(votes) << endl;
  return 0;
}

