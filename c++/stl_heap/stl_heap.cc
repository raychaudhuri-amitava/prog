#include<algorithm>
#include<iostream>
#include<cstdlib>
#include<vector>

using namespace std;

template<class T>
class heap {

    typedef vector<T> heap_type;
    heap_type hp;
    public:
        heap():hp() {
            make_heap(hp.begin(), hp.end());
        }

        void heapify(void) {
            make_heap(hp.begin(), hp.end());
        }

        void push(T n) {
            hp.push_back(n);
            push_heap(hp.begin(), hp.end());
        }

        T pop(void) {
            pop_heap(hp.begin(), hp.end());
            T r = hp.back();
            hp.pop_back();
            return r;
        }

        void sort(void) {
           sort_heap(hp.begin(), hp.end());
        }

        T top(void) {
            return hp[0];
        }

        void print(void) {
            if(hp.empty()) return;
            typename heap_type::iterator it = hp.begin();
            cout<<*it;
            ++it;
            for(; it != hp.end(); ++it) {
                cout<<","<<*it;
            }
            cout<<endl;
        }

        bool empty() {
            return hp.empty();
        }
   
        size_t size() {
            return hp.size();
        }
};


int main(void) {
    heap<int> hp;
    int n = 20;
    cout<<"Inserting elements:\n";
    while(n!=0) {
        hp.push(n);
        hp.print();
        n--;
    }

    cout<<"Sorting elements:\n";
    hp.sort(); 
    hp.print();
    cout<<"Heapifying elements:\n";
    hp.heapify(); 
    hp.print();
    
    cout<<"Deleting elements:\n";
    while(!hp.empty()) {
        hp.pop();
        hp.print();
    }    
    return 0;
}

