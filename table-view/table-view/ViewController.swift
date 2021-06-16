//
//  ViewController.swift
//  table-view
//
//  Created by Guilherme Strutzki on 15/06/21.
//

import UIKit

enum Sections: Int {
    case carros = 0
    case motos = 1
}

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    let carros: [[String : String]] = [
        ["marca": "Honda", "modelo": "Civic"],
        ["marca": "Volks", "modelo": "Gol"],
        ["marca": "GM", "modelo": "Celta"],
        ["marca": "GM", "modelo": "Prisma"],
        ["marca": "Ford", "modelo": "Mustang"],
    ]
    
    let motos: [[String : String]] = [
        ["marca": "Honda", "modelo": "CG"],
        ["marca": "Yamaha", "modelo": "YBR"],
        ["marca": "Honda", "modelo": "CB300"],
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case Sections.carros.rawValue:
            return carros.count
        case Sections.motos.rawValue:
            return motos.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case Sections.carros.rawValue:
            return "Carros"
        case Sections.motos.rawValue:
            return "Motos"
        default:
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        switch indexPath.section {
        case Sections.carros.rawValue:
            cell.textLabel?.text = carros[indexPath.row]["modelo"]
            cell.detailTextLabel?.text = carros[indexPath.row]["marca"]
            break
        case Sections.motos.rawValue:
            cell.textLabel?.text = motos[indexPath.row]["modelo"]
            cell.detailTextLabel?.text = motos[indexPath.row]["marca"]
            break
        default:
            break
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.section == Sections.carros.rawValue) {
            print("O carro selecionado foi \(carros[indexPath.row]["modelo"] ?? "")")
        } else {
            print("A moto selecionado foi \(motos[indexPath.row]["modelo"] ?? "")")
        }
    }
}
