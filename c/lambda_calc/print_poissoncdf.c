#include <stdio.h>
#include <stdlib.h>

int main(void)
{
   FILE *f = NULL;
   double **a=NULL;
   double *b = NULL;
   int i = 0,j = 0;
   int prnt = 0, totprnt = 0; 
   int res = 0;
   
   a=(double **)malloc(1000*sizeof(double *));     
   for(i=0;i<1000;i++) { a[i]=(double *)malloc(2001*sizeof(double)); }
   
   f=fopen("poisscdf_crisp.dat","rb");
 
        //note the matrix is stored in column major form
   for(i=0;i<2001;i++)
      for(j=0;j<1000;j++) { 
          res = feof(f);
          if(res != 0) {printf("\nAfter %d line.\nERROR IN PARSING\n",i);break;}
          res = 0;
          fread(&(a[j][i]),sizeof(double),1,f);
       }
   fclose(f);
   f = NULL;   
        //prints in row major form   
   printf("//This file contains two big arrays. These arrays are used for the calculation of CDF.\n//Following two are declared in this file: \n//const double poisson_cdf_tab[PREDICT25_MAX_LAMBDAS][PREDICT25_MAX_SERVES]\n//const double z_tab[PREDICT25_MAX_NORM_CHART]. \n\n\n\n");
   printf("#ifndef _Include_PREDICT25TABLES\n#define _Include_PREDICT25TABLES\n\n\n\nnamespace predict25 {\n\n\n\n    enum predict25_cdf_max{\n        PREDICT25_MAX_LAMBDAS = 1000,\n        PREDICT25_MAX_SERVES = 2001,\n        PREDICT25_MAX_NORM_CHART = 5001\n    }; \n\n\n\n");
   printf("    const double poisson_cdf_tab[PREDICT25_MAX_LAMBDAS][PREDICT25_MAX_SERVES] = { \n");
   totprnt = 0;
   for(i=0;i<1000;i++) {
      printf("       {");
      totprnt += prnt; 
      for(j=0;j<2001;j++) {
         if((i < 999)&&(j == 2000)) prnt = printf("%lf},",a[i][j]);
         else if((i == 999)&&(j == 2000)) prnt = printf("%lf}",a[i][j]);
         else prnt = printf("%lf, ",a[i][j]);
         totprnt += prnt;
         if((j < 2000) && (totprnt >= 80)) { printf("\n        "); totprnt = 0;}
      }
      totprnt = 0;
      prnt = 0;
      printf("\n");
   }
   printf("    };\n\n\n");
   
   for(i=0;i<1000;i++) { free(a[i]); }
   free(a);
   a = NULL;

   b=(double *)malloc(5001*sizeof(double));
   f=fopen("normcdf_crisp.dat","rb");
   for(i=0;i<5001;i++) { fread(&(b[i]),sizeof(double),1,f); }
   fclose(f);
   
   printf("    const double z_tab[PREDICT25_MAX_NORM_CHART] = { \n"); 
   totprnt = 0;
   printf("        "); 
   for(i=0;i<5001;i++){
        if(i == 5000) {
		prnt = printf("%lf ",b[i]);
        }
        else {
		prnt = printf("%lf, ",b[i]);  
       }
	totprnt += prnt;
	if(totprnt >= 81) { printf("\n        "); totprnt = 0;}
   }
   printf("\n    };\n\n");
   printf("} //end of namespace predict25\n\n\n#endif // _Include_PREDICT25TABLES\n");
   free(b);
   b=NULL;
   return 0;
}

