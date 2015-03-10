#include<stdint.h>

#include<iostream>
#include<vector>
#include<set>

using namespace std;

template<typename T, typename P>
class MISC{
	private:
		vector<T> vec1;
		vector<T> vec2;

		set<T> st1;
		set<T> st2;

		vector<P> *ptr;
	private:
		template<vector<T>* vc>
			void addVecVals(){
				for(T i=0; i<10;i++)
				{
					vc->push_back(i);
				}
			}

		template<set<T>* st>
			void addStVals(){
				for(T i=0; i<10;i++)
				{
					st->insert(i);
				}
			}

		template<vector<T>* vc>
			void printVecVals(){
				for(typename vector<T>::iterator i=vc->begin(), j=vc->end(); i!=j;++i)
				{
					cout<<"val = "<<*i<<" , ";
				}
			}

		template<set<T>* st>
			void printStVals(){
				for(typename set<T>::iterator i=st->begin(), j=st->end(); i!=j;++i)
				{
					cout<<"val = "<<*i<<" , ";
				}
			}
	public:
		void add(int vecNum) {
			switch(vecNum) {
				case 0: //vecs.
					addVecVals<&vec1>();
					break;
				case 1:
					addVecVals<&vec2>();
					break;
				case 2: //sets
					addStVals<&st1>();
					break;
				case 3:
					addStVals<&st2>();
					break;
				default: break;
			}
		}
		void print(int vecNum) {
			switch(vecNum) {
				case 0: //vecs.
					printVecVals<&vec1>();
					break;
				case 1:
					printVecVals<&vec2>();
					break;
				case 2: //sets
					printStVals<&st1>();
					break;
				case 3:
					printStVals<&st2>();
					break;
				default: break;
			}
		}
};

int main(void) {
	MISC<uint64_t, double> m;
	m.add(0);
	m.add(1);
	m.add(2);
	m.add(3);
	return 0;
}
