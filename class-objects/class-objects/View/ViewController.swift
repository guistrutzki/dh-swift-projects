//
//  ViewController.swift
//  class-objects
//
//  Created by Guilherme Strutzki on 25/05/21.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var marcaLabel: UILabel!
    @IBOutlet weak var modeloLabel: UILabel!
    @IBOutlet weak var anoLabel: UILabel!
    @IBOutlet weak var motorLabel: UILabel!
    @IBOutlet weak var combustivelLabel: UILabel!
    @IBOutlet weak var qtdRodasLabel: UILabel!
    @IBOutlet weak var cambioAutomaticoLabel: UILabel!
    @IBOutlet weak var qtdPortasLabel: UILabel!
    @IBOutlet weak var corLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let carro: Carro = Carro(
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
        
        self.marcaLabel.text = "\(carro.marca ?? "")"
        self.modeloLabel.text = "\(carro.modelo ?? "")"
        self.anoLabel.text = "\(carro.ano ?? 0)"
        self.motorLabel.text = "\(carro.motor ?? 0)"
        self.combustivelLabel.text = "\(carro.combustivel ?? [])"
        self.qtdRodasLabel.text = "\(carro.qtdRodas ?? 4)"
        self.cambioAutomaticoLabel.text = "\(carro.cambioAutomatico ?? false)"
        self.qtdPortasLabel.text = "\(carro.qtdPortas ?? 4)"
        self.corLabel.text = "\(carro.cor ?? "")"
        
    }
}

