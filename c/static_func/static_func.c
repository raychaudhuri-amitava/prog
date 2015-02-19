#include<stdio.h>

typedef struct any
{
	int a;
	int b;
	char c;
	any(void)
	{
		printf("I am in constructor \n");
	}
	any(any& b)
	{
		printf("I am in copy constructor \n");
		a=b.a;
	}
	
	any & operator=(const any& b)
	{
		printf("I am in equal to operator \n");
	}
}any;

static any somefunc(void)
{
	any a;
	printf("I am in some func\n");
	a.a=10;
	a.b=20;
	a.c='c';
	return a;
}

int main(void)
{
	any b=somefunc();
//	b.a = somefunc().a;
//	b.b = somefunc().b;
//	b.c = somefunc().c;
	printf("a.a = %d | a.b = %d | a.c = %c\n",b.a,b.b,b.c);
	return 0;
}
