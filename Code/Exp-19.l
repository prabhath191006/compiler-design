%option noyywrap
%%
"<"[^>]+">" { printf("HTML Tag: %s\n", yytext); }
%%
int main(){ yylex(); return 0; }
