#include <stdlib.h>
#include <time.h>
#include <assert.h>

#include <omp.h>


int main(int argc, char **argv)
{
    int i=0,j=0,k=0;
    int n=0;
    double temp=0.0;
    double start=0.0, end=0.0, run=0.0;

    printf("Enter dimension ('N' for 'NxN' matrix) (100-2000): ");
    scanf("%d", &n);

    assert( n >= 100 && n <= 2000 );

    int **arr1 = malloc( sizeof(int*) * n);
    int **arr2 = malloc( sizeof(int*) * n);
    int **arr3 = malloc( sizeof(int*) * n);

    for(i=0; i<n; ++i) {
        arr1[i] = malloc( sizeof(int) * n );
        arr2[i] = malloc( sizeof(int) * n );
        arr3[i] = malloc( sizeof(int) * n );
    }

    printf("Populating array with random values...\n"); 
    srand( time(NULL) );

    for(i=0; i<n; ++i) {
        for(j=0; j<n; ++j) {
            arr1[i][j] = (rand() % n);
            arr2[i][j] = (rand() % n);
        }
    }

    printf("Completed array init.\n");
    printf("Crunching without OMP...");
    fflush(stdout);
    start = omp_get_wtime();

    for(i=0; i<n; ++i) {
        for(j=0; j<n; ++j) {
            temp = 0;
            for(k=0; k<n; ++k) {
                temp += arr1[i][k] * arr2[k][j];
            }
            arr3[i][j] = temp;
        }
    }

    end = omp_get_wtime();
    printf(" took %f seconds.\n", end-start);
    printf("Crunching with OMP...");
    fflush(stdout);
    start = omp_get_wtime();

#pragma omp parallel for private(i, j, k, temp)
    for(i=0; i<n; ++i) {
        for(j=0; j<n; ++j) {
            temp = 0;
            for(k=0; k<n; ++k) {
                temp += arr1[i][k] * arr2[k][j];
            }
            arr3[i][j] = temp;
        }
    }


    end = omp_get_wtime();
    printf(" took %f seconds.\n", end-start);
//Not freeing since we are exiting.
    return 0;
}

    
