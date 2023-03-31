%{
int nb ;
%}
pairpair                (aa|bb)*((aa|bb)(aa|bb)*(ab|ba)(aa|bb)*)*
%%
{pairpair}              {printf(" [%s] Un nombre pair de a et de b\n",yytext);}
a+b+                    {printf(" [%s] D'abord des a, puis des b \n",yytext);}
[\n]                    {printf("retour chariot, on ne fait rien \n ");}
.                       {nb++ ; printf(" caractere '%c' ignore \n",yytext[0]);}
%%
int main(){
    nb = 0 ; yylex() ; printf ("\n On a ignore %d caracteres \n",nb) ;
}

