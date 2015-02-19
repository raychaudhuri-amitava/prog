#include<stdio.h>
#include<stdlib.h>
#include<string.h>


typedef struct FD
{
	char * X;
	char * Y;
}FD;

void getstr(char ** str)
{
	char c=0;
	int i=0;	
	
	(*str)=(char*)calloc(1,sizeof(char));
	c=getchar();
	while(c!='\n'&&c!='\r')
	{		
		(*str)[i]=c;
		(*str)[i]=toupper((*str)[i]);		
		i++;
		(*str)=(char*)realloc((*str),(i+1)*sizeof(char));
		c=getchar();
	}
	(*str)[i]='\0';
}


unsigned long int fact(unsigned long int n)
{
	unsigned long int mul=1;	
	if(n<0)return 1;
	mul=1;
	while(n>0)
	{
		if(n>0)
			mul=mul*n;
		else
			mul=mul*1;
		n--;
	}
	return mul;
}


unsigned long int factdiv(unsigned long int n,unsigned long int n1)
{
	unsigned int r=0;
	unsigned int i=0; 
	unsigned long int mul=1;
	if(n<n1) return 0;

	r=n-n1;
	mul=1;
    for(i=0;i<r;i++)
	{
		mul=mul*n;
		n--;
	}
	return mul;
}


unsigned long int nCr(unsigned long int n,unsigned long int r)
{
	if((n-r)>r)
		return factdiv(n,n-r)/fact(r);
	else 
		return factdiv(n,r)/fact(n-r);
}



int checkEl(char * R,char *X)
{
	int i=0,j=0;
	int len=strlen(R);

	while(X[i]!='\0')
	{
		j=0;
		while(R[j]!='\0')
		{
			if(X[i]==R[j])
			{
				break;
			}
			j++;
		}
		if(j>=len)return 0;
		i++;
	}
	return 1;
}


int checkSubset(char * a,char * XC) /* a is in XC */
{
	int i=0,j=0;
	int len=strlen(XC);
	while(a[i]!='\0')
	{
		j=0;
		while(XC[j]!='\0')
		{
			if(a[i]==XC[j])break;
			j++;
		}
		i++;
		if(j>=len)return 0;
	}
	return 1;
}

int ifpresent(char c,char * a)
{
	int i=0;
	while(a[i]!='\0')
	{
		if(c==a[i])return 1;
		i++;
	}
	return 0;
}

char*strcatU(char*XC,const char * a)
{
	int i=0,j=0;
	j=strlen(XC);
	while(a[i]!='\0')
	{
		if(ifpresent(a[i],XC)==0)
		{
			XC=(char*)realloc(XC,(j+2)*sizeof(char));
			XC[j]=a[i];
			XC[j+1]='\0';
			j++;
		}
		i++;
	}
	return XC;
}



char * XCLOSURE(char * X,FD * fd,int n,char * R)
{
	char * XC=NULL,*OLDXC=NULL;
	int i=0;
	
	if(checkEl(R,X)==0)
		return NULL;

	XC=(char*)malloc((strlen(X)+1)*sizeof(char));
	OLDXC=(char*)malloc(1*sizeof(char));
	
	OLDXC[0]='\0';
	XC=strcpy(XC,X);
	
	do
	{		
		OLDXC=(char*)realloc(OLDXC,(strlen(XC)+1)*sizeof(char));
		OLDXC=strcpy(OLDXC,XC);
		for(i=0;i<n;i++)
		{
			if(checkSubset(fd[i].X,XC)==1)
			{
				XC=(char*)realloc(XC,(strlen(XC)+strlen(fd[i].Y)+1)*sizeof(char));
				XC=strcatU(XC,fd[i].Y);
			}
		}
		if(strcmp(XC,OLDXC)==0)break;			
	}while(1);
	free(OLDXC);
	return XC;
}

int chrcmp(const void*a,const void*b)
{
	if((*(char*)a)==(*(char*)b))return 0;
	else if((*(char*)a)<(*(char*)b))return -1;
	else return 1;
}


int ifexist(FD*fd,int max,char * X,char *Y)
{
	int i=0;
	for(i=0;i<max;i++)
	{
		if((strcmp(X,fd[i].X)==0)&&(strcmp(Y,fd[i].Y)==0))
		{
			return 1;
		}
	}
	return 0;
}


