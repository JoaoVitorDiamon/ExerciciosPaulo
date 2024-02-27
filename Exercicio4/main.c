#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    int tamanho, n, opcao, qntdDeNumerosMaioresQueaMedia;
    float media_aritimetica;

	media_aritimetica = 0;
	qntdDeNumerosMaioresQueaMedia =0;

	
    printf("Digite o Tamanho que você deseja para a Lista:");
    scanf("%d", &tamanho);

    int lista[tamanho];

    do {
        opcao = 1;
        for (n = 0; n < tamanho; n++) {
            printf("Digite Um Numero para a Posicao %d da sua lista:", n + 1);
            scanf("%d", &lista[n]);
            

            if (lista[n] < 0) {
            	system("Color 4");
                printf("\nNumero Negativo, Digite Novamente\n");
                opcao = 0;
                break;
            }
        }
    } while (opcao == 0);
	
	system("cls");

    printf("Lista:\n");
    for (n = 0; n < tamanho; n++) {
   			 	media_aritimetica = media_aritimetica + lista[n];
   			 	media_aritimetica = media_aritimetica / tamanho;
   			 	
			printf("%d ", lista[n]);
	      if (lista[n] > media_aritimetica) {
            qntdDeNumerosMaioresQueaMedia++; 
        }
    }
    system("Color 2");
  printf("\nA Media aritmetica e: %.2f\n",media_aritimetica);
    printf("Quantidade de numeros maiores que a media: %d\n", qntdDeNumerosMaioresQueaMedia);

    return 0;
    }


