#include<time.h>
#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>

time_t atot(const char* a) {

   time_t t = 0;
   int i = 0; 
   while(a[i] != '\0') { 
     t = t*10 +(a[i] - '0');
     i++;
   }
   return t;
}

int main(int argc, char ** argv) {
   if(argc<2) return 0;

   time_t t = atot(argv[1]);
 
   printf("%lu %d \n",t,sizeof(time_t));
   struct tm *gmtm = gmtime(&t);
   struct tm *loctm = localtime(&t);

   char s[2048] = {'\0'};

   strftime(s,2048,"%d/%m/%Y : %T",gmtm);
   printf("GMT = %s\n",s);
   strftime(s,2048,"%d/%m/%Y : %T",loctm);
   printf("LOCT = %s\n",s);

   return 0;
}
