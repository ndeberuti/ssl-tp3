%{
#include <stdio.h>
#include "tokens.h"
%}
%option outfile="scanner.c"
%option header-file="scanner.h"
letra [a-zA-Z]
digito [0-9]
operadorAditivo [+-]
operadorMultiplicativo [*/]
caracterPuntuacion [(),;]
%%
programa                                 { return R_PROGRAMA; }
fin                                      { return R_FIN; }
variables                                { return R_VARIABLES; }
codigo                                   { return R_CODIGO; }
definir                                  { return R_DEFINIR; }
leer                                     { return R_LEER; }
escribir                                 { return R_ESCRIBIR; }
{letra}({letra}|{digito})*               { return IDENTIFICADOR; }
{digito}+               	             { return CONSTANTE; }
":="                                     { return ASIGNACION; }
{operadorAditivo}                        |       
{operadorMultiplicativo}                 { return OPERADOR; }
{caracterPuntuacion}                     { return PUNTUACION; }
"//".*\n                                 |
.                                        {;}