void copyfds(FD **a,int * na,const FD*b,int nb) /* a=b */
{
	int i=0;
	
	if((*a)!=NULL)
	{
		for(i=0;i<*na;i++)
		{
			free((*a)[i].X);
			free((*a)[i].Y);
		}
		free((*a));
		(*a)=NULL;
	}

	*na=nb;
	(*a)=(FD*)malloc(nb*sizeof(FD));

	for(i=0;i<nb;i++)
	{
		(*a)[i].X=(char*)malloc((strlen(b[i].X)+1)*sizeof(char));
		(*a)[i].Y=(char*)malloc((strlen(b[i].Y)+1)*sizeof(char));
		(*a)[i].X=strcpy((*a)[i].X,b[i].X);
		(*a)[i].Y=strcpy((*a)[i].Y,b[i].Y);
	}
}


void openRight(FD**fd,int *n)
{
	int orign=*n;
	int i=0;
	int len=0,j=0,k=0;
	FD * g=NULL;
	
	g=(FD*)malloc(1*sizeof(FD));

	k=0;
	for(i=0;i<orign;i++)
	{
		len=strlen((*fd)[i].Y);
		for(j=0;j<len;j++)
		{
			g=(FD*)realloc(g,(k+1)*sizeof(FD));
			g[k].X=(char*)malloc((strlen((*fd)[i].X)+1)*sizeof(char));
			g[k].Y=(char*)malloc(2*sizeof(char));
			g[k].X=strcpy(g[k].X,(*fd)[i].X);
			g[k].Y[0]=(*fd)[i].Y[j];
			g[k].Y[1]='\0';
			k++;			
		}
	}

	*n=k;
	copyfds(fd,&orign,g,k);

	for(i=0;i<k;i++)
	{
		free(g[i].X);
		free(g[i].Y);
	}
	free(g);
}
		

char * strikeOff(char *a,char c)
{
	int i=0,k=0;
	char * b=(char*)malloc(1*sizeof(char));
	k=0;
	while(a[i]!='\0')
	{
		if(a[i]!=c)
		{
			b[k]=a[i];
			k++;
			b=(char*)realloc(b,(k+1)*sizeof(char));
		}
		i++;
	}
	b[k]='\0';		
	free(a);
	a=NULL;
	a=b;
	
	return b;
}


int equivalentFds(FD * E,int ne,FD * F,int nf,char * R)
{
	char *XC=NULL;

	int i=0;

	for(i=0;i<ne;i++)
	{
		XC=XCLOSURE(E[i].X,F,nf,R);
		if(checkSubset(E[i].Y,XC)==0)
		{
			free(XC);
			XC=NULL;
			return 0;
		}
		free(XC);
		XC=NULL;
	}

	for(i=0;i<nf;i++)
	{
		XC=XCLOSURE(F[i].X,E,ne,R);
		if(checkSubset(F[i].Y,XC)==0)
		{
			free(XC);
			XC=NULL;
			return 0;
		}
		free(XC);
		XC=NULL;
	}
	
	return 1;
}


void minimalCover(char *R,FD * fd,int n,FD**G,int * ng)
{
	int i=0,j=0,k=0;
	int len=0;
	FD * T=NULL;
	int nt=0;	

	copyfds(G,ng,fd,n);
	openRight(G,ng);
	

	
	for(i=0;i<(*ng);i++)
	{
		copyfds(&T,&nt,(*G),(*ng));
		if(strlen((*G)[i].X)>1)
		{			
			j=0;		
			while(1)
			{
				T[i].X=strikeOff(T[i].X,(*G)[i].X[j]);
				if(equivalentFds(T,nt,(*G),(*ng),R)==1)
				{
					copyfds(G,ng,T,nt);
				}
				else
					j++;

				len=strlen((*G)[i].X);
				if(j>=len||len>=1)break;
			}		
		}
	}
	
	nt=0;

	for(i=0;i<nt;i++)
	{
		free(T[i].X);
		free(T[i].Y);
	}
	free(T);
	T=NULL;
	T=(FD*)malloc(1*sizeof(FD));
	i=0;
	while(1)
	{
		k=0;
		for(j=0;j<*ng;j++)
		{
			if(j!=i)
			{
				T=(FD*)realloc(T,(k+1)*sizeof(FD));
				T[k].X=(char*)malloc((strlen((*G)[j].X)+1)*sizeof(char));
				T[k].Y=(char*)malloc((strlen((*G)[j].Y)+1)*sizeof(char));
				T[k].X=strcpy(T[k].X,(*G)[j].X);
				T[k].Y=strcpy(T[k].Y,(*G)[j].Y);
				k++;
			}
		}

		nt=k;

		if(equivalentFds(T,nt,*G,*ng,R)==1)
		{
			copyfds(G,ng,T,nt);
		}
		else
			i++;
		

		for(k=0;k<nt;k++)
		{
			free(T[k].X);
			free(T[k].Y);
		}
		free(T);
		T=NULL;
		if(i>=(*ng))break;
		T=(FD*)malloc(1*sizeof(FD));		
	}

}

