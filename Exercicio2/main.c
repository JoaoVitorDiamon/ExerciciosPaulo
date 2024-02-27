#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main() {
	int tamanhoDoCodigo, i, codigo_procurado;
	printf("Digite o tamanho da lista de codigos a serem procurados:");
    scanf("%d", &tamanhoDoCodigo);
    
    int lista[tamanhoDoCodigo];

	for(i =0; i< tamanhoDoCodigo; i++){
		printf("Digite o Codigo na Posicao %d: \n", i+1);
		scanf("%d", &lista[i]);	
	}
	
	bool codigoEncontrado = false;
	system("cls");
	while(!codigoEncontrado){
	printf("Digite o codigo a ser encontrado:", i+1);
		scanf("%d", &codigo_procurado);	
	

		for(i =0; i< tamanhoDoCodigo; i++){
			if(lista[i] == codigo_procurado){
				printf("\nBuscando...\n");
				printf("O codigo %d foi encontrado com sucesso.", codigo_procurado);
				codigoEncontrado=true;
				system("Color 2");
				exit(1);
			}
			
			
		}
		
		if(!codigoEncontrado){
			system("Color 4");
			printf("\nBuscando...");
			 printf("\nO codigo %d nao esta presente na lista. Tente novamente.\n", codigo_procurado);
		}
	}
	return 0;
}
