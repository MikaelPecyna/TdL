%{
int nbFloat ;
int nbInt ;
int nbDebut ; 
int nbFin ;
%}
%option case-insensitive
signedint           (-|"+")?[0-9]+
signedfloat         {signedint}.[0-9]+
expsignedint        {signedint}((e?){signedint})?
expsignedfloat      {signedfloat}((e?){signedint})?
comment             --.*
debut               "debut"
fin                 "fin"
keyword             ("nom"|"debut"|"fin"|"avance"|"tourner"|"fois"|"affiche")       
EOL                 ;
StringCharacter     [[:print:]]{-}["]
string               \"{StringCharacter}*(\"\"{StringCharacter}*)*\"
%%

{comment}               {}
{EOL}                   {printf("\n");}
" "+                    {printf(" ");}
{expsignedfloat}        {nbFloat++; printf("%s",yytext);}
{expsignedint}          {nbInt++; printf("%s",yytext);}
{debut}                 {nbDebut++; printf("DEBUT");}
{fin}                   {nbFin++; printf("FIN");}
{keyword}               {printf("%s",yytext);}
{string}                {printf("%s",yytext);}

.                       {printf("Erreur : [%s] pas dans le lexique",yytext);}

%%
int main(){
    nbFloat = 0 ; nbInt = 0 ; nbDebut = 0 ; nbFin = 0 ; ; yylex() ; if(nbDebut!=nbFin){printf("Nombre inegaux de DEBUT et FIN");} ; printf ("\nNombre de constant float %i\n",nbFloat); printf ("\nNombre de constant entiere %i\n",nbInt) ;
}