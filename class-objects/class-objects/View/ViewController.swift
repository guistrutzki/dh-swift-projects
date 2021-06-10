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
    
    @IBOutlet weak var labelTitle1: UILabel!
    @IBOutlet weak var labelTitle2: UILabel!
    @IBOutlet weak var labelTitle3: UILabel!
    @IBOutlet weak var labelTitle4: UILabel!
    @IBOutlet weak var labelTitle5: UILabel!
    @IBOutlet weak var labelTitle6: UILabel!
    @IBOutlet weak var labelTitle7: UILabel!
    @IBOutlet weak var labelTitle8: UILabel!
    @IBOutlet weak var labelTitle9: UILabel!
    
    var arrayCarros:[Carro] = []
    var arrayMotos: [Moto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // --------- Motos
        self.arrayMotos.append(
            Moto(qtdRodas: 2, cor: "preto", marca: "honda", motor: 2.0, combustivel: ["gasolina"], ano: 2020, modelo: "CG", cilindradas: 150, tipoFreio: "abs", guidao: "comum", esportiva: false, pedal:  "tipo1")
        )
        
        self.arrayMotos.append(
            Moto(qtdRodas: 2, cor: "cinza", marca: "Suzuki", motor: 2.0, combustivel: ["gasolina"], ano: 2020, modelo: "GSX-S750", cilindradas: 400, tipoFreio: "abs", guidao: "comum", esportiva: false, pedal:  "tipo2")
        )
        
        self.arrayMotos.append(
            Moto(qtdRodas: 2, cor: "branca", marca: "Honda", motor: 1.0, combustivel: ["gasolina"], ano: 2020, modelo: "Biz", cilindradas: 400, tipoFreio: "abs", guidao: "comum", esportiva: false, pedal:  "tipo2")
        )
        
        self.arrayMotos.append(
            Moto(qtdRodas: 2, cor: "azul", marca: "Yamaha", motor: 1.0, combustivel: ["gasolina"], ano: 2020, modelo: "r15", cilindradas: 400, tipoFreio: "abs", guidao: "comum", esportiva: true, pedal:  "tipo2")
        )
        
        // ------- Carros
        self.arrayCarros.append(
            Carro(qtdRodas: 4, cor: "Azul", qtdPortas: 4, marca: "GM", motor: 2.0, combustivel: ["Gasolina"], ano: 2010, modelo: "Celta", cambioAutomatico: false
            )
        )
        
        self.arrayCarros.append(
            Carro(qtdRodas: 4, cor: "Vermelho", qtdPortas: 4, marca: "VW", motor: 1.0, combustivel: ["Gasolina"], ano: 2020, modelo: "Gol", cambioAutomatico: true
            )
        )
        
        self.arrayCarros.append(
            Carro(qtdRodas: 4, cor: "Preto", qtdPortas: 4, marca: "Audi", motor: 1.8, combustivel: ["Gasolina"], ano: 2018, modelo: "A4", cambioAutomatico: true
            )
        )
        
        self.arrayCarros.append(
            Carro(qtdRodas: 4, cor: "Branco", qtdPortas: 4, marca: "Ford", motor: 2.5, combustivel: ["Diesel"], ano: 2019, modelo: "Ranger", cambioAutomatico: true
            )
        )
        
        self.updateLabels(Carro.getRandomCar(self.arrayCarros))
        self.updateLabels(Moto.getRandomMoto(self.arrayMotos))
        
    }
    
    func updateLabels(_ randomCar: Carro) {
        self.marcaLabel.text = "\(randomCar.marca ?? "")"
        self.modeloLabel.text = "\(randomCar.modelo ?? "")"
        self.anoLabel.text = "\(randomCar.ano ?? 0)"
        self.motorLabel.text = "\(randomCar.motor ?? 0)"
        self.combustivelLabel.text = "\(randomCar.combustivel ?? [])"
        self.qtdRodasLabel.text = "\(randomCar.qtdRodas ?? 4)"
        self.cambioAutomaticoLabel.text = "\(randomCar.cambioAutomatico ?? false ? "Automático" : "Manual")"
        self.qtdPortasLabel.text = "\(randomCar.qtdPortas ?? 4)"
        self.corLabel.text = "\(randomCar.cor ?? "")"
        
        self.labelTitle7.text = "Cambio"
        self.labelTitle8.text = "Quantidade de Portas"
    }
    
    func updateLabels(_ randomMoto: Moto) {
        self.marcaLabel.text = "\(randomMoto.marca ?? "")"
        self.modeloLabel.text = "\(randomMoto.modelo ?? "")"
        self.anoLabel.text = "\(randomMoto.ano ?? 0)"
        self.motorLabel.text = "\(randomMoto.motor ?? 0)"
        self.combustivelLabel.text = "\(randomMoto.combustivel ?? [])"
        self.qtdRodasLabel.text = "\(randomMoto.qtdRodas ?? 4)"
        self.corLabel.text = "\(randomMoto.cor ?? "")"
        
        self.cambioAutomaticoLabel.text = "---"
        self.qtdPortasLabel.text = "---"
        
        self.labelTitle7.text = "---"
        self.labelTitle8.text = "---"

    }
    
    @IBAction func tappedRaffleCar(_ sender: Any) {
        let randomInt = Int.random(in: 0..<10)
        
        if randomInt % 2 == 0 {
            self.updateLabels(Carro.getRandomCar(self.arrayCarros))
            return
        }
        
        self.updateLabels(Moto.getRandomMoto(arrayMotos))
        
    }
}

