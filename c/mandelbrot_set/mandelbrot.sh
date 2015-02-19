#!/usr/bin/gnuplot -persist
set style data dots
set pointsize 0.005000
set autoscale
set key spacing 1.3
set key box
set size ratio -1
set zeroaxis
set origin 0,0
set xlabel "x"; set ylabel "y";
plot "/Users/amitavac/data/prog/c/mandelbrot_set/mandelbrot.dat" using 1:2:3 notitle with points lc rgb variable
#!/usr/bin/gnuplot -persist
set style data dots
set pointsize 0.005000
set autoscale
set key spacing 1.3
set key box
set size ratio -1
set zeroaxis
set origin 0,0
set xlabel "x"; set ylabel "y";
plot "/Users/amitavac/data/prog/c/mandelbrot_set/mandelbrot.dat" using 1:2:3 notitle with points lc rgb variable
