%{
%}
%option case-insensitive
signedint           (-|"+")?[0-9]+
signedfloat         {signedint}.[0-9]+
expsignedint        {signedint}(e?){signedint}
expsignedfloat      {signedfloat}(e?){signedint}
comment             --.*
keyword             ("nom"|"debut"|"fin"|"avance"|"tourner"|"fois"|"affiche")       
EOL                 ;
StringCharacter     [[:print:]]{-}["]
string               \"{StringCharacter}*(\"\"{StringCharacter}*)*\"
%%
{signedint}         {printf("\nEntier");}
{expsignedint}      {printf("\nEntier");}
{signedfloat}       {printf("\nFlottant");}
{expsignedfloat}    {printf("\nFlottant");}
{comment}           {printf("\nCommentaire");}
{keyword}           {printf("\n%s",yytext);}
{EOL}               {printf("\nEOL");}
{string}            {printf("\nString");}


%%
