#include <stdio.h>
#include <strings.h>
#include <stdlib.h>

#define STR "#include <stdio.h>%c#include <strings.h>%c#include <stdlib.h>%c%c#define STR %c%s%c%c#define FT(x) int main(){int x = %d;if (x > 0){char *filename = %cSully_%d.c%c;char * exe = %cSully_%d%c;FILE * f = fopen(filename, %cw%c);fprintf(f,STR,10,10,10,10,34,STR,34,10,x-1,34,x-1,34,34,x-1,34,34,34,34,34,34,34,10,10,10,10,10);fclose(f);char tmp[100];sprintf(tmp, %cgcc -Wall -Wextra -Werror %%s -o %%s%c,filename,exe);system(tmp);bzero(tmp,100);sprintf(tmp, %c./%%s%c,exe);system(tmp);}}%c%c/*%c    comments%c*/%cFT(x)"
#define FT(x) int main(){int x = 5;if (x > 0){char *filename = "Sully_5.c";char * exe = "Sully_5";FILE * f = fopen(filename, "w");fprintf(f,STR,10,10,10,10,34,STR,34,10,x-1,34,x-1,34,34,x-1,34,34,34,34,34,34,34,10,10,10,10,10);fclose(f);char tmp[100];sprintf(tmp, "gcc -Wall -Wextra -Werror %s -o %s",filename,exe);system(tmp);bzero(tmp,100);sprintf(tmp, "./%s",exe);system(tmp);}}

/*
    comments
*/
FT(x)