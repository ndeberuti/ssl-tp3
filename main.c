//Profesor Eduardo Zu�iga
//Curso K2055
//Grupo N�1
//TP N�3
//Integrantes: Luna, Brian Damian 155.369-0
//Martin, Rodrigo Leonardo 160.255-0
//Miravalles, Emanuel Gonzalo 127.099-0
//de Beruti, Nicolas Alejandro 149.700-5

#include <stdio.h>
#include "scanner.h"
#include "tokens.h"

char* token_names[] = {"EOF" ,"IDENTIFICADOR", "CONSTANTE", "PALABRA RESERVADA", "OPERADOR", "ASIGNACION", "PUNTUACION"};

int main(){
	enum token t;
	do {
		t = yylex();
		printf("Token: %s\t\tLexema: %s\n", token_names[t], yytext);
	} while(t != FDT);
	return 0;
}	
