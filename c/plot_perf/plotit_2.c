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
    FILE *fp1 = fopen(argv[1],"r+");
    FILE *fp2 = fopen(argv[2],"r+");
    flobj a;

    PLOT *pl=open_plot();
    while(!feof(fp1))
    {
        fscanf(fp1,"%d\t%d",&(a.x),&(a.y));
        plot_int32(pl,a.x,a.y);
    }

    while(!feof(fp2))
    {
        fscanf(fp2,"%d\t%d",&(a.x),&(a.y));
        plot_int32(pl,a.x,a.y);
    }
    paint_plot(pl);
    close_plot(pl);

    return 0;
}



