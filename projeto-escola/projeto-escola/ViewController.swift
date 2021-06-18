//
//  ViewController.swift
//  projeto-escola
//
//  Created by Guilherme Strutzki on 17/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pessoasTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pessoasTableView.delegate = self
        self.pessoasTableView.dataSource = self
        
        self.pessoasTableView.tableFooterView = UIView()
        
        self.pessoasTableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        
    }
    
    let pessoas: [Pessoa] = [
        Pessoa(nome: "Fulano", sobrenome: "Silveira", idade: 20, genero: .masculino),
        Pessoa(nome: "Marcos", sobrenome: "Nunes", idade: 25, genero: .masculino),
        Pessoa(nome: "Ana", sobrenome: "Oliveira", idade: 18, genero: .feminino),
        Pessoa(nome: "Maria", sobrenome: "Fagundes", idade: 23, genero: .feminino),
        Pessoa(nome: "João", sobrenome: "Neves", idade: 20, genero: .masculino),
        Pessoa(nome: "Antonio", sobrenome: "Goulart", idade: 26, genero: .masculino),
        Pessoa(nome: "Joana", sobrenome: "Ferreira", idade: 21, genero: .feminino),
        Pessoa(nome: "Carla", sobrenome: "Nunes", idade: 21, genero: .feminino),
    ]


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.pessoas.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pessoas"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CustomCell? = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell
        
        cell?.nameLabel.text = self.pessoas[indexPath.row].nome
        cell?.subtitleLabel.text = self.pessoas[indexPath.row].sobrenome
        
//        cell.textLabel?.text = "\(self.pessoas[indexPath.row].nome ?? "") \(self.pessoas[indexPath.row].sobrenome ?? ""), \(self.pessoas[indexPath.row].idade ?? 0)"
        
        return cell ?? UITableViewCell()
    }
    
}
