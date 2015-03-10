#include <iostream>
#include<stdlib.h>
#include <boost/shared_ptr.hpp>
#include <vector>
#include <set>
#include <iostream>
#include <algorithm>


using namespace std;
using namespace boost;

class aclass
{
	private:
	int x;
	public:
	aclass()
	{
		x=0;
		cout<<"In constructor"<<endl;
	}
	aclass(int y)
	{
		x=y;
		cout<<"In constructor x = "<<x<<endl;
	}
        virtual ~aclass()
	{
		cout<<"In destructor x = "<<x<<endl;
	}
	virtual void setx(int x)
	{
		this->x=x;
		cout<<"in setx with x = "<<this->x<<endl;
	}
};


class bclass : aclass
{
	private:
	int y;
	public:
	bclass() : aclass(0),y(0)
	{
		cout<<"bclass: In constructor"<<endl;
	}
	bclass(int x,int z) : aclass(z),y(x)
	{
		cout<<"bclass: In constructor y = "<<y<<endl;
	}
	~bclass()
	{
		cout<<"bclass: In destructor y = "<<y<<endl;
	}
	void setx(int y)
	{
		this->y=y;
		cout<<"bclass: in setx with y = "<<this->y<<endl;
	}
	
};


class cclass : aclass
{
	private:
	int y;
	public:
	cclass() : aclass(0),y(0)
	{
		cout<<"cclass: In constructor"<<endl;
	}
	cclass(int x,int z) : aclass(z),y(x)
	{
		cout<<"cclass: In constructor y = "<<y<<endl;
	}
	~cclass()
	{
		cout<<"cclass: In destructor y = "<<y<<endl;
	}
	void setx(int y)
	{
		this->y=y;
		cout<<"cclass: in setx with y = "<<this->y<<endl;
	}
	
};


typedef shared_ptr<aclass> aclass_sPtr;
typedef weak_ptr<aclass> aclassPtr;
typedef vector<aclassPtr> pool_t;

int main()
{
  const int size = 10;
//  typedef boost::shared_array<aclass> aclassArray_t;
  pool_t aclassVect; 

  int i=0;
  for(i=0;i<size;i++)
  {
	  int a=rand()%2;
	  
	  if(a==0)
	  {
		  cout<<"a = "<<a<<" so its bclass at i = "<<i<<endl;
		  aclass_sPtr stempb((aclass *)(new bclass()));
		  aclassPtr tempb(stempb);
		  aclassVect.push_back(tempb);
	  }
	  else
	  {
		  cout<<"a = "<<a<<" so its cclass at i = "<<i<<endl;
		  aclass_sPtr stempc((aclass *)(new cclass()));
		  aclassPtr tempc(stempc);
		  aclassVect.push_back(tempc);
	  }
  }
  int j=0;
  for(pool_t::iterator r=aclassVect.begin();r!=aclassVect.end();r++ )
  {
	  if(aclass_sPtr s=(*r).lock())
	  {
	     s.get()->setx(j);
	  }
	  j++;
  }
  for(i=0;i<10;i++)
  {
	  if(aclass_sPtr s=aclassVect[i].lock())
	  {
		  s.setx(i);
	  }
  }
  //Cool, no need to call delete[] yourself
}

