%option noyywrap
%{
#include <stdio.h>
int c = 0, w = 0, l = 0;
%}

%%
"//".*              ;              /* Ignore single-line comments */
"/*"([^*]|\*+[^*/])*\*+"/" ;       /* Ignore multi-line comments */
[ \t]+              ;              /* Ignore spaces and tabs */
\n                  { l++; }        /* Count new lines */
[^ \t\n]+           { w++; c += yyleng; } /* Count words & characters */
.                   { c++; }        /* Count remaining characters */
%%

int main() {
    yylex();
    printf("Characters = %d Words = %d Lines = %d\n", c, w, l);
    return 0;
}
