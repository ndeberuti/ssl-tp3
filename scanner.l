%{
#include <stdio.h>
#include "tokens.h"
%}
%option outfile="scanner.c"
%option header-file="scanner.h"
letra [a-zA-Z]
digito [0-9]
palabraReservada "programa" | "fin" | "variables" | "codigo" | "definir" | "leer" | "escribir"
operador {operadorAditivo} | {operadorMultiplicativo}
operadorAditivo "+" | "-"
operadorMultiplicativo "*" | "/"
asignacion ":="
caracterPuntuacion "(" | ")" | "," | ";"
%%
{digito}{digito}+{letra}+       { return IDENTIFICADOR; }
{digito}{digito}+               { return CONSTANTE; }
palabraReservada                { return KEYWORD; }
operador                        { return OPERADOR; }
asignacion                      { return ASIGNACION; }
caracterPuntuacion              { return PUNTUACION; }
<<EOF>>	                        { return FDT; }
