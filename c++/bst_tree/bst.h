#include<vector>
#include<queue>
#include<stack>
#include<iostream>

template<typename T>
class TreeNode {
    public:
        T data;
        TreeNode<T> *left;
        TreeNode<T> *right;
        TreeNode(T d) : data(d), left(NULL), right(NULL){}
        ~TreeNode() {delete left; delete right; left = NULL; right=NULL;}

};

template<typename T>
class BSTree {
    private:
        TreeNode<T> *root;
        int num_elements;
    public:
        BSTree() : root(NULL), num_elements(0){}
        BSTree(std::vector<T> const& v) : root(NULL), num_elements(0){
            for(T d : v) {
                if(this->insert(d)) {
                    num_elements++;
                }
            }
        }

        void print_level_order() {            
            std::queue<TreeNode<T>*> Q;
            Q.push(root);
            int count = Q.size();
            while(!Q.empty()) {
                TreeNode<T> *t = Q.front();
                std::cout<<t->data<<"  ";                  
                Q.pop();
                if(t->left != NULL) {
                    Q.push(t->left);
                } 
                if(t->right != NULL) {
                    Q.push(t->right);
                }
                count--;
                if(count == 0) {
                    count = Q.size();
                    std::cout<<std::endl;
                }
            }
        }

        void print_preorder() {
            print_preorder_helper(root);
        }
        void print_preorder_iter() {
            print_preorder_helper_iter();
        }

        void print_inorder() {
            print_inorder_helper(root);
        }
        void print_inorder_iter() {
            print_inorder_helper_iter();
        }

        void print_postorder() {
            print_postorder_helper(root);
        }
        void print_postorder_iter() {
            print_postorder_helper_iter();
        }

        ~BSTree() {delete root; root = NULL; num_elements=0;}

    private:
        bool insert(T &d) {
            if(root == NULL) {
                root = new TreeNode<T>(d);                
            } else {
                TreeNode<T> *t = root;
                TreeNode<T> *p = NULL;
                while(t != NULL) {
                    p = t;
                    if(t->data == d) return false;
                    else if(t->data < d) t = t->right;
                    else t = t->left;
                }

                if(p->data < d) {
                    p->right = new TreeNode<T>(d);
                } else {
                    p->left = new TreeNode<T>(d);
                }
            }
            return true;
        }

        void print_preorder_helper(TreeNode<T>* nd) {
            if(nd == NULL) return;
            std::cout<<nd->data<<"  ";
            print_preorder_helper(nd->left);
            print_preorder_helper(nd->right);
        }
        void print_preorder_helper_iter() {
            std::stack<TreeNode<T>*> S;
            TreeNode<T> *curr = root;

            while(!S.empty() || (curr != NULL)) {
                if(curr != NULL) {
                    std::cout<<curr->data<<"  ";
                    S.push(curr);
                    curr = curr->left;
                } else {
                    curr = S.top();
                    S.pop();
                    curr = curr->right;
                }
            }
        }


        void print_inorder_helper(TreeNode<T>* nd) {
            if(nd == NULL) return;
            print_inorder_helper(nd->left);
            std::cout<<nd->data<<"  ";
            print_inorder_helper(nd->right);
        }
        void print_inorder_helper_iter() {
            std::stack<TreeNode<T>*> S;
            TreeNode<T> *curr = root;

            while(!S.empty() || (curr != NULL)) {
                if(curr != NULL) {
                    S.push(curr);
                    curr = curr->left;
                } else {
                    curr = S.top();
                    S.pop();
                    std::cout<<curr->data<<"  ";
                    curr = curr->right;
                }
            }
        }

        void print_postorder_helper(TreeNode<T>* nd) {
            if(nd == NULL) return;
            print_postorder_helper(nd->left);
            print_postorder_helper(nd->right);
            std::cout<<nd->data<<"  ";
        }
        void print_postorder_helper_iter() {
            std::stack<TreeNode<T>*> S;
            TreeNode<T> *curr = root;
            TreeNode<T> *prev = NULL;

            while(!S.empty() || (curr != NULL)) {
                if(curr != NULL) {
                    S.push(curr);
                    curr = curr->left;
                } else {
                    curr = S.top();
                    if(curr->right != NULL) {
                        if(curr->right == prev) {
                            std::cout<<curr->data<<"  ";
                            S.pop();
                            prev = curr;
                            curr = NULL;
                        } else {
                            curr = curr->right;
                        }

                    } else {
                        std::cout<<curr->data<<"  ";
                        S.pop();
                        prev = curr;
                        curr = NULL;
                    }
                }
            }
        }
};
