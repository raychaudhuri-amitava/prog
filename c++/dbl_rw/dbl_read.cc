#include <stdint.h>
#include<stdio.h>
#include<fcntl.h>
#include <unistd.h>
#include <sys/uio.h>
#include<stdlib.h>

/**
 * wrapper loop around read(2) to ensure we read all the bytes
 * we want to read.
 */
ssize_t readall(int fd, void *buf, size_t nbytes)
{
    char* ptr = (char*)buf;
    size_t n = 0;
    int b = read(fd, ptr, nbytes - n);
    return n;
}

int main(void) {
int fd = open("dbl.bin", O_RDONLY);
uint8_t* retPtr = static_cast<uint8_t*> (malloc(4 *(sizeof(uint64_t) + sizeof(double))));
readall(fd,retPtr,4*(sizeof(uint64_t)+sizeof(double)));
int j = 0;
for(int i = 0;i<4;i++) {
uint64_t y = *(reinterpret_cast<uint64_t *>(retPtr + j));
j+=(sizeof(uint64_t));
double x = *(reinterpret_cast<double *>(retPtr + j));
j+=(sizeof(double));
printf("uint64 val = %lu double val = %.15f\n",y,x);
}
free(retPtr);
return 0;
}