int fdcmp(const void *fd1,const void * fd2)
{
	return strcmp(((FD*)fd1)->X,((FD*)fd2)->X);
}



int strcmpa(const char *a,const char * b)
{
	int i=0,j=0;

	if(strlen(a)!=strlen(b))return 1;

	while(a[i]!='\0')
	{
		j=0;
		while(b[j]!='\0')
		{
			if(a[i]==b[j])break;
			j++;
		}
		if(b[j]=='\0')return 1;
		i++;
	}

	i=0;
	while(b[i]!='\0')
	{
		j=0;
		while(a[j]!='\0')
		{
			if(b[i]==a[j])break;
			j++;
		}
		if(a[j]=='\0')return 1;
		i++;
	}

	return 0;
}

char ** calKey(char * R,FD*G,int ng,int * knum)
{
	unsigned int i=0,len=0,kn=0,l=0,m=0,k=0;
	char * sk=NULL;
	char ** key=(char **)malloc(1*sizeof(char*));
	char ** rkey=NULL;
	char * XC=NULL;
	unsigned int r=0;
	unsigned long int num=0;

	len=strlen(R);
	qsort(R,len,sizeof(char),chrcmp);
	kn=0;
	for(r=1;r<=len;r++)
	{		
		num=nCr(len,r);		
		l=0;
		m=1;
		for(i=0;i<num;i++)
		{
			if(sk!=NULL)
			{
				free(sk);
				sk=NULL;
			}
			sk=(char*)malloc((r+1)*sizeof(char));			
			sk[0]=R[l];
			if(r==1)l++;
			for(k=1;k<r;k++)
			{				
				if(m>=len)
				{
					l++;			
					if(l>=len)
					{
						l=0;
						m=1;
						k--;
						continue;
					}
					m=0;
					sk[0]=R[l];
				}
				sk[k]=R[m];
				m++;		
				if(m==l)m=m+1;
			}
			sk[k]='\0';		
			XC=XCLOSURE(sk,G,ng,R);						
			if((XC!=NULL)&&(strcmpa(XC,R)==0))
			{
				// Copy sk to key.				
				key=(char**)realloc(key,(kn+1)*sizeof(char*));
				key[kn]=(char*)malloc((r+1)*sizeof(char));
				strcpy(key[kn],sk);								
				kn++;
			}		
			if(XC!=NULL)
			{
				free(XC);
				XC=NULL;
			}
		}		
	}

	r=kn;
	for(i=0;i<r;i++)
	{
		for(m=i+1;m<r;m++)
		{
			if((key[m][0]!='\0')&&(strcmpa(key[i],key[m])==0))
			{
				key[m][0]='\0';
				kn--;
			}
		}
	}
	
	rkey=(char **)malloc(kn*sizeof(char*));
	m=0;

	for(i=0;i<r;i++)
	{
		if(key[i][0]=='\0')
		{
			free(key[i]);
			key[i]=NULL;
		}
		else
		{
			rkey[m]=key[i];
			qsort(rkey[m],strlen(rkey[m]),sizeof(char),chrcmp);
			m++;
		}
	}

	free(key);
	key=NULL;
	(*knum)=kn;	
	return rkey;
}


