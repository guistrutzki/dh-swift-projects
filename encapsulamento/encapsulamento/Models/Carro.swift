//
//  Carro.swift
//  encapsulamento
//
//  Created by Fernando Douglas Vieira on 10/06/2021.
//

import Foundation

public class Carro: Dirigivel {
        
    private var modelo: String
    
    init(modelo: String) {
        self.modelo = modelo
    }
    
    func getModelo() -> String {
        //Fazer a lógica aqui
        return modelo
    }
    
    func setModelo(_ modelo: String) {
        //Fazer a lógica aqui
        self.modelo = modelo
    }
    
    private func velocidadeMaxima() -> Double {
        return 100.0
    }
    
    func acelerar() {
        print("O carro acelerou")
    }
    
    func freiar() {
        print("O carro freiou")
    }
    
}
