//classes,objetos,propriedades e metodos aula 37 ===============


//Classes (class)

//quero criar uma classe q representa uma pessoa

class Pessoa {
  
  var nome: String
  var genero: Character
  var idade: Int = 0
  
  init(nome: String, genero: Character, idade: Int) {         //init para iniciar um construtor
    self.nome = nome
    self.genero = genero
    self.idade = idade
  }
  
  func fale(sentence: String) {
    if idade < 4 {
      print("Gugu dada")
    }else {
      
      print(sentence)
    }
  }
  
  func introducao () {
    fale(sentence: "Ola, meu nome é \(nome)")
  }
}

class trabalho {
  var titulo:String
  var salario: Double
  
  init (titulo: String, salario: Double) {
    self.titulo = titulo
    self.salario = salario
  }
}

let joao = Pessoa(nome: "joão", genero: "M",idade: 34)
let clara = Pessoa(nome: "clara", genero: "F",idade: 27)
let fabio = Pessoa(nome: "Fabio", genero: "M",idade: 2)


joao.introducao()
clara.introducao()
fabio.introducao()

print ("")

class veiculo {

  var velocidade: Double = 0 {
    didSet {
      velocidade = min(velocidade, velocidademaxima)
    }
  }
var modelo: String

  var velocidademaxima: Double {
    return 250
  }
  
  var velocidadeEmMilhasPorHora: Double {
    get{
      return velocidade / 1.60934
    }
    set {
      velocidade = newValue * 1.60934
    }
  }
  init(modelo:String) {
    self.modelo = modelo
  }

  func descript() -> String {
    return "Veiculo \(modelo), velocidade atual: \(velocidade)"
  }
  //objeto de classe, sem instancia
  
  class func alerta() -> String {
    return "se beber nao dirija!"
  }
  
}

  
print (veiculo.alerta())

let carro = veiculo(modelo: "centra")
carro.velocidade = 500

print(carro.velocidade)      //como a velocidade maxima e 250 e eu fiz um didSet la em cima ela esta protegida e nao consegue passar da velocidade maxima


print(" ")


//Herança aula 38 ================

//herança utilisa codigos criados em uma classe para continuar fazendo variaçoes em outras classes criadas

class animal {

let cor: String
let genero: Character
let raca: String

init(cor: String, genero: Character, raca: String) {
  self.cor = cor
  self.raca = raca
  self.genero = genero
}
 
  func emitaSom1() {
    print("auau")
  }
  
  func emitaSom2() {
    print("piu piu")
  }
  
}

class cachorro: animal {
  func corra() {
    print("o cachorro enta correndo")
  }
}

class passaro: animal {
  
  let podeVoar: Bool
  
  func voar() {
    if podeVoar {
      print ("o passaro esta voando")
    }else {
      print ("este passaro nao voa")
    }
}
  // Designated Initializer
  init(cor: String, genero: Character, raca: String, podeVoar: Bool) {
    self.podeVoar = podeVoar
    super.init(cor: cor, genero: genero, raca: raca)
  }
  // convenience initializer 
}
  
let Rolic = cachorro(cor: "preto", genero: "M", raca: "shitzu")
let zezin = passaro(cor: "verde", genero: "M", raca: "papagaio", podeVoar: true)


Rolic.emitaSom1()
zezin.emitaSom2()










