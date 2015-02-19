//  Boost shared_ptr_example.cpp  --------------------------------------------//

//  Copyright Beman Dawes 2001.  Distributed under the Boost
//  Software License, Version 1.0. (See accompanying file
//  LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)


//  See http://www.boost.org/libs/smart_ptr for documentation.

//  Revision History
//  21 May 01  Initial complete version (Beman Dawes)

//  The original code for this example appeared in the shared_ptr documentation.
//  Ray Gallimore pointed out that foo_set was missing a Compare template
//  argument, so would not work as intended.  At that point the code was
//  turned into an actual .cpp file so it could be compiled and tested.

#include <vector>
#include <set>
#include <iostream>
#include <algorithm>
#include <boost/shared_ptr.hpp>

//  The application will produce a series of
//  objects of type Foo which later must be
//  accessed both by occurrence (std::vector)
//  and by ordering relationship (std::set).

struct Foo
{ 
  Foo():x(0){}
  Foo( int _x ) : x(_x) {}
  ~Foo() { std::cout << "Destructing a Foo with x=" << x << "\n"; }
  int x;
  void setx(int x)
  {
	  std::cout<<"setx is setting "<<x<<"\n";
	  this->x = x;
  }
  /* ... */
};

typedef boost::shared_ptr<Foo> FooPtr;
typedef boost::shared_ptr<FooPtr> FooPtrPtr;
/*
struct FooPtrOps
{
  bool operator()( const FooPtr & a, const FooPtr & b )
    { return a->x > b->x; }
  void operator()( const FooPtr & a )
    { std::cout << a->x << "\n"; }
};
*/
int main()
{
  FooPtrPtr foo_ptr(new FooPtr[10]);
  //Foo * foo=new Foo[10];
  int i=0;
  FooPtr * a=foo_ptr.get();
  for(i=0;i<10;i++)
	  a[i]->setx(i);

  //delete [] foo;


//  Expected output:
//
//   foo_vector:
//   2
//   1
//   3
//   2
//   
//   foo_set:
//   3
//   2
//   1
//
//   Destructing a Foo with x=2
//   Destructing a Foo with x=1
//   Destructing a Foo with x=3
//   Destructing a Foo with x=2
   
  return 0;
}

