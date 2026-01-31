%option noyywrap
%{
#include <stdio.h>
%}
%%
[_a-zA-Z][_a-zA-Z0-9]* { printf("Valid Identifier\n"); }
.+                    { printf("Invalid Identifier\n"); }
%%
int main(){
    printf("Enter identifier:\n");
    yylex();
    return 0;
}
