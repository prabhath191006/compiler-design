%option noyywrap
%{
#include <stdio.h>
int c=0;
FILE *out;
%}
%%
"//".*           { c++; }
"/*"(.|\n)*"*/"  { c++; }
.+               { fprintf(out,"%s",yytext); }
%%
int main(){
    out=fopen("output.c","w");
    yylex();
    printf("Comments=%d\n",c);
    fclose(out);
    return 0;
}
