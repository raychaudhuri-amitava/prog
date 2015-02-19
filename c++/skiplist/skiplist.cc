/* Implemented by Amitava and then tested for all conditions. *
 * this is indeed very interesting for me to think and write complete
 * code for skip list. 
 * Few enhancements needed:
 * 1) use better random number generator (from boost or c++11
 * 2) need to add iterator interface.
 */

#include<iostream>
#include<vector>
#include<list>
#include<cstdlib>
#include<limits>
#include<ctime>

using namespace std;

template<typename T>
class skip_node_t {
  public:
    struct viterator {
        typedef typename list<skip_node_t<T> >::iterator type;
        typedef typename list<skip_node_t<T> >::const_iterator const_type;
    };
  private:
    typename viterator::type up;
    typename viterator::type down;
    T data;

  public:
    skip_node_t() : data(0) {}
    skip_node_t(T const &d) : data(d) {}
    skip_node_t(T const &d, typename viterator::type u, typename viterator::type w) : up(u), down(w), data(d) {}
    skip_node_t(skip_node_t const &skn) : up(skn.up), down(skn.down), data(skn.data) {}

    skip_node_t & operator=(skip_node_t const &skn) {
        if(this != &skn) {
            up = skn.up;
            down = skn.down;
            data = skn.data;
        }
        return *this;
    }

    typename viterator::type above() const { return up;}
    typename viterator::type below() const { return down;}
    typename viterator::type above() { return up;}
    typename viterator::type below() { return down;}
    void above(typename viterator::type a) { up = a;}
    void below(typename viterator::type b) { down = b;}

    T value() const { return data;}
    void value(T const &d) {data = d;}
};

template<typename T> 
class skip_list_t {
  private:
    vector<list<skip_node_t<T> > > skl;
    size_t num_els;

  public:

    skip_list_t() : num_els(0) {
        srand(time(NULL));
    }

    bool search(T d) { 
        typename skip_node_t<T>::viterator::type val = search_priv(d);
        return (val != skl.begin()->end()) && (val->value() == d);
    }

    void remove(T d);
    void insert(T d);

    bool empty() const { return num_els == 0;}
    size_t size() const { return num_els;}
    size_t level_size() const { return skl.size();}
    
  private:
    typename skip_node_t<T>::viterator::type search_priv(T d);
    typename skip_node_t<T>::viterator::type above(typename skip_node_t<T>::viterator::type p) { return p->above();}        
    typename skip_node_t<T>::viterator::type below(typename skip_node_t<T>::viterator::type p) { return p->below();}        
    typename skip_node_t<T>::viterator::type after(typename skip_node_t<T>::viterator::type p) { return ++p; }        
    typename skip_node_t<T>::viterator::type before(typename skip_node_t<T>::viterator::type p) { return --p;}        
    typename skip_node_t<T>::viterator::const_type above(typename skip_node_t<T>::viterator::const_type p) const { return p->above();}        
    typename skip_node_t<T>::viterator::const_type below(typename skip_node_t<T>::viterator::const_type p) const { return p->below();}        
    typename skip_node_t<T>::viterator::const_type after(typename skip_node_t<T>::viterator::const_type p) const { return ++p; }        
    typename skip_node_t<T>::viterator::const_type before(typename skip_node_t<T>::viterator::const_type p) const { return --p;}        

    typename skip_node_t<T>::viterator::type before_till_above(typename skip_node_t<T>::viterator::type p) { 
        p = before(p);
        while((p != skl.begin()->end()) && (above(p) == skl.begin()->end())) {
            p = before(p);
        }
        return p;
    }
    typename skip_node_t<T>::viterator::const_type before_till_above(typename skip_node_t<T>::viterator::const_type p) const {
        p = before(p);
        while((p != skl.begin()->end()) && (above(p) == skl.begin()->end())) {
            p = before(p);
        }
        return p;
    }

    bool flip_coin() { int num = rand(); cout<<"rnd = "<<num<<endl;return num%2 == 1; }
    size_t round2log2(size_t v) {
        size_t count = 1;
        while((0x01lu << count) < v) count++;
        return count;
    }
};

