identificador {digito}{digito}{+}{letra}+
constante {digito}{digito}+
letra [a-zA-Z]
digito [0-9]
palabraRervada "programa" | "fin" | "variables" | "codigo" | "definir" | "leer" | "escribir"
operador {operadorAditivo} | {operadorMultiplicativo}
operadorAditivo "+" | "-"
operadorMultiplicativo "*" | "/"
asignacion ":="
caracterPuntuacion "(" | ")" | "," | ";"

%%

identificador {printf("Token: Identificador\tlexema: %s", yytext);}
constante {printf("Token: Constante\tlexema: %s", yytext);}
palabraReservada {printf("Token: %s", yytext);}
operador|caracterPuntuacion {printf("Token: \'%s\'", yytext);}
 
