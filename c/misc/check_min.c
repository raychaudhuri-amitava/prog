#include<stdio.h>
#include<math.h>
#include<limits.h>

int main(void) {
    //int r[]={32, 47, 5500, 53, 50, 67, 32, 27, 47, 42};
    int r[]={32, 47, 55, 53, 50, 67, 32, 27, 47, 42};
    int d[]={37, 131, 134, 20, 52, 104, 65, 66, 129, 66};

    int sum_med_r = 0;
    int sum_med_d = 0;
    int sum = 0;
    int m = 131;
    int min_sum = INT_MAX;
    int min_m = INT_MAX;

    int i = 0;

    for(i = 0; i < 10; i++) {
        sum_med_r = sum_med_r + r[i]*abs(d[i] - m);
    }
    printf("sum from median of r : m = %d, sum = %d\n", m, sum_med_r);

    m = 66;

    for(i = 0; i < 10; i++) {
        sum_med_d = sum_med_d + r[i]*abs(d[i] - m);
    }
    printf("sum from median of d : m = %d, sum = %d\n", m, sum_med_d);

    for(m = 0; m < 256; m++) {
        sum = 0;
        for(i = 0; i < 10; i++) {
            sum = sum + r[i]*abs(d[i] - m);
        }
        if(sum < min_sum) {
            min_sum = sum;
            min_m = m;
        }
    }

    printf("min sum vals : m = %d, sum = %d\n", min_m, min_sum);


    return 0;
}

