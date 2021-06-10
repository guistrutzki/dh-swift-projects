//
//  Veiculo.swift
//  class-objects
//
//  Created by Guilherme Strutzki on 01/06/21.
//

import Foundation

class Veiculo {
    var qtdRodas: Int?
    var cor: String?
    var marca: String?
    var motor: Float?
    var combustivel: [String]?
    var ano: Int?
    var modelo: String?
    
    func acelerar() {
        print("acelerar")
    }
    
    func estacionar() {
        print("estacionar")
    }
    
    func freiar() {
        print("freiar")
    }
}
