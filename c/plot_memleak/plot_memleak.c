#include<plot.h>
#include<stdio.h>

#ifndef MINX
#define MINX 0
#endif
#ifndef MAXX
#define MAXX 11590
#endif
#ifndef MINY
#define MINY 740000
#endif
#ifndef MAXY
#define MAXY 770000
#endif

int main(int argc, char **argv) {   
    FILE* fp = NULL;
    PLOT* pl = NULL;
    PLOT* pl1 = NULL;
    uint64_t init_tm = 0;
    uint64_t memval = 0;
    uint64_t minmemval = 0, maxmemval = 0;
    uint64_t timeVal = 0;

    if(argc != 2) {
        printf("%s <filename>\n",argv[0]);
        return 0;
    }

    COLOR_T red = {0xff,0x00,0x00};

    fp = fopen(argv[1], "r");
    if(fp != NULL) {
        pl = open_plot();
        char *filename = malloc(strlen(argv[1]) + 5);
        strcpy(filename, argv[1]);
        strcat(filename, ".jpg");
        set_jpegfile(pl, filename);
        set_mode(pl, KEEP_RANGE);
        set_mode(pl, KEEP_LINE);
        set_xlabel(pl, "Time (sec)");
        set_ylabel(pl, "Memory Used (KB)");
        set_min_max_2d(pl, MINX, MAXX, MINY, MAXY);
        fscanf(fp, "%llu, %llu", &init_tm, &memval);
        timeVal = init_tm;
        minmemval = memval;
        while(!feof(fp)) {
            plot_uint64_c(pl, (timeVal - init_tm), memval, red);
            if(memval < minmemval) minmemval = memval;
            if(memval > maxmemval) maxmemval = memval;
            fscanf(fp, "%llu, %llu", &timeVal, &memval);
        }
        plot_uint64_c(pl, (timeVal - init_tm), memval, red);
        printf("lasttimeval = %llu minmemval = %llu  maxmemval = %llu\n", (timeVal - init_tm), minmemval, maxmemval);
        paint_plot(pl);
        close_plot(pl);
        free(filename);
        filename = NULL;
    }
    fclose(fp);
    return 0;
}
