%{
        int c=0,b=0,l=0,w=0;
%}

%%
[\n] {l++;w++;}
[\t] {b++;w++;}
[" "] {b++;w++;}
[^\n\t] {c++;}
END {return 0;}
%%

int yywrap(){return 1;}

int main()
{
    printf("Enter the input : ");
    yylex();
    printf("Lines : %d\nWords : %d\nCharacters : %d\nBlank : %d\n",l,w,c,b);
    return 0;
}
    
