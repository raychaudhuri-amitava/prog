#include<stdint.h>
#include<stdio.h>
#include<stdlib.h>
#include<math.h>

#include<plot.h>

int isPrime(uint64_t num)
{
    uint64_t actual_end = 0;//(uint32_t)sqrt(num);
    uint64_t i=0;

    switch(num)
    {
        case 1: return 0;
                break;
        case 2: return 1;
                break;
        case 3: return 1;
                break;
        case 5: return 1;
                break;
        case 7: return 1;
                break;
        case 11: return 1;
                 break;
        case 13: return 1;
                 break;
        case 17: return 1;
                 break;
        case 19: return 1;
                 break;
        case 23: return 1;
                 break;
        case 29: return 1;
                 break;
        case 31: return 1;
                 break;
        case 37: return 1;
                 break;
        case 41: return 1;
                 break;
        case 43: return 1;
                 break;
        default:
                 break;
    }

    if(num<=44) return 0;

   actual_end = (uint32_t)sqrt(num)+1;

    for(i=2;i<=actual_end;i++)
    {
        if(num % i == 0)
            return 0;
    }
    return 1;
}

int64_t * eratosthenes_sieve(uint64_t start,uint64_t end, uint64_t *len)
{
    uint64_t *sieve=(uint64_t *)malloc(1*sizeof(uint64_t));
    uint64_t i=0;
    uint64_t k=0;

    i=start;
    if(start == 1)
        i=2;
    for(;i<=end;i++)
    {
        if(isPrime(i)==1)
        {
            sieve=(uint64_t *)realloc(sieve,(k+1)*sizeof(uint64_t));
            sieve[k]=i;
            k++;
        }
    }

    if(len!=NULL) 
    {
        *len = k;
    }

    return sieve;
}

int main(void)
{
    uint64_t lenp=0;
    uint64_t * p = eratosthenes_sieve(1,10000000,&lenp);
    uint64_t i=0;
    printf("lenp = %lu\n",lenp);
    PLOT * pl=open_plot();
    set_mode(pl,KEEP_FILE|KEEP_SHELLFILE);
    for(i=0;i<lenp;i++)
    {
        plot_uint64(pl,i,p[i]);       
    }
    set_plotfile(pl,"prime.dat");
    set_shellfile(pl,"primeplt.sh");
    paint_plot(pl);
    close_plot(pl);
    pl=NULL;
    
    pl=open_plot();
    set_mode(pl,KEEP_FILE|KEEP_SHELLFILE);
    for(i=0;i<lenp-1;i++)
    {
        plot_uint64(pl,i,p[i+1]-p[i]);
    }
    set_plotfile(pl,"prime_diff.dat");
    set_shellfile(pl,"primediff.sh");
    paint_plot(pl);
    close_plot(pl);


    free(p);
    p=NULL;
    return 0;
}

