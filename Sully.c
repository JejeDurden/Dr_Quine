#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#define STRING "#include <fcntl.h>%c#include <stdio.h>%c#include <stdlib.h>%c#define STRING %c%s%c%cint main(){%cint i=%i;%cif(i>0){char namefile[30];sprintf(namefile, %cSully_%ci.c%c, i-1);%cchar str[1000];sprintf(str, STRING, 10, 10, 10, 34, STRING, 34, 10, 10, i-1, 10, 34, 37, 34, 10, 10, 34, 37, 37, 37, 34, 10, 34, 34, 10);%cchar cmd[90]; sprintf(cmd, %cgcc -o Sully_%ci -Wall -Wextra -Werror Sully_%ci.c && ./Sully_%ci%c, i-1, i-1, i-1);%cFILE *f=fopen(namefile,%cw%c);fputs(str, f);fclose(f);system(cmd);}}%c"
int main(){
int i=5;
if(i>0){char namefile[30];sprintf(namefile, "Sully_%i.c", i-1);
char str[1000];sprintf(str, STRING, 10, 10, 10, 34, STRING, 34, 10, 10, i-1, 10, 34, 37, 34, 10, 10, 34, 37, 37, 37, 34, 10, 34, 34, 10);
char cmd[90]; sprintf(cmd, "gcc -o Sully_%i -Wall -Wextra -Werror Sully_%i.c && ./Sully_%i", i-1, i-1, i-1);
FILE *f=fopen(namefile,"w");fputs(str, f);fclose(f);system(cmd);}}
