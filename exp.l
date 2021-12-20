%{
#include <stdio.h>
#include "y.tab.h"
%}

%%
\d+([.]\d+)?((E|e)-\d+)?   return RESULT_NUMBER;
[ \t]+                        /* ignore */;
\n                            /* ignore */;
%%