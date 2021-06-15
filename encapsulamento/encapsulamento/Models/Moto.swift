//
//  Moto.swift
//  encapsulamento
//
//  Created by Fernando Douglas Vieira on 10/06/2021.
//

import Foundation

class Moto: Dirigivel {
    
    var marca: String
    
    init(marca: String) {
        self.marca = marca
    }
    
    func acelerar() {
        print("A moto acelerou")
    }
    
    func freiar() {
        print("A moto freiou")
    }
}
