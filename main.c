//Profesor Eduardo Zuniga
//Curso K2055
//Grupo N1
//TP N3
//Integrantes: Luna, Brian Damian 155.369-0
//Martin, Rodrigo Leonardo 160.255-0
//Miravalles, Emanuel Gonzalo 127.099-0
//de Beruti, Nicolas Alejandro 149.700-5

#include <stdio.h>
#include "scanner.h"
#include "tokens.h"

char* token_names[] = {"Fin de Archivo" ,
						"Identificador",
						"Constante",
						"Programa",
						"Variables",
						"Definir",
						"Codigo",
						"Leer",
						"Escribir",
						"Fin",
						"Operador",
						"Asignacion",
						"Puntuacion",
						"Error léxico: cadena desconocida: ",
						"Error léxico: constante con sufijo inválido: ",
						"Error léxico: identificador inválido: "	
						};

int main(){
	enum token t;
	do {
		t = yylex();
		if(t > TOPE){	
			printf("Token : '%s'\n", yytext);
		}
		else if(t == IDENTIFICADOR || t == CONSTANTE) {
			printf("Token: %s\t\tLexema: %s\n", token_names[t], yytext);
		}
		else {
			printf("Token: %s\n", token_names[t]);	
		}			
	} while(t != FDT);
	return 0;
}	
