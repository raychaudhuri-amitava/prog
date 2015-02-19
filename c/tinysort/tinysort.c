#include<stdio.h>

void sort(int*a,int n){int*b,*c,t;for(b=a+n;--b>a;)for(c=b;--c>=a;)if(*c>*b)t=*b,*b=*c,*c=t;}


int main(void) {
	int a[10] = {1,9,6,7,2,3,1,2,8,4};
	int i=0;
	for(i=0;i<10;printf("%d ",a[i++]));
	printf("\n");
	sort(a,10);
	for(i=0;i<10;printf("%d ",a[i++]));
	printf("\n");
	return 0;
}

