import 'dart:io';

void main() {
  List<String> nomes = [];
  List<int> idades = [];
  int registros;

  stdout.write('Digite o número de registros: ');
  registros = int.parse(stdin.readLineSync()!);

  print('Digite os dados dos registros:');
  for (int i = 0; i < registros; i++) {
    stdout.write('Nome da pessoa ${i + 1}: ');
    String nome = stdin.readLineSync()!;
    nomes.add(nome);

    stdout.write('Idade da pessoa ${i + 1}: ');
    int idade = int.parse(stdin.readLineSync()!);
    idades.add(idade);
  }

  print('Usuario Cadastrado:');
  for (int i = 0; i < registros; i++) {
    print('Nome: ${nomes[i]} - Idade: ${idades[i]}');
  }

  //Funcoes

  String calcularIdadePrimeiraPessoa() {
    int idadePrimeira = idades[0];

    print("\nNomes Cujo a Idade Sao Maiores que a Primeira Pessoa");
    for (int i = 1; i < registros; i++) {
      if (idades[i] > idadePrimeira) {
        print(nomes[i]);
      }
    }

    return ('');
  }

  String calcularMedia() {
    final somaDasIdades = idades.reduce((value, element) => value + element);
    final mediaDasIdades = somaDasIdades / registros;

    print("\nMedia:$mediaDasIdades");
    print("\nNomes dos Usuarios cujo a Idade e Maior que a Media:");
    for (int i = 0; i < registros; i++) {
      if (idades[i] > mediaDasIdades) {
        print(nomes[i]);
      }
    }
    return ('');
  }

  String maiorIdade() {
    var maiorNome = nomes[0];
    var maiorIdade = idades[0];

    for (int i = 1; i < registros; i++) {
      if (idades[i] > maiorIdade) {
        maiorNome = nomes[i];
        maiorIdade = idades[i];
      }
    }
    return ('\nNome da pessoa de maior idade: $maiorNome');
  }

  String menorIdade() {
    var menorIdadeNome = nomes[0];
    var menorIdade = idades[0];

    for (int i = 1; i < registros; i++) {
      if (idades[i] < menorIdade) {
        menorIdadeNome = nomes[i];
        menorIdade = idades[i];
      }
    }

    return ('\nNome da pessoa de menor idade: $menorIdadeNome');
  }

  print(calcularIdadePrimeiraPessoa());
  print(calcularMedia());
  print(maiorIdade());
  print(menorIdade());
}
