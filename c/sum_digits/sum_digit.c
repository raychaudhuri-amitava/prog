#include<stdio.h>
#include<stdint.h>
#include<stdlib.h>

#define SUM32_DIGITS(num) (((num)/10000000000)%10 + \
           ((num)/1000000000)%10 + \
           ((num)/100000000)%10 + \
           ((num)/10000000)%10 + \
           ((num)/1000000)%10 + \
           ((num)/100000)%10 + \
           ((num)/10000)%10 + \
           ((num)/1000)%10 + \
           ((num)/100)%10 + \
           ((num)/10)%10 + \
           ((num)/1)%10)

#define SUM32_ONEDIGIT(val) { for (val = SUM32_DIGITS(val); val > 9; val = SUM32_DIGITS(val));}

int main(int argc,char**argv){
   uint32_t num = atoi(argv[1]);
   SUM32_ONEDIGIT(num);
   printf("%u == sum of all digits of %s\n", num, argv[1]);
   return 0;
}
