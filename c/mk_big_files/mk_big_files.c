#include <sys/types.h>
#include <unistd.h>
#include <stdint.h>
#include <stdio.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>

int main(void) {
    uint64_t fileSz = 7281;
    uint64_t i = 0;

/*    printf("Enter the size of file: ");
    scanf("%llu",  &fileSz);
*/

    int fd = open("arc.txt", O_RDWR|O_CREAT|O_TRUNC, S_IRUSR|S_IWUSR|S_IRGRP|S_IROTH);
    lseek(fd, fileSz - 1, SEEK_SET);
    write(fd, "", 1);
    uint8_t* ptr = NULL;
    ptr = (uint8_t*)mmap(NULL, fileSz, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
    if(ptr != MAP_FAILED) {
        for(i = 0; i < fileSz; ++i)
        {
            ptr[i]='A';
        }
    }
    msync(ptr, fileSz, MS_SYNC);
    munmap(ptr, fileSz);

    close(fd);
    return 0;
}
