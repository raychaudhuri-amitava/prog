#include<utility>
#include<vector>

using namespace std;

struct Node {
    char name; //name can be like A, B etc.
    Node *left;
    Node *right;
};


int height(Node * tree, vector<pair<int, int> > &ht) {
    if(tree == NULL) return 0;
    if(ht[tree->name].first == -1) {
        (ht[tree->name]).first = 1 + height(tree->left, ht);
        (ht[tree->name]).second = 1 + height(tree->right, ht);
    }
    return max((ht[tree->name]).first, (ht[tree->name]).second);
}


int diameter(Node * tree, int tree_size) {

    vector<pair<int, int> > hts(tree_size, make_pair(-1, -1));
     
    height(tree, hts);

    int max_dia = 0;
    for(int i = 0; i < tree_size; i++) {
        if((hts[i]).first + (hts[i]).second > max_dia) {
            max_dia = (hts[i]).first + (hts[i]).second;
        }
    }
    return max_dia;
}



