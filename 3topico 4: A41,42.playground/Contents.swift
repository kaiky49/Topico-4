
//Extensões aula 41 =======================
import Foundation
/*
let name = "kaiky kevin"
//extensões em variavel computada
extension String {
  
  var vowels: [Character] {
    var list: [Character] = []
    for character in Characters {                                                 //vtmnc
      switch string(character).lowercase() {
      case "a", "e", "i", "o", "u" :
        list.append(character)
      default:
        break
      }
    }
    return list
  }
  // estensões em metodo
  func initials() -> String {
    let array = self.components (separatedBy: " ")
    let firsts = array.map({$0.first!})
    return String(firsts)
  }
}
   
print(name.vowels)

print(name.initials())
*/
//uma conta corrente

class acconunt {
  let number: String
  var balance: Double = 0
  
  init(number: String){
    self.number = number
  }
}

extension acconunt {
  convenience init(number: String, balancce: Double) {
    self.init (number: number)
    self.balance = balancce
  }
}



//protocolos aula 42 ================================

enum TipoCombustivel {
  case gasolina, etanil, disel, flex
}

protocol arCondicionado {
  var temAR: Bool {get set}
  func ligadoAr(on: Bool)
}

class veiculo {
  var marca: String
  var tipoCombustivel: TipoCombustivel
   
  init(marca: String, tipoCombustivel: TipoCombustivel) {
    self.marca = marca
    self.tipoCombustivel = tipoCombustivel
  }
}

class carro : veiculo, arCondicionado {
  var numeroPortas: Int
  var temAR: Bool = true
  
  init(marca: String, tipoCombustivel: TipoCombustivel, numeroPortas: Int) {
    self.numeroPortas = numeroPortas
    super.init(marca: marca, tipoCombustivel: tipoCombustivel)
  }
  
  func ligadoAr(on: Bool) {
    if on {
      print ("ligando ar-condicionado")
    }else{
      print("desligando ar-condicionado")
    }
  }
  
}


class moto: veiculo {
  
  var cc: Int
  
  init(marca: String, tipoCombustivel: TipoCombustivel, cc: Int) {
    self.cc = cc
    super.init(marca: marca, tipoCombustivel: tipoCombustivel)
    
  }
}

class aviao: veiculo, arCondicionado {
  
  var numeroMotor: Int
  var temAR: Bool = true
  
  init(marca: String, tipoCombustivel: TipoCombustivel, numeroMotor: Int) {
    self.numeroMotor = numeroMotor
    super.init(marca: marca, tipoCombustivel: tipoCombustivel)
  }
  
  func ligadoAr(on: Bool) {
    if numeroMotor > 1 {
      print ("esse aviao e monomoto, nao possue ar-condicionado")
    }else {
    if on {
      print("o ar-condicionado esta ligado")
    }else{
      print("o ar-condicionado esta desligado")
    }
  }
}

}
