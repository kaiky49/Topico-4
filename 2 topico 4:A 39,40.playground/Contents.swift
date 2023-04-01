//encapsulamento aula 39 ===================

import CoreFoundation



class cartaoDeCredito {
  
  let numero: String
  let limite: Double
  private var valorDaFatura : Double = 0   //estou encapsulando ele
  
  let iof: Double = 6.38
  
  init(numero: String, limite: Double) {
    self.numero = numero
    self.limite = limite
  }
  
  func compras(off valor: Double, eInternacional: Bool) -> Bool {
    let debito = eInternacional ? valor * (1 + iof/100) : valor      // se for uma compra internacional ele vai cobrar iof
    let valorFinal = valorDaFatura + debito
    if valorFinal > limite {
      return false
    } else {
      valorDaFatura = valorFinal
      return true
    }
    
  }
  
  func obterFatura() -> Double {
    return valorDaFatura
  }
  
}

let CartaoDeCredito = cartaoDeCredito(numero: "1234-4325-9878-4832", limite: 5000)
CartaoDeCredito.compras(off: 1500, eInternacional: true)
print(CartaoDeCredito.obterFatura())


//CartaoDeCredito.valorDaFatura = 0
//print(CartaoDeCredito.valorDaFatura)


//agr com cartao de debito tbm

class CartaoDeDEBITO: cartaoDeCredito {
  private var _balanca: Double = 0                 //   usar o _ antes na palavra serve pra mostrar e dizer q a variavel e privada
  
  var balanca: Double{
    return _balanca
  }
  
  func transacaoc(of valor: Double) {
    _balanca += valor
  }
}







//polimorfismo e typecasting aula 40 ============================ =======================

class animal {

let cor: String
let genero: Character
let raca: String

init(cor: String, genero: Character, raca: String) {
  self.cor = cor
  self.raca = raca
  self.genero = genero
}
 
  func emitaSom() {
    print("...")
  }
}

class cachorro: animal {
  
  override func emitaSom() {
    print("Au au au ")
  }
  
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
  
  override func emitaSom() {
    print ("piu piu piu ")
  }
  
  
  
  
  // Designated Initializer
  init(cor: String, genero: Character, raca: String, podeVoar: Bool) {
    self.podeVoar = podeVoar
    super.init(cor: cor, genero: genero, raca: raca)
  }
  // convenience initializer
}

class pato: passaro {
  
  override init(cor: String, genero: Character, raca: String, podeVoar: Bool?) {
    super.init(cor: cor, genero: genero, raca: raca, podeVoar: true)
  }
  override func emitaSom() {
    print("quack quack quack ")
  }
  

}
let Rolic = cachorro(cor: "preto", genero: "M", raca: "shitzu")
let zezin = passaro(cor: "verde", genero: "M", raca: "papagaio", podeVoar: true)
let donald = pato(cor: "braco", genero: "M", raca: "pato", podeVoar: true)


Rolic.emitaSom()
zezin.emitaSom()
donald.emitaSom()

print(" ")

   //Type Casting

let animais : [animal] = [
  animal(cor: "preto", genero: "F", raca: "Zurubeba"),
  cachorro(cor: "marrom", genero: "M", raca: "dalmata"),
  cachorro(cor: "branco", genero: "M", raca: " pitBull"),
  pato(cor: "branco", genero: "F", raca: "Silvestre", podeVoar: true),
  passaro(cor: "Verde", genero: "F", raca: "Avestruz", podeVoar: false)
]

for animal in  animais{
  animal.emitaSom()
  
  if animal is cachorro{
    (animal as! cachorro).corra()
  }
  
  if animal is pato{
    (animal as! pato).voar()
  }
}
  


