//classes vs structs e gerenciamento de memoria:ACR aula 45 =======


struct estudante {
  var nome: String
  var idade: Int
}

class aluno {
  var nome: String
  var idade: Int
  var amigo: aluno?
  
  init(nome: String, idade: Int) {
    self.nome = nome
    self.idade = idade
  }
  deinit {
    print("\( nome) foi desalocado da memoria")
  }
}

var estudante1 = estudante(nome: "zeca", idade: 22)
var estudante2 = estudante1

estudante1.nome = "alisson"
estudante1.idade = 33                                               // value type
print(estudante2.nome, estudante2.idade)                //struct faz uma cipia e nao e alterada,sao passadas por copia

//      ----------------------------------

var aluno1 = aluno(nome: "Felipe", idade: 27)
var aluno2 = aluno(nome: "henrique", idade: 44)

aluno1.nome = "alessandro"
aluno1.idade = 32

print(aluno2.nome, aluno2.idade)

aluno1.amigo = aluno2                                               //reference type
aluno2.amigo = aluno1                                  // class muda junto com a sua copia,sao passados por referancia

//aluno1 = nil
//aluno2 = nil

 

//subscript e Generics aula 44 ======================






