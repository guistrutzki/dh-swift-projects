//
//  Veiculo.swift
//  polimorfism
//
//  Created by Guilherme Strutzki on 08/06/21.
//

import Foundation

class Veiculo {
    var cor: String
    var preco: Double
    var quantidadeDePassageiros: Int
    
    init(cor: String, preco: Double, quantidadeDePassageiros: Int) {
        self.cor = cor
        self.preco = preco
        self.quantidadeDePassageiros = quantidadeDePassageiros
    }
    
    func calculaCombustivel(distancia: Int) -> Int {
        return distancia
    }
}
