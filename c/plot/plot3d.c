#include "plot.h"

extern const uint32_t default_color;

PLOT * open_3d_plot(void)
{
    int fd = -1;
    PLOT* p=(PLOT*)malloc(1*sizeof(PLOT));
    strcpy(p->filename, "PLOT_SPC_XXXXXXXXXX");
    strcpy(p->shlname, "PLOT_SHL_XXXXXXXXXX");

    fd = mkstemp((char*)(p->filename));
    if(fd != -1) {
        close(fd);
        fd = -1;
        p->plt=fopen(p->filename,"w+");
    } else {
        p->plt = NULL;
        return NULL;
    }

    fd = mkstemp((char*)(p->shlname));
    if(fd != -1) {
        close(fd);
        fd = -1;
        p->shell=fopen(p->shlname,"w+");
    } else {
        fclose(p->plt);
        p->plt = NULL;
        p->shell = NULL;
        return NULL;
    }

    p->mode=KEEP_GIVENCOLOR|PLOT_3D;
    p->pt_size = 0.005;
    p->color=default_color;
    strcpy((p->labels).xLabel, "x");
    strcpy((p->labels).yLabel, "y");
    strcpy((p->labels).zLabel, "z");
    p->maxColors = 0;
    p->pallete = NULL;
    p->title = NULL;
    p->tot_title = 0;
    return p;
}

PLOT * open_3d_plot_c(COLOR_T rgb)
{
    int fd = -1;
    PLOT* p=(PLOT*)malloc(1*sizeof(PLOT));
    strcpy(p->filename, "PLOT_SPC_XXXXXXXXXX");
    strcpy(p->shlname, "PLOT_SHL_XXXXXXXXXX");

    fd = mkstemp((char*)(p->filename));
    if(fd != -1) {
        close(fd);
        fd = -1;
        p->plt=fopen(p->filename,"w+");
    } else {
        p->plt = NULL;
        return NULL;
    }

    fd = mkstemp((char*)(p->shlname));
    if(fd != -1) {
        close(fd);
        fd = -1;
        p->shell=fopen(p->shlname,"w+");
    } else {
        fclose(p->plt);
        p->plt = NULL;
        p->shell = NULL;
        return NULL;
    }

    p->mode=KEEP_ONECOLOR|PLOT_3D;
    p->pt_size = 0.005;
    p->color=__COLOR_RGB(rgb);
    strcpy((p->labels).xLabel, "x");
    strcpy((p->labels).yLabel, "y");
    strcpy((p->labels).zLabel, "z");
    p->maxColors = 0;
    p->pallete = NULL;
    set_max_colors(p, 100);
    p->title = NULL;
    p->tot_title = 0;
    return p;
}

void plot_3d_uint64(PLOT * pl, uint64_t x,uint64_t y,uint64_t z)
{
    if(pl == NULL) return;
    fprintf(pl->plt,"%lu\t%lu\t%lu\t%u\n",x,y,z,pl->color);
}
void plot_3d_uint32(PLOT * pl, uint32_t x,uint32_t y,uint32_t z)
{
    if(pl == NULL) return;
    fprintf(pl->plt,"%u\t%u\t%u\t%u\n",x,y,z,pl->color);
}
void plot_3d_int64(PLOT * pl, int64_t x,int64_t y,int64_t z)
{
    if(pl == NULL) return;
    fprintf(pl->plt,"%ld\t%ld\t%ld\t%u\n",x,y,z,pl->color);
}
void plot_3d_int32(PLOT * pl, int32_t x, int32_t y,int32_t z)
{
    if(pl == NULL) return;
    fprintf(pl->plt,"%d\t%d\t%d\t%u\n",x,y,z,pl->color);
}
void plot_3d_double(PLOT * pl, double x, double y,double z)
{
    if(pl == NULL) return;
    fprintf(pl->plt,"%.20lf\t%.20lf\t%.20lf\t%u\n",x,y,z,pl->color);
}

void plot_3d_uint64_c(PLOT * pl, uint64_t x,uint64_t y,uint64_t z,COLOR_T rgb)
{
    if(pl == NULL) return;
    fprintf(pl->plt,"%lu\t%lu\t%lu\t%u\n",x,y,z,(pl->mode&KEEP_ONECOLOR==KEEP_ONECOLOR)?pl->color:__COLOR_RGB(rgb));
}
void plot_3d_uint32_c(PLOT * pl, uint32_t x,uint32_t y,uint32_t z,COLOR_T rgb)
{
    if(pl == NULL) return;
    fprintf(pl->plt,"%u\t%u\t%u\t%u\n",x,y,z,(pl->mode&KEEP_ONECOLOR==KEEP_ONECOLOR)?pl->color:__COLOR_RGB(rgb));
}
void plot_3d_int64_c(PLOT * pl, int64_t x,int64_t y,int64_t z,COLOR_T rgb)
{
    if(pl == NULL) return;
    fprintf(pl->plt,"%ld\t%ld\t%ld\t%u\n",x,y,z,(pl->mode&KEEP_ONECOLOR==KEEP_ONECOLOR)?pl->color:__COLOR_RGB(rgb));
}
void plot_3d_int32_c(PLOT * pl, int32_t x, int32_t y,int32_t z,COLOR_T rgb)
{
    if(pl == NULL) return;
    fprintf(pl->plt,"%d\t%d\t%d\t%u\n",x,y,z,(pl->mode&KEEP_ONECOLOR==KEEP_ONECOLOR)?pl->color:__COLOR_RGB(rgb));
}
void plot_3d_double_c(PLOT * pl, double x, double y,double z,COLOR_T rgb)
{
    if(pl == NULL) return;
    fprintf(pl->plt,"%.20lf\t%.20lf\t%.20lf\t%u\n",x,y,z,(pl->mode&KEEP_ONECOLOR==KEEP_ONECOLOR)?pl->color:__COLOR_RGB(rgb));
}
void set_min_max_3d(PLOT *pl, double minx, double maxx, double miny, double maxy, double minz, double maxz) {
    if(pl == NULL) return;

    pl->minx = minx;
    pl->maxx = maxx;
    pl->miny = miny;
    pl->maxy = maxy;
    pl->minz = minz;
    pl->maxz = maxz;
}
