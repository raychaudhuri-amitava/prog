// Copyright (c) 2013 Elements of Programming Interviews. All rights reserved.

#include <algorithm>
#include <iostream>
#include <string>
#include <unordered_map>
#include <vector>

using namespace std;

// @include
struct Person {
  int key;
  string name;

  void print(){cout<<"("<<key<<","<<name<<")";}
};

void counting_sort(vector<Person>* people) {
  unordered_map<int, int> key_to_count;
  for (const Person& p : *people) {
    ++key_to_count[p.key];
  }

  cout<<"Details of key_to_count unordered_map is as below: "<<endl;
  for (unsigned i=0; i<key_to_count.bucket_count(); ++i) {
      cout << "bucket #" << i << " contains: ";
      for (auto it = key_to_count.begin(i); it!=key_to_count.end(i); ++it) {
          cout << "[" << it->first << ":" << it->second << "] ";
      }
      cout << "\n";
  }


  unordered_map<int, int> key_to_offset;
  int offset = 0;
  for (const auto& p : key_to_count) {
    key_to_offset[p.first] = offset;
    offset += p.second;
  }

  cout<<"Details of key_to_offset unordered_map is as below: "<<endl;
  for (unsigned i=0; i<key_to_offset.bucket_count(); ++i) {
      cout << "bucket #" << i << " contains: ";
      for (auto it = key_to_offset.begin(i); it!=key_to_offset.end(i); ++it) {
          cout << "[" << it->first << ":" << it->second << "] ";
      }
      cout << "\n";
  }

  while (key_to_offset.size()) {
    auto from = key_to_offset.begin();
    auto to = key_to_offset.find((*people)[from->second].key);
    swap((*people)[from->second], (*people)[to->second]);
    // Use key_to_count to see when we are finished with a particular key.
    if (--key_to_count[to->first]) {
      ++to->second;
    } else {
      key_to_offset.erase(to);
    }
  }
}

int main(int argc, char* argv[]) {
    vector<Person> people(10);

    people[0].key = 110;
    people[0].name = "aaaaa";
    people[1].key = 103;
    people[1].name = "bbbbb";
    people[2].key = 103;
    people[2].name = "ccccc";
    people[3].key = 101;
    people[3].name = "ddddd";
    people[4].key = 101;
    people[4].name = "eeeee";
    people[5].key = 105;
    people[5].name = "fffff";
    people[6].key = 102;
    people[6].name = "ggggg";
    people[7].key = 104;
    people[7].name = "hhhhh";
    people[8].key = 101;
    people[8].name = "iiiii";
    people[9].key = 104;
    people[9].name = "jjjjj";

    cout<<"Array before sorting: ";
    for(int i = 0; i < people.size(); ++i) {
       people[i].print();
       cout<<",";
    }
    cout<<endl;
    counting_sort(&people);
    cout<<"Array after sorting: ";
    for(int i = 0; i < people.size(); ++i) {
       people[i].print();
       cout<<",";
    }
    cout<<endl;

  return 0;
}
