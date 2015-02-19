#include<iostream>
#include<stdint.h>

using namespace std;


void someFunc(int *a[],int no1){
        int i=0;
	for(i=0;i<no1;i++) {
		if(a[i] != NULL) cout<<i<<" is not null"<<endl;
		else cout<<i<<" is null"<<endl;
        }
}

int main(void){

        int *a[5] = {NULL};
        someFunc(a,5);
	return 0;
}
