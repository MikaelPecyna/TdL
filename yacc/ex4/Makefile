# Remplacer par3 par le prefixe de vos specifications
# a partir de par3.l, par3.y, cela fait un executable par3. 

NOM=ex4

# La liste des dependances 
$(NOM) : lex.yy.c $(NOM).tab.c 
	cc -o $(NOM) 	y.tab.c -lfl -ly

lex.yy.c : $(NOM).lex 
	flex $(NOM).lex 

$(NOM).tab.c : $(NOM).y 
	yacc $(NOM).y 


# Les ordres speciaux
clean : 
	rm -rf y.tab.c lex.yy.c $(NOM)

# Le all pour savoir ce que je dois faire au final 

all : $(NOM)

