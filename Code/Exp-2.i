%option noyywrap
%%
"//".*        { printf("Single-line comment\n"); }
"/*"(.|\n)*"*/" { printf("Multi-line comment\n"); }
.+            { printf("Not a comment\n"); }
%%
int main(){ yylex(); return 0; }
