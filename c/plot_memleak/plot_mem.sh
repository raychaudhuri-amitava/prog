echo "$1 $2 $3 $4 $5"
gcc -m64 -lmyplot -DMINX=$1 -DMAXX=$2 -DMINY=$3 -DMAXY=$4 -o plot_memleak plot_memleak.c
./plot_memleak $5
