#include<plot.h>
#include<complex.h>
#include<math.h>
#include<stdio.h>

int main(void){
	complex double z0 = 0.0+0.0i;

	const double delta = 1.0;
	double theta = 0.0;
	complex double z = z0;
	complex double fz = 0.0;
        COLOR_T rgb1, rgb2;
	int i = 0;
        uint32_t times = 0;
        rgb1.r = 0x00;
        rgb1.g = 0xFF;
        rgb1.b = 0x00;        
        rgb2.r = 0xFF;
        rgb2.g = 0x00;
        rgb2.b = 0x00;        
	PLOT *pl = open_plot();
        
        set_jpegfile(pl, "./sine(z).jpg");
        set_xlabel(pl, "REAL_PART");
        set_ylabel(pl, "IMAGINARY_PART");
	for(i = 0;i<10;i++){
		for(theta = 0.0;theta<2*3.14;theta+=0.001) {
			z = delta*((cos(theta) + I*sin(theta)));
			fz = csin(z);
			plot_double_c(pl,creal(fz),cimag(fz),rgb1);
			plot_double_c(pl,creal(z),cimag(z),rgb2);
		}
		z0 = z0 + delta;
	}
	paint_plot(pl);
	close_plot(pl);
	pl = NULL;
	return 0;
}
