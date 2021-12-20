%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
%}

%token EXIT

%union {
  double value;
}

%token <value> RESULT_NUMBER

%%
commands: /* empty */
        | commands command
        ;

command: 
        print_number
        |
        exit
        ;

print_number:
        RESULT_NUMBER
        {
                printf("\tExp number read: %f\n", $1);
        }
        ;
exit:
    EXIT
    {
      printf("\tExit....\n");
      exit(1);
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
