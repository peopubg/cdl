%{
    #include<stdio.h>
    #include "y.tab.h"    
%}

%%
[0-9] { yylval = atoi(yytext); return num; }
[+ *] { return yytext[0]; }
@ { return 1; }
%%

int yywrap() {}