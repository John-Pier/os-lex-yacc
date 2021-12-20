yacc -d exp.y
lex exp.l
cc lex.yy.c y.tab.c -o result
./result