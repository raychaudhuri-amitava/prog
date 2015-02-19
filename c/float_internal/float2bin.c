#include<stdio.h>
#include<limits.h>

#ifndef FLTVAL
#define FLTVAL 0.2
#endif


/* #define FLTVAL(nm)  0.##nm   <-- Required for WINDOWS compilers. */

#define PREC_TYPE double

int main(void)
{

	typedef union
	{
		PREC_TYPE a;
		unsigned char ch[sizeof(PREC_TYPE)];
	}flt_t;
	int i=0;
	int val=0;
	int sign=0;
	int k=sizeof(PREC_TYPE);
	unsigned char mask=0x80;

	flt_t fl;

	while(val<2)
	{
		if(sign == 0)
		{
			fl.a=FLTVAL;
		}
		else
		{
			fl.a=-FLTVAL;
		}

		if(sign == 0)
		{
			printf("Val given = +%f  =  ",fl.a);
		}
		else
		{
			printf("Val given = %f  =  ",fl.a);
		}
		for(i=0;i<(sizeof(PREC_TYPE)*CHAR_BIT);i++)
		{
			if(i%CHAR_BIT==0)
			{
				mask=0x80;
				k--;
				printf("  ");
			}
			if((fl.ch[k]&mask)==0x00)
				printf("0");
			else printf("1");
			mask=mask>>1;
		}
		printf("\n");
		k=sizeof(PREC_TYPE);
		val++;
		if(sign == 0)
		{
			sign = 1;
		}
		else
		{
			sign = 0;
		}
	}
	return 0;
}




