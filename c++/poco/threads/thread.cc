/*
 * =====================================================================================
 *
 *       Filename:  thread.cc
 *
 *    Description:  poco threads
 *
 *        Version:  1.0
 *        Created:  Monday 29 December 2014 09:55:41  IST
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include<Poco/Runnable.h>
#include<Poco/Runnable.h>
#include<Poco/Thread.h>
#include<iostream>

using namespace Poco;
using namespace std;

class MyWorker : public Runnable
{
public:
  MyWorker(int k = -1) : Runnable(), n(k) {}

  virtual void run()
  {
    for (int i = 1; i <= 10; i++)
    {
      for (int j = 0; j < 1000000; j++) ; // do nothing
      cout << n << " ";
    }
  }

private:
  int n;
};

int main()
{
  const int N = 5;

  MyWorker w[N];
  for (int i = 0; i < N; i++) w[i] = MyWorker(i);

  Thread t[N];
  for (int i = 0; i < N; i++) t[i].start(w[i]);
  for (int i = 0; i < N; i++) t[i].join();  // wait for all threads to end

  cout << endl << "Threads joined" << endl;

  return 0;
}

