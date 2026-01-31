%option noyywrap
%{
#include <stdio.h>
int m=0,h=0;
%}
%%
"#define".*   { m++; }
"#include".*  { h++; }
%%
int main(){
    yylex();
    printf("Macros=%d Headers=%d\n",m,h);
    return 0;
}
