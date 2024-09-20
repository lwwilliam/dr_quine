#include <stdio.h>
#include <strings.h>
#include <stdlib.h>

#define STR "#include <stdio.h>%c#include <strings.h>%c#include <stdlib.h>%c%c#define STR %c%s%c%c#define FT(x) int main(){%c%cint x = %d;%c%cif (x > 0){char filename[20];char exe[20];sprintf(filename, %cSully_%%d.c%c, x-1);sprintf(exe, %cSully_%%d%c, x-1);FILE * f = fopen(filename, %cw%c);fprintf(f,STR,10,10,10,10,34,STR,34,10,92,10,x-1,92,10,34,34,34,34,34,34,34,34,34,34,10,10,10,10,10);fclose(f);char tmp[100];sprintf(tmp, %cgcc -Wall -Wextra -Werror %%s -o %%s%c,filename,exe);system(tmp);bzero(tmp,100);sprintf(tmp, %c./%%s%c,exe);system(tmp);}}%c%c/*%c    comments%c*/%cFT(x)"
#define FT(x) int main(){\
int x = 5;\
if (x > 0){char filename[20];char exe[20];sprintf(filename, "Sully_%d.c", x-1);sprintf(exe, "Sully_%d", x-1);FILE * f = fopen(filename, "w");fprintf(f,STR,10,10,10,10,34,STR,34,10,92,10,x-1,92,10,34,34,34,34,34,34,34,34,34,34,10,10,10,10,10);fclose(f);char tmp[100];sprintf(tmp, "gcc -Wall -Wextra -Werror %s -o %s",filename,exe);system(tmp);bzero(tmp,100);sprintf(tmp, "./%s",exe);system(tmp);}}

/*
    comments
*/
FT(x)