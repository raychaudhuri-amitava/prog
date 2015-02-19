#include<vector>
#include<ctime>
#include<stdint.h>
#include<cstdlib>
#include<iostream>

using namespace std;

#ifndef M_VAL
#define M_VAL 10
#endif

#ifndef N_VAL
#define N_VAL 5
#endif

class GraphNode {
  private:
    int i;
    int j;
    vector<uint32_t> edges;
    bool visited;

  public:
    GraphNode(int r, int c) : i(r), j(c), visited(false) {}

    int getRow() { return i;}
    int getCol() { return j;}

    void addEdge(uint32_t ndno) { edges.push_back(ndno); }
    vector<uint32_t> & getEdges() { return edges; }

    void setVisited() { visited = true; }
    void unsetVisited() { visited = false; }
    bool isVisited() { return visited;}
};

typedef vector<GraphNode> Graph;

class DFS {
  public:
    typedef vector<vector<bool> > MatrixType;
    int dfs(MatrixType const &A);
  private:
    void convert(MatrixType const &A, Graph &G);
    void addGraphEdges(MatrixType const &A, GraphNode &g);
    void explore(Graph &G, GraphNode &u, int & curr);
};


void DFS::convert(DFS::MatrixType const &A, Graph &G) {
    G.clear();
    for(int i = 0; i < A.size(); ++i) {
        for(int j = 0; j < (A[i]).size(); ++j) {
            G.push_back(GraphNode(i, j));
            addGraphEdges(A, G.back());
        }
    }
}

void DFS::addGraphEdges(MatrixType const &A, GraphNode &g) {
    int i = g.getRow();
    int j = g.getCol();
    if(!A[i][j]) { return;}

    if((i-1) >= 0) {
        int offset1 = (i - 1) * A[i-1].size() + j;
        int offset2 = i * A[i].size() + j;
        if((j-1) >= 0) {
#ifdef CONNECT_MORE
            if(A[i-1][j-1]) { g.addEdge(offset1 - 1);}
#endif
            if(A[i][j-1]) {g.addEdge(offset2 - 1);}
        }

        if(A[i-1][j]) {g.addEdge(offset1);}

        if((j+1) < A[i-1].size()) {
#ifdef CONNECT_MORE
            if(A[i-1][j+1]) { g.addEdge(offset1 + 1);}
#endif
            if(A[i][j+1]) {g.addEdge(offset2 + 1);}
        }
    }

    if((i+1) < A.size()) {
        int offset = (i + 1) * A[i+1].size() + j;
#ifdef CONNECT_MORE
        if(((j-1) >= 0) && (A[i+1][j-1])) {g.addEdge(offset - 1);}
#endif

        if(A[i+1][j]) {g.addEdge(offset);}

#ifdef CONNECT_MORE
        if(((j+1) < A[i-1].size()) && (A[i+1][j+1])) { g.addEdge(offset + 1);}        
#endif
    }
}



void DFS::explore(Graph &G, GraphNode &u, int & curr) {
    if(u.isVisited()) return;
    u.setVisited();
    curr++;

    vector<uint32_t> &edges = u.getEdges();
    for(int i=0; i<edges.size(); ++i) {
        if(!G[edges[i]].isVisited()) {
            explore(G, G[edges[i]], curr);
        }
    }
}


int DFS::dfs(MatrixType const &A) {
    Graph G;
    convert(A, G);
    int max_con_area = 0;

    for(int i = 0; i<G.size(); ++i) {
        int curr_area = 0;
        if(!G[i].isVisited()) {
            explore(G, G[i], curr_area);
        }
        max_con_area = max(max_con_area, curr_area);
    }
    return max_con_area;
}

int main(void) {
    DFS::MatrixType A(M_VAL, DFS::MatrixType::value_type(N_VAL, false));

    srand(time(NULL));
    cout<<"The random 2D matrix : "<<endl;
    for(int i = 0; i < A.size(); ++i) {
        for(int j = 0; j < (A[i]).size(); ++j) {
            if(rand()%2 == 1) {
                A[i][j] = true;
            }
            cout<<A[i][j]<<"  ";
        }
        cout<<endl;
    }
    DFS dfs;
    cout<<"max connected area = "<<dfs.dfs(A)<<endl;
    return 0;
}





