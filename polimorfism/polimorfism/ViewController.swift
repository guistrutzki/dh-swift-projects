//
//  ViewController.swift
//  polimorfism
//
//  Created by Guilherme Strutzki on 08/06/21.
//

import UIKit

class ViewController: UIViewController {
    
//    let mimosa: Vaca = Vaca(nome: "Mimosa", cor: "Marrom", litrosDeLeiteProduzidosPorDia: 3)
//    let adamastor: Gato = Gato(nome: "Adamastor", cor: "Preto")
    
//    let programador: Funcionario = Programador(nome: "Fulano",
//                                               salario: 5000,
//                                               cpf: "0230212323",
//                                               plataformaDeTrabalho: "iOS")
//
//    let designer: Funcionario = Designer(nome: "Beltrano",
//                                         salario: 5000,
//                                         cpf: "0332123232",
//                                         ferramentaPreferida: "Figma")
    
    
    let viagemAviao: Veiculo = Aviao(cor: "Branco",
                                     preco: 200,
                                     quantidadeDePassageiros: 200,
                                     piloto: "Fulano",
                                     companhiaAerea: "Latam")
    
    let viagemCarro: Veiculo = Carro(cor: "Preto",
                                     preco: 50,
                                     quantidadeDePassageiros: 4,
                                     tamanhoDasRodas: 15)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Total de combustível na viagem de avião: R$ \(viagemAviao.calculaCombustivel(distancia: 1500))")
        print("Total de combustível na viagem de carro: R$ \(viagemCarro.calculaCombustivel(distancia: 400))")
        
//        print("Bonus do programador: \(programador.calcularBonusAnual())")
//        print("Bonus do Designer: \(designer.calcularBonusAnual())")
        
//        mimosa.comer()
//        adamastor.comer()
//
//        mimosa.andar()
//        adamastor.andar()
    }


}

