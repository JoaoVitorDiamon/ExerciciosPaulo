
final percentual = <double>[1.5, 1.1, 1.05];

class Pessoa{
  int? id;
  String? nome;
  double? salario;
  double? salarioReajustado;
  String? cargos;
  int? idade;



  factory Pessoa.verificacaoId( {required int? id,required String? nome, required double? salario, required String? cargos, required int? idade}) {
    if (id != null && id <= 999) {
      return Pessoa(id: id, nome:nome, salario:salario, cargos:cargos, idade:idade);
    } else {
      throw Exception("Impossível Criar Usuário | Limite Atingido");
    }
  }




  Pessoa({
  required  this.id,
  required  this.nome,
  required  this.salario,
  required  this.cargos,
  required  this.idade,
   this.salarioReajustado
  });

    double reajusteSalarial(){
      if(salario! <= 500){
         return salarioReajustado = salario! * percentual[0];
      }else if(salario! >= 500 && salario! <= 1000){
        return salarioReajustado = salario! * percentual[1];
      }else{
        return salarioReajustado = salario! * percentual[2];
      }
    }

    
}
