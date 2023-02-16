%{
%}

DIGIT [0-9]

%%
{DIGIT}* {ECHO; printf(" is in Integer format");}
{DIGIT}*?\.{DIGIT}+ {ECHO; printf(" is in Float format");}
%%

int yywrap(){return 1;}

int main()
{
    printf("Enter the number : ");
    yylex();
}
