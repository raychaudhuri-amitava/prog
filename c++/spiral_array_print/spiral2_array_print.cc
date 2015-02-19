#include <stdio.h>



#define HEIGHT 5
#define WIDTH 5

void printspiralmatrix(int a[HEIGHT][WIDTH])
{
}


int main(int argc, char* argv[])
{
    int a[HEIGHT][WIDTH]= {0};
        int k = 1;
        for(int i = 0;i<HEIGHT;i++) {
            for(int j = 0; j<WIDTH; j++) {
                a[i][j] = k; k++;
            }
        }
    printspiralmatrix(a);
        printf("\n\n");
    return 0;
}



