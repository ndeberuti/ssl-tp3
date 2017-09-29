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

char* token_names[] = {"EOF" ,"IDENTIFICADOR", "CONSTANTE", "PALABRA RESERVADA", "OPERADOR", "ASIGNACION", "PUNTUACION"};

int main(){
	enum token t;
	do {
		t = yylex();
if(t == OPERADOR || t == PUNTUACION )	{	

printf("Token : '%c'", yytext);
}

else{
printf("Token: %s\t\tLexema: %s\n", token_names[t], yytext);
}	
	
	} while(t != FDT);
	return 0;
}	
