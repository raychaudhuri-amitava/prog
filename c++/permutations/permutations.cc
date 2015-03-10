#include<iostream>
#include<stdint.h>

using namespace std;

#define SIZE 4

void getNextPerm(uint32_t (&A)[SIZE]) {

	size_t len = sizeof(A)/sizeof(uint32_t);
	size_t i = 0, j=0;
	for(i=len-2;i>=0;i--) {
		if(A[i] <= A[i+1]) break;
	}

	for(j=len-1;j>i;j--) {
		if(A[j] > A[i]) {
			break;
		}
	}
	uint32_t temp = A[i];
	A[i] = A[j];
	A[j] = temp;

	i++;
	j = len-1;
	while(i<j) { 
		if(i!=j){
			uint32_t temp = A[i];
			A[i] = A[j];
			A[j] = temp;
		}
		i++;
		j--;
	}
}


int main(void) {

	uint32_t A[SIZE] = {0};
	size_t len = sizeof(A)/sizeof(uint32_t);
	for(int l=0;l<len;l++) {
		A[l] = l+1;
	} 
	uint64_t factLen = 1;
	for(size_t i=1;i<=len;i++){
		factLen=factLen*i;
	}
	for(uint64_t i=1;;i++){
		for(size_t j=0;j<len;j++) cout<<A[j]<<"  ";
                cout<<endl;
                if(i==factLen) break;
		getNextPerm(A);
	}
	return 0;
}
