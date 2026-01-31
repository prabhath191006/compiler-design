%option noyywrap
%{
#include <stdio.h>
int ws=0, nl=0;
%}
%%
[ \t]+ { ws++; }
\n     { nl++; }
%%
int main(){
    yylex();
    printf("Whitespaces = %d\nNewlines = %d\n", ws, nl);
    return 0;
}
