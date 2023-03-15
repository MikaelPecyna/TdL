%{
%}

x_word              (chou|au)          
normal_word         [a-zA-Z]+
word_end_s          {normal_word}s
no_change_word      ({word_end_s}|et|avec|mangent)
specific_word       (un|du) 


%%


{no_change_word}            {printf("%s",yytext);}
cheval                      {printf("chevaux");}
{x_word}                    {printf("%sx",yytext);} 
{specific_word}             {printf("des");}
{normal_word}               {printf("%ss",yytext);}
    
.                           {printf("%s",yytext);}

%%