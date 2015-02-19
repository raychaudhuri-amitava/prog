#include<stdio.h>

int main(void)
{
    char a='A';
    char b='A';
    int num=0;
    FILE *fp=fopen("comb.txt","w+");

    for(a='A';a<='Z';a++)
    {
        for(b='A';b<='Z';b++)
        {
            fprintf(fp,"%c%c\n",a,b);
            num++;
        }
    }

    printf("The total number = %d\n",num);
    return 0;
}

