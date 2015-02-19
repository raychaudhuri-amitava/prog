#include<stdio.h>
#include<stdlib.h>
#include<math.h>

#define MX 5
#define NY 5
#define CAP 10
const float pi=(22/7);
//const float pi=3.14285714285714285714;
//#define pi (22/7)

int ** getMat(int M,int N,int cap)
{
	/* this function will generate a MxN matrix in which all the values
	 * are less than the cap.
	 */
	int ** f=NULL;

	int i=0,j=0;
	f=(int **)malloc(M*sizeof(int*));
	for(i=0;i<M;i++)
	{
		f[i]=(int *)malloc(N*sizeof(int));
		for(j=0;j<N;j++)
		{
			f[i][j]=rand()%cap;
		}
	}
	return f;
}


float C(int xeta)
{
	if(xeta == 0) return sqrt(2)/2;
	return 1;
}


float ** dct(int ** f,int M,int N)
{
	float ** F=NULL;
	int u=0,v=0;
	int i=0,j=0;
	float sum=0.0;

	float RTMN = sqrt(M*N);

	F=(float **)malloc(M*sizeof(float*));
	for(u=0;u<M;u++)
	{
		F[u]=(float *)malloc(N*sizeof(float));
		for(v=0;v<N;v++)
		{
			sum=0;
			for(i=0;i<M;i++)
			{
				for(j=0;j<N;j++)
				{
					sum=sum + cos(((2*(float)(i)+1)*(float)(u)*pi)/2*M)*cos(((2*(float)(j)+1)*(float)(v)*pi)/2*N)*(float)(f[i][j]);
				}
			}
			F[u][v]=(2*C(u)*C(v)/RTMN)*sum;
		}
	}
	return F;

}

float ** idct(float ** F,int M,int N)
{
	float ** f=NULL;
	int u=0,v=0;
	int i=0,j=0;
	float sum=0;

	float RTMN = sqrt(M*N);

	f=(float **)malloc(M*sizeof(float*));
	for(i=0;i<M;i++)
	{
		f[i]=(float *)malloc(N*sizeof(float));
		for(j=0;j<N;j++)
		{
			sum=0.0;
			for(u=0;u<M;u++)
			{
				for(v=0;v<N;v++)
				{
					sum=sum + ((2*C(u)*C(v)/RTMN)*cos(((2*(float)(i)+1)*(float)(u)*pi)/2*M)*cos(((2*(float)(j)+1)*(float)(v)*pi)/2*N)*F[u][v]);
				}
			}
			f[i][j]=sum;
		}
	}
	return f;

}

int main(void)
{
	int ** fmap=NULL;
	float ** F=NULL;
	float ** ifmap=NULL;
	int i=0,j=0;

	fmap=getMat(MX,NY,CAP);

	for(i=0;i<MX;i++)
	{
		printf("[ ");
		for(j=0;j<NY;j++)
		{
			if(j<NY-1)
			{
				printf("%2d ,",fmap[i][j]);			
			}
			else
			{
				printf("%2d ",fmap[i][j]);
			}
		}
		printf(" ] \n");
	}

	printf("\n\nThe DC TRANSFORM OF ABOVE MATRIX IS BELOW : \n\n");

	F=dct(fmap,MX,NY);

	for(i=0;i<MX;i++)
	{
		printf("[ ");
		for(j=0;j<NY;j++)
		{
			if(j<NY-1)
			{
				printf("%f ,",F[i][j]);			
			}
			else
			{
				printf("%f ",F[i][j]);
			}
		}
		printf(" ] \n");
	}
	
	printf("\n\nThe INVERSE D C TRANSFORM OF ABOVE MATRIX IS BELOW : \n\n");

	ifmap=idct(F,MX,NY);

	for(i=0;i<MX;i++)
	{
		printf("[ ");
		for(j=0;j<NY;j++)
		{
			if(j<NY-1)
			{
				printf("%f ,",ifmap[i][j]);			
			}
			else
			{
				printf("%f ",ifmap[i][j]);
			}
		}
		printf(" ] \n");
	}

	printf("\n\nThe DIFFERENCE MATRIX IS BELOW : \n\n");

	for(i=0;i<MX;i++)
	{
		printf("[ ");
		for(j=0;j<NY;j++)
		{
			if(j<NY-1)
			{
				printf("%f ,",ifmap[i][j]-(float)(fmap[i][j]));			
			}
			else
			{
				printf("%f ",ifmap[i][j]-(float)(fmap[i][j]));
			}
		}
		printf(" ] \n");
	}
	for(i=0;i<MX;i++)
	{
		free(fmap[i]);
		free(F[i]);
		free(ifmap[i]);
	}
	free(fmap);
	free(F);
	free(ifmap);
	return 0;
}


