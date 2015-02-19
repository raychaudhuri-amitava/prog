gcc -lm -lmyplot -o complex_func complex_func.c -DVAR=z -DEXPR="fz[0]=z*z;" -DZ0="0.0+0.0*I" -DMAX_R=10.0 -DFZSIZE=1 -DFZ=fz 


./complex_func
