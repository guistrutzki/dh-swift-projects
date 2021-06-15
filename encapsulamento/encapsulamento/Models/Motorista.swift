//
//  Motorista.swift
//  encapsulamento
//
//  Created by Fernando Douglas Vieira on 10/06/2021.
//

import Foundation

enum TipoViagem {
    case corridaX
    case corridaPool
    case corridaBlack
}

class Motorista {
    
    private(set) var nome: String
    private let cpf: String
    private(set) var placa: String
    private(set) var saldo: Double = 0.0
    
    init(nome: String, cpf: String, placa: String) {
        self.nome = nome
        self.cpf = cpf
        self.placa = placa
    }
    
    func viajar(tipoDaViagem: TipoViagem, distanciaEmKm: Double) {
        
        switch tipoDaViagem {
            case .corridaX:
                calculaViagemX(distanciaEmKm: distanciaEmKm)
            case .corridaPool:
                calculaViagemPool(distanciaEmKm: distanciaEmKm)
            case .corridaBlack:
                calculaViagemBlack(distanciaEmKm: distanciaEmKm)
        }
        
    }
    
    private func calculaViagemX(distanciaEmKm: Double) {
        saldo += distanciaEmKm * 1
    }
    
    private func calculaViagemPool(distanciaEmKm: Double) {
        saldo += distanciaEmKm * 2
    }
    
    private func calculaViagemBlack(distanciaEmKm: Double) {
        saldo += distanciaEmKm * 3
    }
    
}
