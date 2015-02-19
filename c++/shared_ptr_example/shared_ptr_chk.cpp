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
		virtual void printme()
		{
			cout<<"x = "<<this->x<<endl;
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
		void printme()
		{
			cout<<"bclass: y = "<<this->y<<endl;
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
		void printme()
		{
			cout<<"cclass: y = "<<this->y<<endl;
		}

};

typedef shared_ptr<aclass> aclassPtr;
typedef vector<aclassPtr> pool_t;

pool_t producerSharedPtr()
{
	cout<<"Entering function : producerSharedPtr()"<<endl;
	const int size = 4;
	//  typedef boost::shared_array<aclass> aclassArray_t;
	static pool_t aclassVect; 

	int i=0;
	for(i=0;i<size;i++)
	{
		int a=rand()%2;

		if(a==0)
		{
			cout<<"a = "<<a<<" so its bclass at i = "<<i<<endl;
			aclassPtr tempb((aclass *)(new bclass()));
			aclassVect.push_back(tempb);
		}
		else
		{
			cout<<"a = "<<a<<" so its cclass at i = "<<i<<endl;
			aclassPtr tempc((aclass *)(new cclass()));
			aclassVect.push_back(tempc);
		}
	}
	int j=0;
	for(pool_t::iterator r=aclassVect.begin();r!=aclassVect.end();r++ )
	{
		//r->get()->setx(j);
		(*r)->setx(j);
		j++;
	}
	for(i=0;i<size;i++)
	{
		aclassVect[i]->setx(i);
	}
	//Do stuff with myArray
	//Cool, no need to call delete[] yourself
	cout<<"Exiting function : producerSharedPtr()"<<endl;
	return aclassVect; 
}


aclassPtr producerPtr()
{
	cout<<"Entering function : producerPtr()"<<endl;
	const int size = 4;
	//  typedef boost::shared_array<aclass> aclassArray_t;
	static pool_t aclassVect; 

	int i=0;
	for(i=0;i<size;i++)
	{
		int a=rand()%2;

		if(a==0)
		{
			cout<<"a = "<<a<<" so its bclass at i = "<<i<<endl;
			aclassPtr tempb((aclass *)(new bclass()));
			aclassVect.push_back(tempb);
		}
		else
		{
			cout<<"a = "<<a<<" so its cclass at i = "<<i<<endl;
			aclassPtr tempc((aclass *)(new cclass()));
			aclassVect.push_back(tempc);
		}
	}
	int j=0;
	for(pool_t::iterator r=aclassVect.begin();r!=aclassVect.end();r++ )
	{
		//r->get()->setx(j);
		(*r)->setx(j);
		j++;
	}
	for(i=0;i<size;i++)
	{
		aclassVect[i]->setx(i);
	}
	//Do stuff with myArray
	//Cool, no need to call delete[] yourself
	cout<<"Exiting function : producerPtr()"<<endl;
	return aclassVect[2]; 
}


int main(void)
{
	cout<<"In main before calling producerSharedPtr()"<<endl;
	pool_t in_main=producerSharedPtr();
	cout<<"In main after calling producerSharedPtr()"<<endl;

	cout<<"Printing values now: "<<endl;
	for(pool_t::iterator r=in_main.begin();r!=in_main.end();r++ )
	{
		(*r)->printme();
	}

	cout<<"In main before calling producerSharedPtr() again"<<endl;
	pool_t in_main1=producerSharedPtr();
	cout<<"In main after calling producerSharedPtr() again"<<endl;

	cout<<"Printing values now: "<<endl;
	for(pool_t::iterator r=in_main1.begin();r!=in_main1.end();r++ )
	{
		(*r)->printme();
	}

	cout<<"In main before calling producerPtr()"<<endl;
	aclassPtr in_main_ptr=producerPtr();
	cout<<"In main after calling producerPtr()"<<endl;
	cout<<"The value = "<<endl;
	in_main_ptr->printme();
	return 0;
}
