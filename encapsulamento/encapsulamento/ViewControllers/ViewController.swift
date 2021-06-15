//
//  ViewController.swift
//  encapsulamento
//
//  Created by Fernando Douglas Vieira on 10/06/2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let carro = Carro(modelo: "Monza")
        print(carro.getModelo())
        
        let motorista = Motorista(nome: "Rubinho", cpf: "123123123-12", placa: "Ferrari02")
        motorista.viajar(tipoDaViagem: .corridaPool, distanciaEmKm: 8.200)
        motorista.viajar(tipoDaViagem: .corridaX, distanciaEmKm: 3.300)
        motorista.viajar(tipoDaViagem: .corridaBlack, distanciaEmKm: 21.000)
        
        print("O saldo do motorista \(motorista.nome) é R$ \(motorista.saldo)")
        
        print("***************")
        
        let moto = Moto(marca: "Honda")
        let uno = Carro(modelo: "Uno")
        
        let automoveis: [Dirigivel] = [moto, uno]
        
        for automovel in automoveis {
            automovel.acelerar()
            automovel.freiar()
        }
        
        textField.delegate = self
        textField2.delegate = self

    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        view.backgroundColor = .brown
        
        if textField == self.textField {
            print("TextField 1")
        } else if textField == self.textField2 {
            print("TextField 2")
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        view.backgroundColor = .blue
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
    
}

