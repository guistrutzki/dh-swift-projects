//
//  Programador.swift
//  polimorfism
//
//  Created by Guilherme Strutzki on 08/06/21.
//

import Foundation

class Programador: Funcionario {
    var plataformaDeTrabalho: String
    
    init(nome: String, salario: Float, cpf: String, plataformaDeTrabalho: String) {
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calcularBonusAnual() -> Float {
        return self.salario * 0.2
    }
}
