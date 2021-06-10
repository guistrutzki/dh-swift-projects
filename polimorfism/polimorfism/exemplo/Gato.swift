//
//  Gato.swift
//  polimorfism
//
//  Created by Guilherme Strutzki on 08/06/21.
//

import Foundation

class Gato: Animal {
    
    override init(nome: String, cor: String) {
        super.init(nome: nome, cor: cor)
    }
    
    override func emitirSom() -> String {
        return "Miauuu"
    }
    
    override func comer() {
        print("Devorando um peixe")
    }
}
