#include "plot.h"

#define min(x, y) ((x) < (y) ? (x) : (y))
#define max(x, y) ((x) > (y) ? (x) : (y))

const uint32_t default_color = __COLOR(127,127,127); /*Default color is something. */

PLOT * open_plot(void)
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
    p->mode=KEEP_GIVENCOLOR;
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

PLOT * open_plot_c(COLOR_T rgb)
{
    int fd = -1;
    PLOT* p=(PLOT*)malloc(1*sizeof(PLOT));
    strcpy(p->filename, "PLOT_SPC_XXXXXXXXXX");
    strcpy(p->shlname, "PLOT_SHL_XXXXXXXXXX");

    fd = mkstemp((char *)(p->filename));
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
    p->mode=KEEP_ONECOLOR;
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

void plot_uint64(PLOT * pl, uint64_t x,uint64_t y)
{
    if(pl == NULL) return;
    PRINT_PLOT(pl,%lu,x,y);
}
void plot_uint32(PLOT * pl, uint32_t x,uint32_t y)
{
    if(pl == NULL) return;
    PRINT_PLOT(pl,%u,x,y);
}
void plot_int64(PLOT * pl, int64_t x,int64_t y)
{
    if(pl == NULL) return;
    PRINT_PLOT(pl,%ld,x,y);
}
void plot_int32(PLOT * pl, int32_t x, int32_t y)
{
    if(pl == NULL) return;
    PRINT_PLOT(pl,%d,x,y);
}
void plot_double(PLOT * pl, double x, double y)
{
    if(pl == NULL) return;
    PRINT_PLOT(pl,%.20lf,x,y);
}

void plot_uint64_c(PLOT * pl, uint64_t x,uint64_t y,COLOR_T rgb)
{
    if(pl == NULL) return;
    PRINT_PLOT_COLOR(pl,%lu,x,y,(pl->mode&KEEP_ONECOLOR==KEEP_ONECOLOR)?pl->color:__COLOR_RGB(rgb));
}
void plot_uint32_c(PLOT * pl, uint32_t x,uint32_t y,COLOR_T rgb)
{
    if(pl == NULL) return;
    PRINT_PLOT_COLOR(pl,%u,x,y,(pl->mode&KEEP_ONECOLOR==KEEP_ONECOLOR)?pl->color:__COLOR_RGB(rgb));
}
void plot_int64_c(PLOT * pl, int64_t x,int64_t y,COLOR_T rgb)
{
    if(pl == NULL) return;
    PRINT_PLOT_COLOR(pl,%ld,x,y,(pl->mode&KEEP_ONECOLOR==KEEP_ONECOLOR)?pl->color:__COLOR_RGB(rgb));
}
void plot_int32_c(PLOT * pl, int32_t x, int32_t y,COLOR_T rgb)
{
    if(pl == NULL) return;
    PRINT_PLOT_COLOR(pl,%d,x,y,(pl->mode&KEEP_ONECOLOR==KEEP_ONECOLOR)?pl->color:__COLOR_RGB(rgb));
}
void plot_double_c(PLOT * pl, double x, double y,COLOR_T rgb)
{
    if(pl == NULL) return;
    PRINT_PLOT_COLOR(pl,%.20lf,x,y,(pl->mode&KEEP_ONECOLOR==KEEP_ONECOLOR)?pl->color:__COLOR_RGB(rgb));
}

void paint_plot(PLOT * pl)
{
    char startcmd[]="gnuplot -persist ";
    char * cmd = (char *)malloc((strlen(startcmd)+strlen(pl->shlname)+5)*sizeof(char));

    if(pl == NULL) return;

    write_shell(pl);

    closefile(pl->plt);
    pl->plt=NULL;
    closefile(pl->shell);
    pl->shell=NULL;

    pl->plt=fopen(pl->filename,"a+");
    pl->shell=fopen(pl->shlname,"a+");

    strcpy(cmd,startcmd);
    strcat(cmd,pl->shlname);
    if(system(cmd) != 0) {
        printf("Not able to execute the gnuplot command.\n");
    }

    free(cmd);
    cmd=NULL;
}

void write_shell(PLOT * pl)
{

    uint32_t i = 0;
    fprintf(pl->shell,"#!/usr/bin/gnuplot -persist\n");
    if((pl->mode & KEEP_LINE) == INVALID_MODE) {
        fprintf(pl->shell,"set style data dots\n");
        fprintf(pl->shell,"set pointsize %f\n", pl->pt_size);
    }

    fprintf(pl->shell,"set autoscale\n");
    fprintf(pl->shell,"set key spacing 1.3\n");
    fprintf(pl->shell,"set key box\n");

    if((pl->mode & KEEP_RANGE) == INVALID_MODE) {
        fprintf(pl->shell,"set size ratio -1\n");
        fprintf(pl->shell,"set zeroaxis\n");
        fprintf(pl->shell,"set origin 0,0\n");
    }
    else {
        if((pl->mode & PLOT_3D) == INVALID_MODE) {
            fprintf(pl->shell,"set xtic auto\n");
            fprintf(pl->shell,"set ytic auto\n");
            fprintf(pl->shell,"set xtic rotate by -90\n");
            fprintf(pl->shell,"set xrange [%f:%f]\n", pl->minx, pl->maxx);
            fprintf(pl->shell,"set yrange [%f:%f]\n", pl->miny, pl->maxy);
        }
        else {
            fprintf(pl->shell,"set xrange [%f:%f]\n", pl->minx, pl->maxx);
            fprintf(pl->shell,"set yrange [%f:%f]\n", pl->miny, pl->maxy);
            fprintf(pl->shell,"set zrange [%f:%f]\n", pl->minz, pl->maxz);
        }
    }

    if(pl->jpegFile != NULL) {
        fprintf(pl->shell,"set term jpeg giant\n");
        if(strchr(pl->jpegFile,'/') != NULL)
        {
            fprintf(pl->shell,"set output \"%s\"\n",pl->jpegFile);
        }
        else
        {
            fprintf(pl->shell,"set output \"%s/%s\"\n",getenv("PWD"),pl->jpegFile);
        }
    }
    char plotst[10]={'\0'};
    if((pl->mode & KEEP_LINE) == INVALID_MODE) {
        plotst[0] = 'p';
        plotst[1] = 'o';
        plotst[2] = 'i';
        plotst[3] = 'n';
        plotst[4] = 't';
        plotst[5] = 's';
    } else {
        plotst[0] = 'l';
        plotst[1] = 'i';
        plotst[2] = 'n';
        plotst[3] = 'e';
        plotst[4] = 's';
    }
    if((pl->mode & PLOT_3D) == INVALID_MODE) { 
        fprintf(pl->shell,"set xlabel \"%s\"; set ylabel \"%s\";\n", (pl->labels).xLabel, (pl->labels).yLabel);
        if((strchr(pl->filename,'/') != NULL))
        {
            if(pl->tot_title == 0) {
                fprintf(pl->shell,"plot \"%s\" using 1:2:3 notitle with %s lc rgb variable\n",pl->filename, plotst);
            } else {
                fprintf(pl->shell,"plot \"%s\" index %u:%u using 1:2:3 ti \"%s\" with %s lc rgb variable",pl->filename, i, i, (pl->title)[i], plotst);
                for(i = 1; i < pl->tot_title; ++i) {
                    fprintf(pl->shell,", \"%s\" index %u:%u using 1:2:3 ti \"%s\"with %s lc rgb variable",pl->filename, i, i, (pl->title)[i], plotst);
                }
                fprintf(pl->shell,"\n");
            }
        }
        else /* Add pwd to it */
        {
            fprintf(pl->shell,"plot \"%s/%s\" using 1:2:3 notitle with %s lc rgb variable\n",getenv("PWD"),pl->filename, plotst);
        }
    }
    else
    {
        fprintf(pl->shell,"set xlabel \"%s\"; set ylabel \"%s\"; set zlabel \"%s\"\n", (pl->labels).xLabel, (pl->labels).yLabel, (pl->labels).zLabel);
        if(strchr(pl->filename,'/') != NULL)
        {
            if(pl->tot_title == 0) {
                fprintf(pl->shell,"splot \"%s\" using 1:2:3:4 notitle with %s lc rgb variable\n",pl->filename, plotst);
            } else {
                fprintf(pl->shell,"splot \"%s\" index %u:%u using 1:2:3:4 ti \"%s\" with %s lc rgb variable",pl->filename, i, i, (pl->title)[i], plotst);
                for(i = 1; i < pl->tot_title; ++i) {
                    fprintf(pl->shell,", \"%s\" index %u:%u using 1:2:3:4 ti \"%s\"with %s lc rgb variable",pl->filename, i, i, (pl->title)[i], plotst);
                }
                fprintf(pl->shell,"\n");
            }
            /*fprintf(pl->shell,"splot \"%s\" using 1:2:3:4 notitle with %s lc rgb variable\n",pl->filename, plotst);*/
        }
        else /* Add pwd to it */
        {
            fprintf(pl->shell,"splot \"%s/%s\" using 1:2:3:4 notitle with %s lc rgb variable\n",getenv("PWD"),pl->filename, plotst);
        }
    }
}

void close_plot(PLOT * pl)
{
    if(pl == NULL) return;
    uint32_t i = 0;
    closefile(pl->plt);
    pl->plt=NULL;
    closefile(pl->shell);
    pl->shell=NULL;
    if((pl->mode & KEEP_FILE) == 0x00)
    {
        remove(pl->filename);
    }

    if((pl->mode & KEEP_SHELLFILE) == 0x00)
    {
        remove(pl->shlname);
    }
    free(pl->jpegFile);
    free(pl->pallete);
    pl->pallete = NULL;
    for(i = 0; i < pl->tot_title; ++i) {
        free((pl->title)[i]);
    }
    free(pl->title);
    free(pl);
}

void set_mode(PLOT * pl, MODE mode)
{
    if(pl == NULL) return;
    pl->mode|=mode;
}

void set_jpegfile(PLOT * pl, const char *file)
{
    if(pl == NULL) return;
    pl->jpegFile = (char *) malloc((strlen(file) + 1) * sizeof(char));
    if(pl->jpegFile == NULL) return;
    strcpy(pl->jpegFile, file);
}

setLabel(x);
setLabel(y);
setLabel(z);

void set_min_max_2d(PLOT *pl, double minx, double maxx, double miny, double maxy) {
    if(pl == NULL) return;
    pl->minx = minx;
    pl->maxx = maxx;
    pl->miny = miny;
    pl->maxy = maxy;
}

void set_point_size(PLOT *pl,double sz) {
    pl->pt_size = sz;
}

void set_plotfile(PLOT *pl,char name[L_tmpnam])
{ 
    if(pl == NULL) return;
    closefile(pl->plt);
    pl->plt=NULL;
    copytofile(pl,name);
    remove(pl->filename);
    strcpy(pl->filename,name);
    pl->plt=fopen(pl->filename,"a+");
    write_shell(pl);
}

void set_shellfile(PLOT *pl,char name[L_tmpnam])
{
    if(pl == NULL) return;
    closefile(pl->shell);
    pl->shell=NULL;
    remove(pl->shlname);
    strcpy(pl->shlname,name);
    pl->shell=fopen(pl->shlname,"w+");
    write_shell(pl);
}

void closefile(FILE * fp)
{
    if(fp == NULL) return;
    fclose(fp);
}

void copytofile(PLOT *pl,char newname[L_tmpnam])
{
    char initial_cmd[]="cp ";
    char *cmd=(char *)malloc(((sizeof initial_cmd) + (strlen(pl->filename))+(strlen(newname)+10))*sizeof(char));
    sprintf(cmd,"%s %s %s",initial_cmd,pl->filename,newname);
    if(system(cmd) != 0) {
        printf("Not able to create the persistent shell file\n");
    }
    free(cmd);
}

void joinplots(PLOT * pl, PLOT **pls, uint64_t size)
{
    uint64_t i = 0;
    char *cmd = (char *)malloc(5*sizeof(char));
    if(pl == NULL) return;
    if(pls == NULL) return;
    
    sprintf(cmd,"%s","cat ");
    for(i=0;i<size;i++) {
        cmd = (char *)realloc(cmd,((strlen(cmd))+(strlen((pls[i])->filename))+2)*sizeof(char));
        sprintf(cmd,"%s ",(pls[i])->filename);
    }
    cmd = (char *)realloc(cmd,((strlen(cmd))+(strlen(pl->filename))+3)*sizeof(char));
    sprintf(cmd,"> %s",pl->filename);
    if(system(cmd) != 0) {
        printf("Not able to generate the cat data file\n");
    }
    free(cmd);
}

void joinmanyplots(PLOT * pl, PLOT **pls, uint64_t size)
{
    uint64_t i = 0;
    char initial_cmd[]="cat ";
    char *cmd = NULL;

    if(pl == NULL) return;
    if(pls == NULL) return;

    for(i=0;i<size;i++) {
        cmd = (char *)malloc(((sizeof initial_cmd)+(strlen((pls[i])->filename))+strlen(pl->filename)+5)*sizeof(char));
        sprintf(cmd,"%s%s >> %s",initial_cmd,(pls[i])->filename,pl->filename);
	    if(system(cmd) != 0) {
            printf("Not able to cat the gnu command files\n");
        }
        free(cmd);
        cmd = NULL;
    }
}

double Hue_2_RGB(double v1, double v2, double vH)             //Function Hue_2_RGB
{
   if(vH < 0.0){
       vH += 1;
   }
   if(vH > 1.0) {
       vH -= 1;
   }
   if((6 * vH) < 1){
       return v1 + (v2 - v1) * 6 * vH;
   }
   if((2 * vH) < 1){
       return v2;
   }
   if((3 * vH) < 2) {
       return v1 + (v2 - v1) * ((2 / 3) - vH) * 6;
   }

   return v1;
}

void set_max_colors(PLOT* pl, uint32_t maxCols) {
    uint32_t i = 0;
    double H = 0.0;
    double S = 0.0;
    double L = 0.0;
    double var_R = (double)((double)(((pl->color)&RED_MASK)>>16)/255.0);
    double var_G = (double)((double)(((pl->color)&GREEN_MASK)>>8)/255.0);
    double var_B = (double)((double)((pl->color)&BLUE_MASK)/255.0);
    double var_Min = (var_R < var_G) ? ((var_R < var_B) ? var_R : var_B) : ((var_G < var_B) ? var_G : var_B);
    double var_Max = (var_R > var_G) ? ((var_R > var_B) ? var_R : var_B) : ((var_G > var_B) ? var_G : var_B);
    double del_Max = var_Max - var_Min;
    double del_R = 0.0, del_G = 0.0, del_B = 0.0;
    double delH = 1.0;
    double delS = 1.0;
    double delL = 1.0;
    double R = 0.0, G = 0.0, B = 0.0;
    double var_1 = 0.0, var_2 = 0.0;
    pl->maxColors = maxCols;
    delH = (double)(360.0 / (double)(pl->maxColors));
    delS = (double)(1.0 / (double)(pl->maxColors));
    delL = (double)(1.0 / (double)(pl->maxColors));
    pl->times = 0;
    free(pl->pallete);
    pl->pallete = NULL;
    L = (var_Max + var_Min)/2;
    if(del_Max == 0) {
        H = 0;
        S = 0;
    } else {
        if ( L < 0.5 ) {
           S = del_Max / (var_Max + var_Min);
        }
        else {
            S = del_Max / (2 - var_Max - var_Min);
        }
        del_R = (((var_Max - var_R) / 6) + (del_Max / 2)) / del_Max;
        del_G = (((var_Max - var_G) / 6) + (del_Max / 2)) / del_Max;
        del_B = (((var_Max - var_B) / 6) + (del_Max / 2)) / del_Max;
        
        if(var_R == var_Max) {
            H = del_B - del_G;
        }
        else if(var_G == var_Max) {
            H = (1 / 3) + del_R - del_B;
        }
        else if(var_B == var_Max) {
            H = (2 / 3) + del_G - del_R;
        }
        if(H < 0) {
            H += 1.0;
        }
        if(H > 1){
            H -= 1.0;
        }
    }
    if(i % 3 == 1) {
        S +=delS;
        if(S > 1.0) { 
            S = 0.0;
        }
    }
    else if(i % 3 == 2) {
        L += delL;
        if(L > 1.0) { 
            L = 0.0;
        }
    } 
    H += delH;
    if(H > 360.0) {
        H = 0;
    }
    pl->pallete = (COLOR_T*) malloc(pl->maxColors * sizeof(COLOR_T));
    for(i = 1; i <= pl->maxColors; ++i) {
        if (S == 0.0)                       //HSL from 0 to 1
        {
            R = L * 255.0;                      //RGB results from 0 to 255
            G = L * 255.0;
            B = L * 255.0;
        } else {
            if (L < 0.5) {
                var_2 = L * (1.0 + S);
            }
            else{
                var_2 = (L + S) - (S * L);
            }
            var_1 = 2 * L - var_2;
            R = 255 * Hue_2_RGB(var_1, var_2, H + (1 / 3));
            G = 255 * Hue_2_RGB(var_1, var_2, H);
            B = 255 * Hue_2_RGB(var_1, var_2, H - (1 / 3));
        }
        ((pl->pallete)[i-1]).r = (uint8_t)((uint32_t)(R));
        ((pl->pallete)[i-1]).g = (uint8_t)((uint32_t)(G));
        ((pl->pallete)[i-1]).b = (uint8_t)((uint32_t)(B));
        if(i % 3 == 1) {
            S +=delS;
            if(S > 1.0) { 
                S = 0.0;
            }
        }
        else if(i % 3 == 2) {
            L += delL;
            if(L > 1.0) { 
                L = 0.0;
            }
        } 
        H += delH;
        if(H > 360.0) {
            H = 0;
        }
    }
}


COLOR_T get_next_color(PLOT * pl)
{
    COLOR_T rgb;
    if(pl->pallete == NULL) {
        rgb.r = (uint8_t)((pl->color & RED_MASK) >> 16);
        rgb.g = (uint8_t)((pl->color & GREEN_MASK) >> 8);
        rgb.b = (uint8_t)((pl->color & BLUE_MASK) >> 0);
        return rgb;
    }

    if(pl->times >= pl->maxColors) {
        pl->times = 0;
    }
    (pl->times)++;
	  return (pl->pallete)[(pl->times) - 1];
}

COLOR_T add_color(COLOR_T rgb,uint8_t inc,uint32_t *times) 
{
    if(times == NULL) return rgb;
    switch((*times)%3) {
    case 0:
        if(rgb.r < 0xFF)rgb.r+=inc;
        else rgb.r = 0;
        break;
    case 1:
        if(rgb.g < 0xFF)rgb.g+=inc;
        else rgb.g = 0;
        break;
    case 2:
        if(rgb.b < 0xFF)rgb.b+=inc;
        else rgb.b = 0;
        break;
    default: break;
    }
    (*times)++;
    if(*times >= (uint32_t)(0xFFFFFFFF)) *times = 0;
    return rgb;
}


COLOR_T get_contrast_color(COLOR_T rgb)
{
    double R = (double)rgb.r;
    double G = (double)rgb.g;
    double B = (double)rgb.b;
    double H = 0.0;
    double S = 0.0;
    double L = 0.0;
    double mn = 0.0;
    double mx = 0.0;
    double temp_1 = 0.0;
    double temp_2 = 0.0;
    double temp_r = 0.0;
    double temp_g = 0.0;
    double temp_b = 0.0;

    R = R/255.0;
    G = G/255.0;
    B = B/255.0;

    mn = min(min(R, G), B);
    mx = max(max(R, G), B);
     
    L = (mn + mx) / 2.0;

    if(L < 0.5) {
        S = (mx - mn) / (mx + mn);
    } else {
        S = (mx - mn) / (2.0 - mx - mn);
    }

    if(fabs(mx - R) < 0.00001) {
        H = (G - B) / (mx - mn);
    } else if(fabs(mx - G) < 0.00001) { 
        H = 2.0 + ((B - R) / (mx - mn));
    } else {
        H = 4.0 + ((R - G) / (mx - mn));
    }

    L += 0.001;
    if(L > 1.0) {
        L = 0.01;
        S += 0.01;
        if(S > 1.0) {
            S = 0.01;
            H += 1.0;
            if(H > 359) {
                H = 1.0;
            }
        }
    }


    if(fabs(S - 0.0) < 0.00001) {
        R = G = B = L*255;
    } else {
        if(L < 0.5) {
            temp_1 = L * (1.0 + S);
        } else {
            temp_1 = L + S - (L * S);
        }
        temp_2 = 2*L - temp_1;
        H = H / 360;

        temp_r = H + 0.333;
        if(temp_r < 0.0) {
            temp_r += 1.0;
        } else {
            temp_r -= 1.0;
        }

        temp_g = H ;
        if(temp_g < 0.0) {
            temp_g += 1.0;
        } else {
            temp_g -= 1.0;
        }

        temp_b = H - 0.333;
        if(temp_b < 0.0) {
            temp_b += 1.0;
        } else {
            temp_b -= 1.0;
        }

        if(6.0*temp_r < 1.0) {
            R = temp_2 + (temp_1 - temp_2) * 6.0 * temp_r;
        } else if(2.0 * temp_r < 1.0) {
            R = temp_1;
        } else if(3.0 * temp_r < 2.0) {
            R = temp_2 + (temp_1 - temp_2) * (0.666 - temp_r) * 6.0;
        } else {
            R = temp_2;
        }

        if(6.0*temp_g < 1.0) {
            G = temp_2 + (temp_1 - temp_2) * 6.0 * temp_g;
        } else if(2.0 * temp_g < 1.0) {
            G = temp_1;
        } else if(3.0 * temp_g < 2.0) {
            G = temp_2 + (temp_1 - temp_2) * (0.666 - temp_g) * 6.0;
        } else {
            G = temp_2;
        }

        if(6.0*temp_b < 1.0) {
            B = temp_2 + (temp_1 - temp_2) * 6.0 * temp_b;
        } else if(2.0 * temp_b < 1.0) {
            B = temp_1;
        } else if(3.0 * temp_b < 2.0) {
            B = temp_2 + (temp_1 - temp_2) * (0.666 - temp_b) * 6.0;
        } else {
            B = temp_2;
        }
    }
    rgb.r = (uint8_t)(R * 255); 
    rgb.g = (uint8_t)(G * 255); 
    rgb.b = (uint8_t)(B * 255); 
    return rgb;
}
    
void add_partition(PLOT * pl, const char* title) {
    if((pl == NULL) || (title == NULL)) return;
    pl->title = (char**) realloc(pl->title, (pl->tot_title + 1)*sizeof(char*));
    size_t len = strlen(title);
    (pl->title)[pl->tot_title] = (char*) malloc((len + 1) * sizeof(char));
    strcpy((pl->title)[pl->tot_title], title);
    (pl->tot_title)++;
    fprintf(pl->plt,"\n\n");
}


