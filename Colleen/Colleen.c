#include <stdio.h>

void function1()
{
    char *s = "#include <stdio.h>%c%cvoid function1()%c{%c    char *s = %c%s%c;%c    printf(s,10,10,10,10,34,s,34,10,10,10,10,10,10,10,10,10,10,10,10,10,10);%c}%c%c/*%c    comments outside main%c*/%c%cint main()%c{%c    /*%c        comments inside main%c    */%c    function1();%c}";
    printf(s,10,10,10,10,34,s,34,10,10,10,10,10,10,10,10,10,10,10,10,10,10);
}

/*
    comments outside main
*/

int main()
{
    /*
        comments inside main
    */
    function1();
}