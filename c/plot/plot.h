#ifndef __PLOT_H__
#define __PLOT_H__

#ifdef __cplusplus
#include<cstdio>
#include<cstdlib>
#include<stdint.h>
#include<cstring>
#include<cmath>
#else
#include<stdio.h>
#include<stdlib.h>
#include<stdint.h>
#include<string.h>
#include<math.h>
#endif

#ifdef __cplusplus
extern "C"
{
#endif

#define LABEL_SIZE 1024

#define TO_STR(x) #x

#define CAT(x, y) x ## y
#define XCAT(x,y) CAT(x, y)

#define PRINT_PLOT(pl,ptfmt,x,y) \
if((pl->mode & PLOT_3D) == INVALID_MODE) { \
fprintf(pl->plt,TO_STR(ptfmt)"\t"TO_STR(ptfmt)"\t%u\n",x,y,pl->color); \
} \
else \
{ \
fprintf(pl->plt,TO_STR(ptfmt)"\t"TO_STR(ptfmt)"\t%u\t%u\n",x,y,0,pl->color); \
} 


#define PRINT_PLOT_COLOR(pl,ptfmt,x,y,color) \
if((pl->mode & PLOT_3D) == INVALID_MODE) { \
fprintf(pl->plt,TO_STR(ptfmt)"\t"TO_STR(ptfmt)"\t%u\n",x,y,(color)); \
} \
else \
{ \
fprintf(pl->plt,TO_STR(ptfmt)"\t"TO_STR(ptfmt)"\t%u\t%u\n",x,y,0,(color)); \
} 

#define setLabel(x) \
void XCAT(XCAT(set_,x),label)(PLOT *pl, const char* label) { \
if((pl == NULL) || (label == NULL)) return; \
if(strlen(label) > (LABEL_SIZE - 1)) return; \
strcpy((pl->labels).XCAT(x,Label), label); \
}

#define __COLOR(r,g,b) (((uint32_t)(r) << 16) + ((uint32_t)(g) << 8) + ((uint32_t)(b) << 0))
#define __COLOR_RGB(rgb) (((uint32_t)(rgb.r) << 16) + ((uint32_t)(rgb.g) << 8) + ((uint32_t)(rgb.b) << 0))

#define RED_MASK   0x00FF0000
#define GREEN_MASK 0x0000FF00
#define BLUE_MASK  0x000000FF


typedef enum MODE
{
    INVALID_MODE=0x00,
    KEEP_FILE=0x01,
    KEEP_SHELLFILE=0x02,
    KEEP_ONECOLOR=0x04,
    KEEP_GIVENCOLOR=0x08,
    KEEP_RANGE=0x10,
    KEEP_LINE=0x20,
    PLOT_3D=0x40
}MODE;

typedef struct LABEL_T
{
    char xLabel[LABEL_SIZE];
    char yLabel[LABEL_SIZE];
    char zLabel[LABEL_SIZE];
} LABEL_T;

typedef struct COLOR_T
{
    uint8_t r;
    uint8_t g;
    uint8_t b;
}COLOR_T;

typedef struct PLOT
{
    FILE * plt;
    FILE * shell;
    char filename[L_tmpnam];
    char shlname[L_tmpnam];
    char *jpegFile;
    MODE mode;
    uint32_t color;
    double minx;
    double maxx;
    double miny;
    double maxy;
    double minz;
    double maxz;
    uint32_t maxColors;
    uint32_t times;
    double pt_size;
    uint32_t tot_title;
    char** title;
    COLOR_T *pallete;
    LABEL_T labels;   
} PLOT;

PLOT * open_plot(void);
PLOT * open_plot_c(COLOR_T color);

PLOT * open_3d_plot(void);
PLOT * open_3d_plot_c(COLOR_T color);

/* Without color */
void plot_uint64(PLOT * pl, uint64_t x,uint64_t y);
void plot_uint32(PLOT * pl, uint32_t x,uint32_t y);
void plot_int64(PLOT * pl, int64_t x,int64_t y);
void plot_int32(PLOT * pl, int32_t x, int32_t y);
void plot_double(PLOT * pl, double x, double y);
/* With Color */
void plot_uint64_c(PLOT * pl, uint64_t x,uint64_t y,COLOR_T rgb);
void plot_uint32_c(PLOT * pl, uint32_t x,uint32_t y,COLOR_T rgb);
void plot_int64_c(PLOT * pl, int64_t x,int64_t y,COLOR_T rgb);
void plot_int32_c(PLOT * pl, int32_t x, int32_t y,COLOR_T rgb);
void plot_double_c(PLOT * pl, double x, double y,COLOR_T rgb);

/* Without color */
void plot_3d_uint64(PLOT * pl, uint64_t x,uint64_t y,uint64_t z);
void plot_3d_uint32(PLOT * pl, uint32_t x,uint32_t y,uint32_t z);
void plot_3d_int64(PLOT * pl, int64_t x,int64_t y,int64_t z);
void plot_3d_int32(PLOT * pl, int32_t x, int32_t y,int32_t z);
void plot_3d_double(PLOT * pl, double x, double y,double z);
/* With Color */
void plot_3d_uint64_c(PLOT * pl, uint64_t x,uint64_t y,uint64_t z,COLOR_T rgb);
void plot_3d_uint32_c(PLOT * pl, uint32_t x,uint32_t y,uint32_t z,COLOR_T rgb);
void plot_3d_int64_c(PLOT * pl, int64_t x,int64_t y,int64_t z,COLOR_T rgb);
void plot_3d_int32_c(PLOT * pl, int32_t x, int32_t y,int32_t z,COLOR_T rgb);
void plot_3d_double_c(PLOT * pl, double x, double y,double z,COLOR_T rgb);

void paint_plot(PLOT * pl);

void write_shell(PLOT * pl);
void add_partition(PLOT * pl, const char* title);
void set_mode(PLOT * pl,MODE mode);
void set_jpegfile(PLOT * pl,const char *file);
void set_xlabel(PLOT *pl, const char* label);
void set_ylabel(PLOT *pl, const char* label);
void set_point_size(PLOT *pl,double sz);
void set_zlabel(PLOT *pl, const char* label);
void set_min_max_2d(PLOT *pl, double minx, double maxx, double miny, double maxy);
void set_min_max_3d(PLOT *pl, double minx, double maxx, double miny, double maxy, double minz, double maxz);
void set_plotfile(PLOT *pl,char name[L_tmpnam]);
void set_shellfile(PLOT *pl,char name[L_tmpnam]);
void copytofile(PLOT *pl,char newname[L_tmpnam]);
void close_plot(PLOT * pl);
void closefile(FILE * fp);
void joinplots(PLOT * pl, PLOT **pls, uint64_t size);
void joinmanyplots(PLOT * pl, PLOT **pls, uint64_t size);

/* Color related functions */
void set_max_colors(PLOT * pl, uint32_t maxCols);
COLOR_T get_next_color(PLOT * pl);
COLOR_T add_color(COLOR_T rgb,uint8_t inc,uint32_t *times);
COLOR_T get_contrast_color(COLOR_T rgb);

#ifdef __cplusplus
}
#endif
#endif /* __PLOT_H__ */
