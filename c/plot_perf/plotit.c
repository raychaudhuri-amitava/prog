#include<plot.h>
#include<stdio.h>
#include<stdarg.h>

typedef struct
{
    int x;
    int y;
}flobj;

int main(int argc,char **argv)
{
    FILE *fp = fopen(argv[1],"r+");
    flobj a;

    PLOT *pl=open_plot();
    while(!feof(fp))
    {
        fscanf(fp,"%d\t%d",&(a.x),&(a.y));
        plot_int32(pl,a.x,a.y);
    }
    paint_plot(pl);
    close_plot(pl);

    return 0;
}



