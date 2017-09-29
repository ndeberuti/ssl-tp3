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
programa                        { return KEYWORD; }
fin                             { return KEYWORD; }
variables                       { return KEYWORD; }
codigo                          { return KEYWORD; }
definir                         { return KEYWORD; }
leer                            { return KEYWORD; }
escribir                        { return KEYWORD; }
{letra}({letra}|{digito})*      { return IDENTIFICADOR; }
{digito}+               	    { return CONSTANTE; }
":="                            { return ASIGNACION; }
{operadorAditivo}        |       
{operadorMultiplicativo} { return OPERADOR; }
{caracterPuntuacion}            { return PUNTUACION; }
<<EOF>>	                        { return FDT; }
.                               {;}