char ** relsynalgo2(char * R,FD * F,int nf,int *numR)
{
	FD * G=NULL;
	int ng=0;
	int i=0,j=0,k=0,m=0,pn=0;
	int kn=0;
	char ** Key=NULL;
	char *X=NULL;
	char ** D=NULL;

	minimalCover(R,F,nf,&G,&ng);

	D=(char **)malloc(1*sizeof(char*));

	qsort(G,ng,sizeof(FD),fdcmp);

	i=0;
	j=0; // Row of D. equate it to numR ptr.	

	while(1)
	{
		X=(char*)malloc((strlen(G[i].X)+1)*sizeof(char));
		strcpy(X,G[i].X);
		
		while(1)
		{
			if(i>=ng)break;
			if(strcmp(X,G[i].X)!=0)break;			
			X=(char*)realloc(X,(strlen(X)+strlen(G[i].Y)+1)*sizeof(char));
			X=strcat(X,G[i].Y);
			i++;
		}
		D[j]=X;
		j++;
		D=(char**)realloc(D,(j+1)*sizeof(char*));
		X=NULL;
		if(i>=ng)break;
	}
	
	Key=calKey(R,G,ng,&kn);

	for(i=0;i<j;i++)
	{
		for(m=0;m<kn;m++)
		{
			if(checkSubset(Key[m],D[i])==1)break;
		}
		if(m<kn)break;
	}
		
	
	if(i>=j)
	{
		D[j]=(char*)malloc(1*sizeof(char));
		D[j][0]='\0';
		for(m=0;m<kn;m++)
		{
			pn=strlen(D[j])+strlen(Key[m]);
			D[j]=(char*)realloc(D[j],(pn+2)*sizeof(char));
			D[j]=strcat(D[j],Key[m]);
            if(m<kn-1)
				D[j]=strcat(D[j],"\\");
		}
		j++;
	}

	(*numR)=j;

	for(i=0;i<ng;i++)
	{
		free(G[i].X);
		free(G[i].Y);
	}
	free(G);
	G=NULL;

	for(m=0;m<kn;m++)
		free(Key[m]);
	free(Key);
	Key=NULL;
	
	return D;
} 




int main(void)
{
	int n=0,i=0,j=0,ng=0;
	FD * fd=NULL;
	char * R=NULL;	
	char **D=NULL;
	int numR=0;
	printf("Enter the Max No. of FD's : ");
    getstr(&R);
    n = atoi(R);
    free(R);
    R=NULL;
	fd=(FD*)malloc(n*sizeof(FD));
	
	printf("Enter the variables of relations without commas  : ");
	getstr(&R);
	
	for(i=0;i<n;i++)
	{
		system("clear");
		printf("Enter the functional dependency : \n");
		printf("Enter X : ");
		getstr(&(fd[i].X));
		printf("Enter Y : ");
		getstr(&(fd[i].Y));
		if((checkEl(R,fd[i].X)==0)||(checkEl(R,fd[i].Y)==0))
		{
			free(fd[i].X);
			free(fd[i].Y);
			fd[i].X=NULL;
			fd[i].Y=NULL;
			i=i-1;
			printf("The dependencies entered by you are not in the set.\nPlease re-enter after rechecking.\n");
			getchar();
		}
		else if(ifexist(fd,i,fd[i].X,fd[i].Y)==1)
		{
			free(fd[i].X);
			free(fd[i].Y);
			fd[i].X=NULL;
			fd[i].Y=NULL;
			i=i-1;
			printf("The dependencies already entered by you.\nPlease re-enter after rechecking.\n");
			getchar();
		}

	}
	system("clear");
	printf("The following dependiencies are recorded : \n");
	for(i=0;i<n;i++)
	{			
		printf("\n%s -----> %s",fd[i].X,fd[i].Y);
	}

	getchar();
	
    D=relsynalgo2(R,fd,n,&numR);
	
	system("clear");
	printf("The decomposed relations are : \n");
	for(i=0;i<numR;i++)
	{
		printf("\nR%d(  ",(i+1));
		j=0;
		while(D[i][j]!='\0')
		{
			printf("%c, ",D[i][j]);
			j++;
		}
		printf("\b\b  )");
	}

	for(i=0;i<numR;i++)
		free(D[i]);
	free(D);
	D=NULL;
	free(R);
	for(i=0;i<n;i++)
	{
		free(fd[i].X);
		free(fd[i].Y);
	}
	free(fd);
	printf("\n");
	return 0;
}
