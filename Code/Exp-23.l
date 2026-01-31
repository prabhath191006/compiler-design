%option noyywrap
%%
[A-Z]+ { printf("Capital Word: %s\n", yytext); }
%%
int main(){ yylex(); return 0; }
