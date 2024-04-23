%{
#include <stdio.h>
int printf_count = 0;
int scanf_count = 0;
%}

%%
"printf"     { printf_count++; }
"scanf"      { scanf_count++; }
.            ; // Ignore all other characters
%%

int yywrap()
{
    return 1; // Indicate end of input
}
int main()
{
    yylex();
    printf("Number of printf statements: %d\n", printf_count);
    printf("Number of scanf statements: %d\n", scanf_count);
    return 0;
}



