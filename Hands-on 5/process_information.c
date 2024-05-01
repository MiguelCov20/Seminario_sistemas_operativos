#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main() {
    int parent_ppid, pid;

    pid = getpid();
    parent_ppid = getppid();

    printf("PID del padre del proceso: %d\n", parent_ppid);
    printf("PID del proceso: %d\n", pid);

    return 0;
}