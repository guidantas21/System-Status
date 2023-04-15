#include <stdio.h>
#include <sys/utsname.h>

void printSystemInformation(struct utsname sys_info) {
    printf("== System Information ==\n");
    printf("Operating System: %s\n", sys_info.sysname);
    printf("Node Name: %s\n", sys_info.nodename);
    printf("Release: %s\n", sys_info.release);
    printf("Version: %s\n", sys_info.version);
    printf("Machine: %s\n", sys_info.machine);
}

int main() {
    // Struct that contains system information
    struct utsname sys_info;

    if (uname(&sys_info) == -1) {
        perror("uname");
        return 1;
    }

    printSystemInformation(sys_info);

    return 0;
}