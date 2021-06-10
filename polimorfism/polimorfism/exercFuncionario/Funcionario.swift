//
//  Funcionario.swift
//  polimorfism
//
//  Created by Guilherme Strutzki on 08/06/21.
//

import Foundation

class Funcionario {
    var nome: String
    var salario: Float
    var cpf: String
    
    init(nome: String, salario: Float, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func calcularBonusAnual() -> Float {
        return salario
    }
}
