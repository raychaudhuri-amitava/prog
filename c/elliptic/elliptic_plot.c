#include<plot.h>
#include<math.h>

int main(void)
{
    PLOT * pp=open_plot();

    double x=0;

    for(x=-2;x<=2;x+=0.001)
    {
        if((x*x*x-x)>=0)
        {
            plot_double(pp,x,sqrt(x*x*x-x));
            plot_double(pp,x,-sqrt(x*x*x-x));
        }
      /*  else
        {
            plot_double(pp,x,0);
        }*/
    }

    paint_plot(pp);
    close_plot(pp);
    return 0;
}

