%option noyywrap
%{
#include <stdio.h>
%}

%%
[+\-*/] { printf("Arithmetic Operator: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}