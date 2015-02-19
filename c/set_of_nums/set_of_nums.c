#include<stdio.h>

int main()
{
    int i, j, shift, a, b;
    int n;
    printf("n=");
    scanf("%d",&n);

    for(i=1;i<=n*n;)
    {
        j=0;
        printf("\n");
        while(j<n)
        {
            j++;
            printf("%3d",i);
            i++;
        }
    }

    for(shift=0; shift<n; shift++)
    {
        for(i=1;i<=n;i++)
        {
            printf("\n%3d",i);
            a=i;
            for(j = 1; j < n; j++)
            {
                a=a+n+shift;
                if(a > (n+n*j))
                {
                    b = a%n;
                    a = j*n+b;
                }
                printf("%3d",a);
            }
        }
    }
    printf("\n");
    return 0;
}