template<typename T>
typename skip_node_t<T>::viterator::type skip_list_t<T>::search_priv(T d) {
    if(skl.empty()) return skl.begin()->end();
    typename vector<list<skip_node_t<T> > >::iterator lst = skl.end() - 1;
    typename skip_node_t<T>::viterator::type p = ++(lst->begin());
    while(p != lst->end()) {
       if(p->value() == d) {
           while(below(p) != lst->end()) {
               p = below(p);
               --lst;
           }
           return p;
       } else if(p->value() < d) {           
           p = after(p);
       } else {
           p = before(p);
           if(below(p) != skl.begin()->end()) {
               p = below(p);
               --lst;
           } else {
               return p;
           }

       }
    }
    return skl.begin()->end();
}

template<typename T>
void skip_list_t<T>::remove(T d) {
    typename skip_node_t<T>::viterator::type val = search_priv(d);
    typename vector<list<skip_node_t<T> > >::iterator lst = skl.begin();
    while((val != skl.begin()->end()) && (val->value() == d)) {
        typename skip_node_t<T>::viterator::type tmp = val;
        val = above(val);
        lst->erase(tmp);
        ++lst;
    }   
    num_els--;
}

template<typename T>
void skip_list_t<T>::insert(T d) {
    typename vector<list<skip_node_t<T> > >::iterator lst;
    if(skl.empty()) {
        skl.push_back(list<skip_node_t<T> >());
        lst = skl.end() - 1;
        lst->push_back(skip_node_t<T>(numeric_limits<T>::min(), skl.begin()->end(), skl.begin()->end()));
        lst->push_back(skip_node_t<T>(numeric_limits<T>::max(), skl.begin()->end(), skl.begin()->end()));
    }
    typename skip_node_t<T>::viterator::type val = search_priv(d);
    lst = skl.begin();
    typename skip_node_t<T>::viterator::type below_inserted = skl.begin()->end();
    below_inserted = lst->insert(val, skip_node_t<T>(d, skl.begin()->end(), below_inserted));

    ++lst;
    val = before_till_above(val);
    size_t max_new_lvl = round2log2(num_els+1);
    if((val == skl.begin()->end()) || (val->value() != d)) {        
        while(flip_coin()) {
            if(skl.size() >= max_new_lvl) break;
            if(lst == skl.end()) {
                list<skip_node_t<T> > new_lst;
                lst = skl.end() - 1;
                skl.insert(lst, new_lst);
                lst = skl.end() - 1;
                typename vector<list<skip_node_t<T> > >::iterator lst_prev = lst - 1;
                lst->push_back(skip_node_t<T>(numeric_limits<T>::min(), skl.begin()->end(), lst_prev->begin()));
                lst->push_back(skip_node_t<T>(numeric_limits<T>::max(), skl.begin()->end(), --(lst_prev->end())));                
                lst_prev->begin()->above(lst->begin());
                (--(lst_prev->end()))->above(--(lst->end()));
            }
            if((val == skl.begin()->end()) || (val == lst->end())) {
                val = lst->begin();
            }
            below_inserted = lst->insert(val, skip_node_t<T>(d, skl.begin()->end(), below_inserted));
            ++lst;
            val = before_till_above(val);
        }
    }
    num_els++;
}

int main(void) {

    skip_list_t<int> sk;
    for(int i = 10; i < 200; i+=10) {
        cout<<"inserting "<<i<<" levels = "<<sk.level_size()<<endl;
        sk.insert(i);
    }

    cout<<"skiplist size : "<<sk.size()<<"  levels = "<<sk.level_size()<<endl;

    for(int i = 10; i <= 200; i+=10) {
        cout<<"val = "<<i<<" == "<<sk.search(i)<<endl;
    }
    for(int i = 0; i < 10; i++) {
        cout<<"val = "<<i<<" == "<<sk.search(i)<<endl;
    }
    for(int i = 10; i < 1000; i+=10) {
        sk.remove(i);
    }
    for(int i = 10; i <= 200; i+=10) {
        cout<<"val = "<<i<<" == "<<sk.search(i)<<endl;
    }
    for(int i = 0; i < 10; i++) {
        cout<<"val = "<<i<<" == "<<sk.search(i)<<endl;
    }

    return 0;
}

