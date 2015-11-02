//: Tarea 2: Velocímetro de un automóvil digital

import UIKit

import Foundation

enum Velocidades : Int{
    case Apagado = 0 , VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String ){
        var velocidadEnCadena : String
        switch self.velocidad{
        case .Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Velocidad Baja"
        case .VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Media"
        case .VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad Alta"
        case .VelocidadAlta:
            self.velocidad = Velocidades.Apagado
            velocidadEnCadena = "Apagado"
        }
        return (self.velocidad.rawValue, velocidadEnCadena)
    }
}

var auto = Auto()
var veloc : (Int, String)

for i in 1...20{
    veloc = auto.cambioDeVelocidad()
    print("\(veloc.0) , \(veloc.1)")
}
