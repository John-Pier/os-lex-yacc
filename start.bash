#!/bin/bash
echo "yacc: compile exp.y"
yacc -d exp.y
echo "lex: compile exp.l"
lex exp.l
cc lex.yy.c y.tab.c -o result.out
echo "Start program..."
echo "Read lines:"
./result.out
echo "Delete tmp files"
rm ./result.out
rm -f ./lex.yy.c
rm -f ./y.tab.h
rm -f ./y.tab.c