/*
 * =====================================================================================
 *
 *       Filename:  enumerate_all_trees.cc
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  08/06/2014 07:32:53 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include<iostream>
#include<vector>
#include<cstdlib>
#include<utility>

using namespace std;

struct BTNode {
    int d;
    BTNode *left;
    BTNode *right;
    BTNode(int v, BTNode *l, BTNode *r) : d(v), left(l), right(r){}
    void inorder_print() {
        if(left != NULL) {
            left->inorder_print();
        }
        cout<<d<<" ";
        if(right != NULL) {
            right->inorder_print();
        }
    }
    void preorder_print() {
        cout<<d<<" ";
        if(left != NULL) {
            left->preorder_print();
        }
        if(right != NULL) {
            right->preorder_print();
        }
    }
};


vector<BTNode*> _enumerate_all_binary_trees(int start, int end) {
    vector<BTNode*> res;
    if(start > end) {
        res.push_back(NULL);
        return res;
    }

    for(int i = start; i <= end; ++i) {
        vector<BTNode*> left_res = _enumerate_all_binary_trees(start, i - 1);
        vector<BTNode*> right_res = _enumerate_all_binary_trees(i + 1, end);
        for(vector<BTNode*>::iterator l = left_res.begin(); l != left_res.end(); ++l) {
            for(vector<BTNode*>::iterator r = right_res.begin(); r != right_res.end(); ++r) {
                BTNode *t = new BTNode(i, move(*l), move(*r));
                res.push_back(t);
            }
        }
    }
    return res;
}

vector<BTNode*> enumerate_all_binary_trees(int n) {
    return _enumerate_all_binary_trees(1, n);
}

int main(int argc, char **argv) {
    int n = 1;
    if(argc > 1) {
        n = atoi(argv[1]);
    }
    vector<BTNode*> res = enumerate_all_binary_trees(n);
    for(vector<BTNode*>::iterator it = res.begin(); it != res.end(); ++it) {
        cout<<"inorder:";
        (*it)->inorder_print();
        cout<<endl;
        cout<<"preorder:";
        (*it)->preorder_print();
        cout<<endl;
    }

    return 0;

}
