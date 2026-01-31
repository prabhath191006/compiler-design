%option noyywrap
%{
#include <stdio.h>
int ln=1;
%}
%%
^.*\n { printf("%d %s", ln++, yytext); }
%%
int main(){ yylex(); return 0; }
