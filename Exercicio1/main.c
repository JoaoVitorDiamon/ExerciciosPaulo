#include <stdio.h>
#include <stdlib.h>

int main() {
    int listas[4], i, n, aux, opcao;

    do {
        opcao = 1; 
        for (i = 0; i < 4; i++) {
            printf("Digite um Numero Para o Vetor %d:", i + 1);
            scanf("%d", &listas[i]);

            
            if (listas[i] <= 0) {
            	system("Color 4");
                printf("\nNumeros Negativos");
                printf("\nDigite Novamente\n\n");
                opcao = 0; 
                break; 
            }

            
            for (n = i - 1; n >= 0; n--) {
                if (listas[i] == listas[n]) {
                    printf("\nNumeros Iguais");
                    system("Color 4");
                     printf("\nDigite Novamente\n\n");
                    opcao = 0; 
                    break; 
                }
            }
            if (opcao == 0)
                break; 
        }
    } while (opcao == 0); 

    for (i = 0; i < 4; i++) {
        for (n = i + 1; n < 4; n++) {
            if (listas[i] < listas[n]) {
                aux = listas[i];
                listas[i] = listas[n];
                listas[n] = aux;
            }
        }
    }
    
    printf("\n\t\t\t\t NUMEROS ORDENADOS EM ORDEM DECRESCENTE\n\n");
    system("Color 2");
    for (i = 0; i < 4; i++) {
        printf("%d ", listas[i]);
    }

    return 0;
}

