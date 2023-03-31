%{
#include<stdio.h>
%}
%token IF THEN ELSE ENDIF BOOL FIN ENTIER PLUS DIVIDE MULT MINUS PAROU PARFE 
%start START

%%

E		: E PLUS T  { $$ = $1 + $3 ;    }
		| E MINUS  T   { $$ = $1 - $3 ;    }  
		| T     { $$ = $1      ;    }
		;
T		: T MULT F  { $$ = $1 * $3 ;    }
		| T DIVIDE F     { $$ = $1 / $3 ;    }
		| F     { $$ = $1      ;    }
		;
F		: PAROU E PARFE { $$ = $2      ;    }
		| ENTIER    { $$ = $1      ;    } 
		;





COND	: IF BOOL THEN E ENDIF 	{ if($2){$$ = $4;}; }
		| IF BOOL THEN E ELSE E ENDIF { if($2){$$ = $4;} else{$$ = $6;}; }
		;

START	: COND FIN { printf("\nRes : %ld\n", $1); }

%%
#include "lex.yy.c"
int main(){
	yyparse();
	printf("\n FIN "); 
}
