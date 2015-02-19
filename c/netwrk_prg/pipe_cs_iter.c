#include<unistd.h>

void main() {
    int pfd[2];
    int pid = -1;

    if(pipe(pfd) < 0) {
        perror("pipe");
    }

    int pid = fork();
    if(pid < 0) {
        perror("fork");
        exit(EXIT_FAILURE);
    }

    if(pid == 0) { /* child */

