#include<plot.h>
#include<complex.h>
#include<math.h>
#include<stdio.h>
#include<stdlib.h>
#include<time.h>

#ifndef VAR
#define VAR z
#endif

#ifndef FZSIZE
#define FZSIZE 1
#endif

#ifndef FZ
#define FZ fz
#endif

#ifndef EXPR
#define EXPR FZ[0] = csin(VAR)
#endif

#ifndef Z0
#define Z0 0.0+0.0*I
#endif

#ifndef MAX_R
#define MAX_R 1.0;
#endif


int main(void){

    double theta = 0.0, del_theta = 0.01;
    complex double VAR = 0.0;
    complex double FZ[FZSIZE];
    const double comp = 6.29;
    double R = MAX_R;
    uint32_t fzi = 0;
    double thickness = 0.01;
    double height = 0.0;
    COLOR_T rgb;
    srand(time(NULL));
    rgb.r = (rand()*255) % 256;
    rgb.g = (rand()*255) % 256;
    rgb.b = (rand()*255) % 256; 

    PLOT *pl = open_3d_plot();

    set_xlabel(pl, "real");
    set_ylabel(pl, "imag");
    set_zlabel(pl, "contour");
    add_partition(pl, "fz-argand plane");

    for(R = -MAX_R; R <= MAX_R; R+=thickness) {
        for(theta = 0.0;theta<=comp;theta+=del_theta) {
            VAR = Z0 + (R*(cos(theta) + I*sin(theta)));             
            EXPR;
            plot_3d_double_c(pl,creal(FZ[fzi]),cimag(FZ[fzi]),height,rgb);
        }
        rgb = get_contrast_color(rgb);
        height+=1.0;
    }

    paint_plot(pl);
    close_plot(pl);

    return 0;
}
