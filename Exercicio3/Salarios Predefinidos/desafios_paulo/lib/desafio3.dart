import 'package:desafios_paulo/desafios_paulo.dart';

void main() {
  List<Pessoa> funcionarios = [];

  try {
    var funcionario1 = Pessoa.verificacaoId(
        id: 999, nome: 'Carlos Eduardo', salario: 1950.00, cargos: 'Gestor Financeiro', idade: 36);
    print('Funcionário 1 criado com sucesso');
    funcionarios.add(funcionario1);

    var funcionario2 = Pessoa.verificacaoId(
        id: 9, nome: 'Alexandre Moura', salario: 600.0, cargos: 'Estagiario', idade: 19);
    print('Funcionário 2 criado com sucesso');
    funcionarios.add(funcionario2);

    var funcionario3 = Pessoa.verificacaoId(
        id: 345, nome: 'Carla Dias', salario: 450.50, cargos: 'Jovem Aprendiz', idade: 17);
    print('Funcionário 3 criado com sucesso');
    funcionarios.add(funcionario3);

    var funcionario4 = Pessoa.verificacaoId(
        id: 653, nome: 'Ronaldo Silva', salario: 1000.00, cargos: 'Estagiario', idade: 20);
    print('Funcionário 4 criado com sucesso');
    funcionarios.add(funcionario4);

    var funcionario5 = Pessoa.verificacaoId(
        id: 876, nome: 'Joao Vitor Diamon', salario: 1500.00, cargos: 'Estagiario de Ti', idade: 22);
    print('Funcionário 5 criado com sucesso\n');
    funcionarios.add(funcionario5);
  } catch (e) {
    print('Exceção capturada: $e');
  }



  for (var funcionario in funcionarios) {
    print("""
    Funcionários:
      Id: ${funcionario.id}
      Nome: ${funcionario.nome}
      Salário: ${funcionario.salario}
      Cargo: ${funcionario.cargos}
      Idade: ${funcionario.idade}
      Salário Reajustado: ${funcionario.reajusteSalarial()}
    """);
  }
}
