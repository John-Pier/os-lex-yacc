%{
#include <stdio.h>
#include "y.tab.h"
%}

%%
(-|\+)?[0-9]+([.][0-9]+)?(E|e)(-|\+)[0-9]+      yylval.value=atof(yytext); return RESULT_NUMBER;
[ \n]+                                          ;
exit                                            return EXIT;
%%