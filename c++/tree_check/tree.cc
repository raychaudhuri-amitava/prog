#include<iostream>
#include<vector>

using namespace std;

struct node {
    node *left;
    node *right;
    int val;
    node():left(NULL), right(NULL), val(0){}
    node(int v):left(NULL), right(NULL), val(v){}
};

void preorder(node *root) {
    if(root == NULL) return;
    cout<<root->val<<"  ";
    preorder(root->left);
    preorder(root->right);
}



void inorder(node *root) {
    if(root == NULL) return;
    inorder(root->left);
    cout<<root->val<<"  ";
    inorder(root->right);
}


void postorder(node *root) {
    if(root == NULL) return;
    postorder(root->left);
    postorder(root->right);
    cout<<root->val<<"  ";
}

node *reconstruct_inpre(vector<int> &pre, vector<int> &in, int prestart, int preend, int instart, int inend) {
    node *rt = new node(pre[prestart]);
    int tinstart = instart;
    int tinend = inend;
    while(tinstart <= tinend) {
        int mid = (tinstart + tinend) >> 1;
        if(in[mid] == pre[prestart]) {
            if(mid != instart) {
                rt->left = reconstruct_inpre(pre, in, prestart + 1, prestart + mid - instart, instart, mid - 1); 
            }
            if(mid != inend) {
                rt->right = reconstruct_inpre(pre, in, prestart + mid - instart + 1, preend, mid + 1, inend); 
            }
            break;
        } else if(pre[prestart] < in[mid]) {
            tinend = mid - 1;
        } else {
            tinstart = mid + 1;
        }
    }

    return rt;
}

node *reconstruct_inpost(vector<int> &post, vector<int> &in, int poststart, int postend, int instart, int inend) {
    node *rt = new node(post[postend]);
    int tinstart = instart;
    int tinend = inend;
    while(tinstart <= tinend) {
        int mid = (tinstart + tinend) >> 1;
        if(in[mid] == post[postend]) {
            if(mid != instart) {
                rt->left = reconstruct_inpost(post, in, postend + mid - inend, postend - 1, instart, mid - 1); 
            }
            if(mid != inend) {
                rt->right = reconstruct_inpost(post, in, postend + 2*(mid - inend), postend + mid - inend - 1, mid + 1, inend); 
            }
            break;
        } else if(post[postend] < in[mid]) {
            tinend = mid - 1;
        } else {
            tinstart = mid + 1;
        }
    }

    return rt;

}

int main(void) {
    int num = 0;
    cout<<"Enter the total no. of nodes: ";
    cin>>num;
    vector<int> pre;
    vector<int> in;
    vector<int> post;
    cout<<"Enter in preorder: "<<endl;
    for(int i = 0; i < num; i++) {
        int val = 0;
        cin>>val;
        pre.push_back(val);
    }
    cout<<"Enter in inorder: "<<endl;
    for(int i = 0; i < num; i++) {
        int val = 0;
        cin>>val;
        in.push_back(val);
    }
    cout<<"Enter in postorder: "<<endl;
    for(int i = 0; i < num; i++) {
        int val = 0;
        cin>>val;
        post.push_back(val);
    }

    node *root_pre_in = NULL;
    root_pre_in = reconstruct_inpre(pre, in, 0, num - 1, 0, num - 1);

    cout<<"preorder: ";
    preorder(root_pre_in);
    cout<<endl;

    cout<<"inorder: ";
    inorder(root_pre_in);
    cout<<endl;

    cout<<"postorder: ";
    postorder(root_pre_in);
    cout<<endl;

    node *root_post_in = NULL;
    root_post_in = reconstruct_inpre(pre, in, 0, num - 1, 0, num - 1);

    cout<<"preorder: ";
    preorder(root_post_in);
    cout<<endl;

    cout<<"inorder: ";
    inorder(root_post_in);
    cout<<endl;

    cout<<"postorder: ";
    postorder(root_post_in);
    cout<<endl;
    return 0;
}
