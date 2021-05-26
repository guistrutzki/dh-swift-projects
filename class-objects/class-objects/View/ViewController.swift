//
//  ViewController.swift
//  class-objects
//
//  Created by Guilherme Strutzki on 25/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var arrayCarros:[Carro] = []
        
        arrayCarros.append(
            Carro(
                qtdRodas: 4,
                cor: "Azul",
                qtdPortas: 4,
                marca: "GM",
                motor: 2.0,
                combustivel: ["Gasolina"],
                ano: 2010, modelo: "Celta",
                cambioAutomatico: false
            )
        )
        
        arrayCarros.append(
            Carro(
                qtdRodas: 4,
                cor: "Vermelho",
                qtdPortas: 4,
                marca: "VW",
                motor: 1.0,
                combustivel: ["Gasolina"],
                ano: 2020,
                modelo: "Gol",
                cambioAutomatico: true
            )
        )
        
        arrayCarros.append(
            Carro(
                qtdRodas: 4,
                cor: "Preto",
                qtdPortas: 4,
                marca: "Audi",
                motor: 1.8,
                combustivel: ["Gasolina"],
                ano: 2018,
                modelo: "A4",
                cambioAutomatico: true
            )
        )
        
        arrayCarros.append(
            Carro(
                qtdRodas: 4,
                cor: "Branco",
                qtdPortas: 4,
                marca: "Ford",
                motor: 2.5,
                combustivel: ["Diesel"],
                ano: 2019,
                modelo: "Ranger",
                cambioAutomatico: true
            )
        )
       
        
        for eachCar in arrayCarros {
            eachCar.imprimirCarro()
        }
        
    }


}

