## Task

Написать и продемонстрировать консольную программу, производящую
синтаксический и семантический (смысловой) анализ строкового параметра, с
которым она запущена. 

### Вариант 4
Вещественные числа в экспоненциальной форме, например
*1.23E–02*

### Commands

1. yacc -d exp.y
2. lex exp.l
3. cc lex.yy.c y.tab.c -o result.out