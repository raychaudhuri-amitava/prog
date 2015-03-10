#include<iostream>
#include<queue>

using namespace std;



template<class T>
class BSTNode {
public:
    T val;
    BSTNode<T> *left;
    BSTNode<T> *right;

public:
    BSTNode<T>() {
        left = NULL;
        right = NULL;
    }

    BSTNode<T>(const T &v):val(v) {
        left = NULL;
        right = NULL;
    }
    
    bool isleaf() {
        return left == NULL && right == NULL;
    }    
};

template<class T>
class BST {
private:
    BSTNode<T> *root;
    BSTNode<T> * getleftmost(const BSTNode<T> *rt) {
        BSTNode<T> *s = rt;
        while(s->left != NULL) {
            s = s->left;
        }        
        return s;
    }
public:
    BST() {
        root = NULL;
    }

    BSTNode<T> * insert(T v) {
        BSTNode<T> *s = root;
        BSTNode<T> *parent = NULL;
        while(s != NULL) {
            parent = s;
            if(s->val == v) {
                return s; // duplicate entry.
            }
            else if(v < parent->val) {
                s = s->left;
            }
            else s = s->right;
        }
        BSTNode<T> *pv = new BSTNode<T>(v);
        if(parent == NULL) {
            root = pv;
        }
        else if(v < parent->val) {
            parent->left = pv;
        } else {
            parent->right = pv;
        }
        return pv;
    }
    

    BSTNode<T> * deleteme(const T &v) {
        BSTNode<T> *s = root;
        BSTNode<T> *parent = NULL;
        while(s != NULL) {
            if(s->val == v) {
                if(s->sleaf()) {
                    if(parent->left == s) {
                        parent->left = NULL;
                    } else parent->right = NULL;
                    delete s;
                    return s;
                } 
                else {
                    BSTNode<T> *ins = getleftmost(s->right);
                    deleteme(s->val);
                    s->val = v;
                    break;
                }
            }
            else if(s->val < v) {
                parent = s;
                s = s->left;
            }
            else {
                parent = s;
                s = s->right;
            }
        }
        return parent;
    } 
  
    BSTNode<T> * search(const T &v) {
        BSTNode<T> * s = this;
        while(s != NULL) {
            if(s->val == v) {
                return s;
            }
            else if(s->val < v) {
                s = s->left;
            }
            else {
                s = s->right;
            }
        }
        return s;
    }
  
    void print_inorder(BSTNode<T> * p) {
        if(p ==  NULL) return;
        print_inorder(p->left);
        cout<<p->val<<", ";
        print_inorder(p->right);
    }
    
    void print_inorder() {
        print_inorder(root);
    }
    
    void print_breathfirst() {
        queue<BSTNode<T>* > q1;
        queue<int> q2;
        q1.push(root);
        q2.push(0);
        int prevLevel = 0;
        while(!q1.empty()) {
            BSTNode<T>* v = q1.front();
            q1.pop();
            int level = q2.front();
            q2.pop();
            if(v->left != NULL) {
                q1.push(v->left);
                q2.push(level+1);
            } 
            if(v->right != NULL) {
                q1.push(v->right);
                q2.push(level+1);
            } 
            if(prevLevel == level) {
                cout<<v->val<<", ";
            } else {
                prevLevel = level;
                cout<<"\n";
                cout<<v->val<<", ";
            }
       }
    }
};  


int main(void) {
    BST<int> tree;
    tree.insert(16);
    tree.insert(15);
    tree.insert(20);
    tree.insert(18);
    tree.insert(17);
    tree.print_inorder();
    cout<<"\n";
    tree.print_breathfirst();
    cout<<"\n";
    return 0;
} 
