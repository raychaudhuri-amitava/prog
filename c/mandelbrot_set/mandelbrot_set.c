#include<plot.h>
#include<complex.h>
#include<stdio.h>
#include<math.h>
#include<stdint.h>

int outofbound(double x)
{
    if(isnan(x) || isinf(x))
        return 1;
    return 0;
}

int plot_mandelbrot(double complex c,uint64_t final)
{
    uint64_t i=0;
    double complex z=0;
    double complex pz=0;

    for(i=0;i<=final;i++)
    {
        pz=z;
        z=pz*pz+c;
        if(outofbound(creal(z)) || outofbound(cimag(z)))
        {
            return 0;
        }
        else if(pz == z)
        {
            return 1;
        }
    }
    return 1;
}


int main(void)
{
    const float pi = 3.14159265358979323846;
    double complex c=0;
    double re=0.0,im=0.0;
    uint64_t final=10000;
    PLOT *pl=open_plot();
    set_mode(pl,KEEP_FILE|KEEP_SHELLFILE);
    set_plotfile(pl,"mandelbrot.dat");
    set_shellfile(pl,"mandelbrot.sh");

    for(re=-204.0;re<-200.0;re+=0.001)
    {
        for(im=90;im<94;im+=0.001)
        {
            c=re+I*im;
            if(plot_mandelbrot(c,final) == 1) {
                plot_double(pl,creal(c),cimag(c));
            }
        }
    }
    paint_plot(pl);
    close_plot(pl);
    return 0;
}

