#include "bst.h"
#include<iostream>
#include<vector>

using namespace std;

int main(void) {
    vector<int> trvec({6,3,8,1,2,5,9,7,10});
    BSTree<int> tree(trvec);
    cout<<"insert order : ";
    for(auto v : trvec) {
        cout<<v<<"  ";
    }
    cout<<endl;
    cout<<"level order : "<<endl;
    tree.print_level_order();
    cout<<endl;
    cout<<"pre order : ";
    tree.print_preorder();
    cout<<endl;
    cout<<"pre order iter : ";
    tree.print_preorder_iter();
    cout<<endl;
    cout<<"in order : ";
    tree.print_inorder();
    cout<<endl;
    cout<<"in order iter : ";
    tree.print_inorder_iter();
    cout<<endl;
    cout<<"post order : ";
    tree.print_postorder();
    cout<<endl;
    cout<<"post order iter : ";
    tree.print_postorder_iter();
    cout<<endl;
    return 0;
}



