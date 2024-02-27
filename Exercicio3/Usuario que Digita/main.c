#include <stdio.h>
#include <stdlib.h>


int main(int argc, char *argv[]) {

	float salarioFunc,percentual[3]={1.5, 1.1, 1.05},novoSalario;
		
		printf("Digite seu Salario:");
		scanf("%f", &salarioFunc);
		
		if(salarioFunc <= 500){
			novoSalario = salarioFunc * percentual[0];
		}else if (salarioFunc >= 500 && salarioFunc <= 1000){
			novoSalario = salarioFunc * percentual[1];
		}
		else{
			novoSalario = salarioFunc * percentual[2];
		}
		printf("\nSeu Salario sem reajuste:%.2f\n", salarioFunc);
		printf("\nSeu Salario com reajuste:%.2f", novoSalario);
		
		return  0;
}
