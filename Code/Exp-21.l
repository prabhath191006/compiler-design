%option noyywrap
%{
#include <stdio.h>
int ch=0,w=0,l=0;
%}
%%
[^ \n\t]+ { w++; ch+=yyleng; }
\n        { l++; ch++; }
.         { ch++; }
%%
int main(){
    yylex();
    printf("Characters=%d Words=%d Lines=%d\n",ch,w,l);
    return 0;
}
