%{
#include <stdio.h>
#include "tokens.h"
%}
%option outfile="scanner.c"
%option header-file="scanner.h"
letra [a-zA-Z]
digito [0-9]
valido [+-*/(),;:]
letraDigito ({letra}|{digito})
%%
programa                                                    { return R_PROGRAMA; }
fin                                                         { return R_FIN; }
variables                                                   { return R_VARIABLES; }
codigo                                                      { return R_CODIGO; }
definir                                                     { return R_DEFINIR; }
leer                                                        { return R_LEER; }
escribir                                                    { return R_ESCRIBIR; }
{letra}{letraDigito}*                                       { return IDENTIFICADOR; }
{digito}+               	                                { return CONSTANTE; }
":="                                                        { return ASIGNACION; }
"//".*\n                                                    {;}
"+"                                                         { return '+'; }
"-"                                                         { return '-'; }
"*"                                                         { return '*'; }
"/"                                                         { return '/'; }
"("                                                         { return '('; }
")"                                                         { return ')'; }
","                                                         { return ','; }
";"                                                         { return ';'; }
.                                                           {;}
