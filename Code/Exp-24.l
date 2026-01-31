%option noyywrap
%%
[a-zA-Z0-9._]+@[a-zA-Z]+\.[a-zA-Z]+ {
    printf("Valid Email\n");
}
.+ { printf("Invalid Email\n"); }
%%
int main(){ yylex(); return 0; }
