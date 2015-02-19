#include<stdio.h>
#include<stdlib.h>


int main(int argc, char ** argv)
{
   int i=0;
   FILE * fp=NULL;
   char filename[2000]={'\0'};
   char cmd[4000]={'\0'};

   int start = atoi(argv[1]);
   int end = atoi(argv[2]);

   for(i=start;i<=end;i++)
   {
       printf("Opening file %d\n",i);
       sprintf(filename,"./Amitava%d.txt",i);
       fp = fopen(filename,"w+");

       sprintf(cmd,"ls -l > %s",filename);
       system(cmd);
       //if(fp == NULL) return 1;
   }

   return 0;
}
