//
//  Moto.swift
//  class-objects
//
//  Created by Guilherme Strutzki on 01/06/21.
//

import Foundation

class Moto: Veiculo {
    var cilindradas: Int?
    var tipoFreio: String?
    var guidao: String?
    var esportiva: Bool?
    var pedal: String?
    
    init(
        qtdRodas: Int?,
        cor: String?,
        marca: String,
        motor: Float?,
        combustivel: [String]?,
        ano: Int?,
        modelo: String?,
        cilindradas: Int?,
        tipoFreio: String?,
        guidao: String?,
        esportiva: Bool?,
        pedal: String?
    ) {
        super.init()
        
        self.qtdRodas = qtdRodas
        self.cor = cor
        self.marca = marca
        self.motor = motor
        self.combustivel = combustivel
        self.ano = ano
        self.modelo = modelo
        
        self.cilindradas = cilindradas
        self.tipoFreio = tipoFreio
        self.guidao = guidao
        self.esportiva = esportiva
        self.pedal = pedal
    }
    
    static func getRandomMoto(_ listOfMotos: [Moto]) -> Moto {
        return listOfMotos.randomElement() ?? listOfMotos[0]
    }
}
