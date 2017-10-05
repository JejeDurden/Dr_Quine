#include <stdio.h>
/*
	cc
*/
void lol(){}
int main()
{
	lol();
	char *program = "#include <stdio.h>%c/*%c%ccc%c*/%cvoid lol(){}%cint main()%c{%c%clol();%c%cchar *program = %c%s%c;%c%cprintf(program, 10, 10, 9, 10, 10, 10, 10, 10, 9, 10, 9, 34, program, 34, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 10);%c%c/*%c%c%cre cc%c%c*/%c%creturn 0;%c}%c";
	printf(program, 10, 10, 9, 10, 10, 10, 10, 10, 9, 10, 9, 34, program, 34, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 10);
	/*
		re cc
	*/
	return 0;
}
