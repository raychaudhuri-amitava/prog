#include <cstdlib>
#include<iostream>

using namespace std;

struct A{
    char data1;
    int id;
    int data;
};

int comp(const void *key,const void *datum){
    int i = *(int *)key;
    A *p = (A *) datum;
    A *q = (A *) key;
    cout<<"key = "<<i<<"id = "<<p->id<<"data = "<<p->data<<" q ->id = "<<q->id<<" q->datum = "<<q->data<<endl;
    return i - p->id;
}

int main(void){

    A a[10];

    int i=0;
    for(i=0;i<10;i++){
        a[i].id = i+1;
        a[i].data = 10*(i+1);
    }
    int key = 9;
    A *p = (A *)(bsearch(&key,a,10,sizeof(A),comp));
    if(p!=NULL){
        cout<<"Searched item is : id = "<<p->id<<" data = "<<p->data<<endl;
    }
    else cout<<"Not found"<<endl;


    return 0;
}
