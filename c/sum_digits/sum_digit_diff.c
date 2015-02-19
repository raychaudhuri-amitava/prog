#include<stdio.h>
#include<stdint.h>
#include<stdlib.h>

int main(int argc,char**argv){
   uint64_t num = strtoul(argv[1],NULL,10);
   uint64_t sum = 0;
   for(sum=0;num>0||sum>9;){
       printf("before num = %u, before sum = %u, sum/10 = %u, sum%10 = %u, num%10 = %u, num/10 = %u,",num,sum,sum/10,sum%10,num%10,num/10);
       sum = sum/10 + sum%10 + num%10;
       num/=10;
       printf("after sum = %u, after num = %u\n",sum,num);
   }
   printf("final digit sum of %s = %u\n",argv[1],sum); 
   return 0;
}
