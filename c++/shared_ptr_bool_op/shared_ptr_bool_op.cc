#include <memory>
#include <iostream>
#include<boost/shared_ptr.hpp>

using namespace boost;
using std::cout;

int main()
  { // demonstrate operator boolean-type()
  shared_ptr<int> sp;
  if (sp)
    cout << "not empty\n";
  else
    cout << "empty\n";
  cout << (sp ? "not " : "") << "empty\n";
  return 0;
  }

