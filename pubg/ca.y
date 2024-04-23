%{
#include<stdio.h>
int flag=0;
%}
%token NUMBER
%left '+''-'
%left '*''/''%'
%left '('')'
%%
ArthmeticExpression:E{
printf("\nResult=%d\n",$$);
return 0;
}
E:E '+' E {$$=$1+$3;}
|E '-' E {$$=$1-$3;}
|E '*' E {$$=$1*$3;}
|E '/' E {$$=$1/$3;}
|E '%' E {$$=$1%$3;}
|'('E')' {$$=$2;}
|NUMBER {$$=$1;}
;
%%

void main()
{
printf("\nEnter any arthmetic expression which can have operations Add,Sub,Mul,Div,Modulo and roundbrackets\n");
yyparse();
if(flag==0){
printf("\nEnter arthmetic expression is valid\n");
}
}
void yyerror()
{
printf("\nEntered arthmtic expression s invalid\n");
flag=1;
}