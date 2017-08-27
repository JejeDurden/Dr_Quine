#include <stdio.h>
#define CC
#define LOL
/*cc*/
#define FUNCTION(x) int main(){FILE *new = fopen("Grace_kid.c","w");char*program="#include <stdio.h>%c#define CC%c#define LOL%c/*cc*/%c#define FUNCTION(x) int main(){FILE *new = fopen(%cGrace_kid.c%c,%cw%c);char*program=%c%s%c;fprintf(new,program,10,10,10,10,34,34,34,34,34,program,34,10, 10);}%cFUNCTION(42);%c";fprintf(new,program,10,10,10,10,34,34,34,34,34,program,34,10, 10);}
FUNCTION(42);
