//Profesor Eduardo Zuñiga
//Curso K2055
//Grupo N°1
//TP N°3
//Integrantes: Luna, Brian Damian 155.369-0
//Martin, Rodrigo Leonardo 160.255-0
//Miravalles, Emanuel Gonzalo 127.099-0
//de Beruti, Nicolas Alejandro 149.700-5


int nerrlex = 0;
int main(){
	
	
	
	switch ( yyparse() ) {
		
		case 0:
			puts("Pertenece al LIC"); return 0;
			
		case 1:
			puts("No pertenece al LIC"); return 1;
			
		case 2:
			puts("Memoria insuficiente"); return 2;
			
	}
	
}	