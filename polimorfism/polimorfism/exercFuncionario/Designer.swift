//
//  Designer.swift
//  polimorfism
//
//  Created by Guilherme Strutzki on 08/06/21.
//

import Foundation

class Designer: Funcionario {
    var ferramentaPreferida: String
    
    init(nome: String, salario: Float, cpf: String, ferramentaPreferida: String) {
        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calcularBonusAnual() -> Float {
        return self.salario * 0.15
    }
}

