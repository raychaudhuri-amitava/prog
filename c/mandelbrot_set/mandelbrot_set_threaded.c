#include<plot.h>
#include<complex.h>
#include<stdio.h>
#include<math.h>
#include<stdint.h>
#include "threadpool.h"

typedef struct MANDLBRT{
	double re_st;
	double re_ed;
	double im_st;
	double im_ed;
        uint32_t n;
	PLOT *pl;
}MANDLBRT_T;
int outofbound(double x)
{
    if(isnan(x) || isinf(x))
        return 1;
    return 0;
}

int plot_mandelbrot(double complex c, uint32_t n, uint64_t final)
{
    uint64_t i=0;
    uint32_t j = 0;
    double complex z=0;
    double complex pz=0;
    double complex tpz = 0;

    for(i=0;i<=final;i++)
    {
        pz=z;
        tpz = 1;
        for(j = 0; j<n;j++) {
            tpz = tpz*pz;
            if(outofbound(creal(z)) || outofbound(cimag(z)))
            {
                return 0;
            }
        }
        z=tpz+c;
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

void * mandelbrot_set_plot(void *arg){
	MANDLBRT_T *mndl = (MANDLBRT_T*)(arg);
	double complex c=0;
	double re=0.0,im=0.0;
	uint64_t final=10000;

	for(re=mndl->re_st;re<mndl->re_ed;re+=0.001)
	{
		for(im=mndl->im_st;im<mndl->im_ed;im+=0.001)
		{
			c=re+I*im;
			if(plot_mandelbrot(c,mndl->n,final) == 1) {
				plot_double(mndl->pl,creal(c),cimag(c));
			}
		}
	}
	return NULL;
}


int main(void)
{    
	double re_start=0.0, re_end=0.0, im_start=0.0, im_end=0.0;
	double re=0.0,im=0.0;
	THPOOL_T* thp = NULL;
	uint64_t mndl_nums = 0;
        uint64_t i = 0;
        size_t outer_loop = 0;
        size_t inner_loop = 0;
	MANDLBRT_T* mndls = NULL;
        uint32_t n = 0;
	PLOT *pl=NULL;
        printf("Enter the pow of mandelbrot: ");
	scanf("%u",&n);
	printf("Enter the left real number: ");
	scanf("%lf",&re_start);
	printf("Enter the right real number: ");
	scanf("%lf",&re_end);
        im_start = re_start;
        im_end = re_end;
	thp = create_threadpool(2);
        
        outer_loop = (size_t)((re_end - re_start) + 0.5);
        outer_loop = (outer_loop + outer_loop%4) / 4;
        inner_loop = (size_t)((im_end - im_start) + 0.5);
        inner_loop = (inner_loop + inner_loop%4) / 4;
        printf("outer = %lu and inner = %lu\n",outer_loop,inner_loop);
	mndls = (MANDLBRT_T*)malloc((outer_loop*inner_loop)*sizeof(MANDLBRT_T));        

	for(re=re_start;re<re_end;re+=4.0) {
		for(im=im_start;im<im_end;im+=4.0) {
			mndls[mndl_nums].re_st = re;
			mndls[mndl_nums].re_ed = (re+4.0) < re_end ? re+4.0:re_end;
			mndls[mndl_nums].im_st = im;
			mndls[mndl_nums].im_ed = (im+4.0) < im_end ? im+4.0:im_end;
                        mndls[mndl_nums].n = n;
			mndls[mndl_nums].pl = open_plot();
			add_job(thp,mandelbrot_set_plot,(void*)(mndls + mndl_nums));
			mndl_nums++;
		}
	}       
	wait_t(thp);
	pl=open_plot();
	set_mode(pl,KEEP_FILE|KEEP_SHELLFILE);
	set_plotfile(pl,"mandelbrot.dat");
	set_shellfile(pl,"mandelbrot.sh");
     
	for(i = 0;i < mndl_nums;i++) {
		joinmanyplots(pl,&(mndls[i].pl),1);
		close_plot(mndls[i].pl);
	}
	destroy_threadpool(&thp);
	free(mndls); 
	paint_plot(pl);
	close_plot(pl);
	return 0;
}

