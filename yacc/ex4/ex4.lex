%{
%}
%%

"if"		{ return(IF);					}		
"then"		{ return(THEN); 				}
"else"		{ return(ELSE);					}
"endif" 	{ return(ENDIF);				}
"TRUE"		{ yylval = 1; return(BOOL); 			}
"FALSE" 	{ yylval = 0; return(BOOL); 			}
";"		{ return(FIN); 					} 
[0-9]+      { yylval = atoi(yytext);  return(ENTIER);   }
"+"         { return(PLUS);                 }
"/"         { return(DIVIDE);               }   
"*"     { return(MULT);                 }   
"-"     { return(MINUS);                }
"("         { return(PAROU);                }
")"     { return(PARFE);                }





%%
