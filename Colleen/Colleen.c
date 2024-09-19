#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>

void function1(char *filename)
{
    int fd = open(filename, O_RDONLY);
    if (fd < 0)
    {
        write(2, "open error", 11);
        exit(1);
    }
    char buf[BUFSIZ + 1];
    int x = 0;
    while ((x = read(fd, buf, BUFSIZ)) > 0)
    {
        buf[x] = '\0';
        if ((write(1, buf, x)) == -1)
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
}

//comments outside main

int main()
{
    //comments inside main
    char *filename = "Colleen.c";
    function1(filename);
}