#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main(int argc, char ** argv)
{
   FILE *f = NULL;
   double **a=NULL;
   int i = 0,j = 0;
   int prnt = 0, totprnt = 0; 
   int res = 0;   
   uint32_t row = 0, col = 0;

   if(argc != 3) {
       return 0;
   }

   row = strtoul(argv[1], NULL, 10);
   col = strtoul(argv[2], NULL, 10);
   
   a=(double **)malloc(1000*sizeof(double *));     
   for(i=0;i<1000;i++) { a[i]=(double *)malloc(2001*sizeof(double)); }
   
   f=fopen("poisscdf_crisp.dat","rb");
 
   //note the matrix is stored in column major form
   for(i=0;i<2001;i++) {
      for(j=0;j<1000;j++) { 
          res = feof(f);
          if(res != 0) {printf("\nAfter %d line.\nERROR IN PARSING\n",i);break;}
          res = 0;
          fread(&(a[j][i]),sizeof(double),1,f);
       }
   }
   fclose(f);
   f = NULL;   
   printf("val = %f\n",a[row][col]); 
   for(i=0;i<1000;i++) { free(a[i]); }
   free(a);
   a = NULL;
   return 0;
}

