/*
 * =====================================================================================
 *
 *       Filename:  genBinFenwick.cc
 *
 *    Description:  Code with test case
 *
 *        Version:  1.0
 *        Created:  Monday 19 January 2015 09:58:45  IST
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  arc
 *   Organization:  Inmobi
 *   Run in cmd line : c++ -o genBinFenwick ./genBinFenwick.cc; ./genBinFenwick
 *
 * =====================================================================================
 */

#include<iostream>
#include<vector>
#include<cstdlib>
#include<ctime>

using namespace std;

struct FenBinNode {
    double weight;
    double cumLeftFreq;
    FenBinNode(double w, double cf) : weight(w), cumLeftFreq(cf){}
    void print(){cout<<"{"<<weight<<","<<cumLeftFreq<<"}\n";}
};

#define left(x) (((x)<<1) + 1)
#define right(x) (((x) + 1)<<1)
#define parent(x) ((x)>>1)

void genFenBinTree(vector<FenBinNode> &tree) {
    for(int i = (tree.size() >> 1); i >= 0; i--) {
        tree[i].cumLeftFreq = tree[left(i)].cumLeftFreq + ;
     }
}

int main(void) {

    srand(time(NULL));
    int mxSz = rand()%20;

    vector<FenBinNode> fbn;
    for(int i = 0; i < mxSz; i++) {
        double toPush = rand()%mxSz;
        fbn.push_back(FenBinNode(toPush, toPush));
    }
    genFenBinTree(fbn);
    for(vector<FenBinNode>::iterator it = fbn.begin(); it != fbn.end(); ++it) {
        it->print();
    }
    return 0;
}
            


