#include<stdio.h>
#include<stdlib.h>
#include<limits.h>

#define PREC 4096 

/* Returns 0 if the repeating sequence is within PREC else return 1*/
int convfloat(unsigned long int a,unsigned long int b,char ** flt)
{
	unsigned int quotent=0;
	unsigned int cntr=0;
	unsigned long int first_div=0; /* the first divident. */
	if(flt == NULL)
		return;
	*flt=(char*)malloc(1*sizeof(char));
	(*flt)[0]='\0';
	first_div=a;
	while(cntr < PREC)
	{
		quotent = (unsigned int)((a*10)/b);
		a=(a*10)%b;
		(*flt)[cntr]=(char)((int)'0'+quotent);
		cntr++;
		*flt=(char*)realloc(*flt,(cntr+1)*sizeof(char));
		if((a==first_div)||(a == 0))break;
	}

	(*flt)[cntr]='\0';

	if(cntr == PREC) return 1;

	return 0;
}

long int getInteger(void)
{

	long int ret_int=0;
	int sign_flg=0;
	int c_inp=0;

	c_inp=getchar();
	while(((char)c_inp!='\n') && ((char)c_inp!='\r'))
	{
		if(((char)c_inp>='0')&&((char)c_inp<='9'))
		{	
			ret_int=ret_int*10+(long int)((char)c_inp-'0');
		}
		else if((ret_int == 0)&&((char)c_inp == '-'))
		{
			sign_flg=1;
		}
		else
		{
			c_inp=0;
		}
		c_inp=getchar();
	}

	if(sign_flg == 1)
		ret_int = -ret_int;

	return ret_int;
}	

int main(void)
{
	long int a=0,b=0;
	char * flt=NULL;
	int conv_ret=0;


	printf("Enter the first integer : ");
	a=getInteger();
	printf("Enter the second integer : ");
	b=getInteger();

	printf("The integers you entered > a = %ld\nb =%ld\n",a,b); 

	if(b==0)
	{
		printf("Second integer should not be 0");
		return 0;
	}	

	if(((a>=0)&&(b>0))||((a<=0)&&(b<0)))
	{
		if(a<0)
		{
			a=-a;
			b=-b;
		}
		printf("a/b = %ld.",a/b);
	}
	else if(a<0)
	{
		a=-a;
		printf("a/b = -%ld.",a/b);
	}
	else if(b<0)
	{
		b=-b;
		printf("a/b = -%ld.",a/b);
	}
	else
	{
		printf("a/b = absurd.\n");
		return 0;
	}

	fflush(stdout);
	a=a%b;
	/* Send the fraction part to convfloat() */
	if(a!=0)
	{
		conv_ret = convfloat((unsigned int)a,(unsigned int)b,&flt);
		if(flt != NULL)
		{
			printf("%s\n",flt);
			free(flt);
		}
		else
		{
			printf("  <<---Pass a valid string to convfloat.\n");
		}
		if(conv_ret == 1)
		{
			printf("\nThe above result is not correct.\n");
		}

	}
	else
	{
		printf("0\n");
	}

	return 0;
}

