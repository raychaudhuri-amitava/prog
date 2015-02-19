#include<vector>
#include<exception>
#include<stdint.h>

class UnionFindException : std::exception {
    const char* what() const noexcept {return "Out of bounds!\n";}
};

template<typename T>
class UnionFind {
    typedef struct ufd {
        T data;
        uint32_t rank;
        uint32_t parent;
        ufd(T d, uint32_t r) : data(d), rank(r), parent(0) {}
        bool operator<(ufd const& rhs) { return rank < rhs.rank;}
    } ufd_t;
    typedef std::vector<ufd> union_find_t;
  private:
    union_find_t uf;
    uint32_t max_rank;
  public:
    UnionFind() : max_rank(0){}
    uint32_t make_set(T &d) {
        uf.push_back(ufd_t(d, max_rank++));
        (uf.back()).parent = uf.size() - 1;
        return uf.size() - 1;
    }

    uint32_t find_set(uint32_t pos) {
        if(pos >= uf.size()) throw UnionFindException();
        while((uf[pos]).parent != pos) {
            (uf[pos]).parent = find_set((uf[pos]).parent);
        }
        return (uf[pos]).parent;
    }

    T get_data(uint32_t pos) {
        if(pos >= uf.size()) throw UnionFindException();
        return (uf[pos]).data;
    }
        

    void union_set(uint32_t pos1, uint32_t pos2) {
        uint32_t parent_1 = find_set(pos1);
        uint32_t parent_2 = find_set(pos2);
        link(parent_1, parent_2);
    }

    void isolate_member(uint32_t pos) {
        if(pos >= uf.size()) throw UnionFindException();
        if((uf[pos]).parent != pos) {
            (uf[pos]).parent = pos;
        }
        return;
    }

  private:
    void link(uint32_t pos1, uint32_t pos2) {
        if((uf[pos1]).rank < (uf[pos2]).rank) {
            (uf[pos2]).parent = pos1;
        } else {
            (uf[pos1]).parent = pos2;
        }
    }
};


