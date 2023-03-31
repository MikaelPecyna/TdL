%{
%}
%%

\n 		{ return(FIN); 					}	
[0-9]+		{ yylval = atoi(yytext);  return(ENTIER); 	}
"+" 		{ return(PLUS); 				}
"/" 		{ return(DIVIDE); 				}	
"*"		{ return(MULT); 				}	
"-"		{ return(MINUS); 				}
"(" 		{ return(PAROU); 				}
")"		{ return(PARFE);				}

%%

