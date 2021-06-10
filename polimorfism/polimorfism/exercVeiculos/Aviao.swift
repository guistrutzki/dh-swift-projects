//
//  Aviao.swift
//  polimorfism
//
//  Created by Guilherme Strutzki on 08/06/21.
//

import Foundation

class Aviao: Veiculo {
    var piloto: String
    var companhiaAerea: String
    
    init(cor: String, preco: Double, quantidadeDePassageiros: Int, piloto: String, companhiaAerea: String) {
        self.piloto = piloto
        self.companhiaAerea = companhiaAerea
        super.init(cor: cor, preco: preco, quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
    override func calculaCombustivel(distancia: Int) -> Int {
        return self.quantidadeDePassageiros * distancia
    }
}
