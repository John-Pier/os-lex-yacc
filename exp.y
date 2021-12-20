%{
#include <stdio.h>
#include <string.h>
%}

%token RESULT_NUMBER EXIT

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
                printf("\tExp number readed\n");
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
