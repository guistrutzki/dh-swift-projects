//
//  Carro.swift
//  class-objects
//
//  Created by Guilherme Strutzki on 25/05/21.
//

import Foundation

class Carro {
    
    var qtdRodas: Int?
    var cor: String?
    var qtdPortas: Int?
    var marca: String?
    var motor: Float?
    var combustivel: [String]?
    var ano: Int?
    var modelo: String?
    var cambioAutomatico: Bool?
    
    init(
        qtdRodas: Int?,
        cor: String?,
        qtdPortas: Int?,
        marca: String,
        motor: Float?,
        combustivel: [String]?,
        ano: Int?,
        modelo: String?,
        cambioAutomatico: Bool?
    ) {
        self.qtdRodas = qtdRodas
        self.cor = cor
        self.qtdPortas = qtdPortas
        self.marca = marca
        self.motor = motor
        self.combustivel = combustivel
        self.ano = ano
        self.modelo = modelo
        self.cambioAutomatico = cambioAutomatico
    }
    
    func imprimirCarro() {
        print("Modelo: \(self.modelo ?? "")")
        print("Marca: \(self.marca ?? "")")
        print("Cor: \(self.cor ?? "")")
        print("Motor: \(self.motor ?? 0)")
        print("Combustivel: \(self.combustivel ?? [])")
        print("Cambio Automatico: \(self.cambioAutomatico ?? false)")
        
        print("=============================== \n")
    }
}
