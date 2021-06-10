//
//  Carro.swift
//  polimorfism
//
//  Created by Guilherme Strutzki on 08/06/21.
//

import Foundation

class Carro: Veiculo {
    var tamanhoDasRodas: Int
    
    init(cor: String, preco: Double, quantidadeDePassageiros: Int, tamanhoDasRodas: Int) {
        self.tamanhoDasRodas = tamanhoDasRodas
        super.init(cor: cor, preco: preco, quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
    override func calculaCombustivel(distancia: Int) -> Int {
        return self.tamanhoDasRodas * self.quantidadeDePassageiros * distancia
    }
}
