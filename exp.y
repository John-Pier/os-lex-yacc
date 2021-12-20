%{
#include <stdio.h>
#include <string.h>
%}

%token RESULT_NUMBER

%%
commands: /* empty */
        | commands print_number
        ;

print_number:
        RESULT_NUMBER
        {
                printf("\tExp number readed\n");
        }
        ;
%%
void yyerror(const char *str)
{
  fprintf(stderr,"Error: %s\n", str);
}
 
int yywrap()
{
  return 1;
} 
  
main()
{
  return(yyparse());
}
