#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>

#define start main

//comments
int start()
{
    int fd = open("Grace.c", O_RDONLY);
    if (fd < 0)
    {
        write(2, "open error", 11);
        exit(1);
    }
    int out_fd = open("Grace_kid.c", O_RDWR | O_CREAT, 777);
    if (out_fd < 0)
    {
        write(2, "open error", 11);
        exit(1);
    }
    char buf[BUFSIZ + 1];
    int x = 0;
    while ((x = read(fd, buf, BUFSIZ)) > 0)
    {
        buf[x] = '\0';
        if ((write(out_fd, buf, x)) == -1)
        {
            write(2, "error", 6);
            exit(1);
        }
    }
    if (x == -1)
    {
        write(2, "read error", 11);
        exit(1);
    }
    close(fd);
    close(out_fd);
}