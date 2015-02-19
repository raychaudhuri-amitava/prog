#include<stdint.h>
#include<stdio.h>
#include<stdlib.h>

#include<plot.h>

int main(void)
{
    float i=0.0,j=0.0;
    PLOT * pl=open_plot();

    for(i=0;i<10.0;i+=0.01)
    {
        for(j=0;j<10.0;j+=0.01)
        {
            plot_double(pl,

