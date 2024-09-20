#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

#define STR "#include <stdio.h>%c#include <fcntl.h>%c#include <unistd.h>%c%c#define STR %c%s%c%c#define F %cGrace_kid.c%c%c#define FT(x) int main(){FILE * f = fopen(F, %cw%c);fprintf(f,STR,10,10,10,10,34,STR,34,10,34,34,10,34,34,10,10,10,10,10);fclose(f);}%c%c/*%c    comments%c*/%cFT(x)"
#define F "Grace_kid.c"
#define FT(x) int main(){FILE * f = fopen(F, "w");fprintf(f,STR,10,10,10,10,34,STR,34,10,34,34,10,34,34,10,10,10,10,10);fclose(f);}

/*
    comments
*/
FT(x)