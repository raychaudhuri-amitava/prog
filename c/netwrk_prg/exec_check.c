#include <unistd.h>
#include<stdio.h>

int main(void) {
    printf("Before exec\n");
    int status = 0;
    int fork_ret = fork();
    if(fork_ret == 0) {
        execl("/home/amitavac/data/prog/c/netwrk_prg/hello", "hello", "arc", "amitava", "ray", "chaudhuri", NULL);
        perror("exec failure");
        return 0;
    }
    printf("now waiting ...\n");
    wait(&status);
    printf("After exec process status = %d\n", status);
    return 0;
}

