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
    
    var pessoas: [Pessoa] = [
        Pessoa(nome: "Fulano", sobrenome: "Silveira", idade: 20, genero: .masculino, avatar: "image1", customID: 1),
        Pessoa(nome: "Marcos", sobrenome: "Nunes", idade: 25, genero: .masculino, avatar: "image2", customID: 2),
        Pessoa(nome: "Ana", sobrenome: "Oliveira", idade: 18, genero: .feminino, avatar: "image3", customID: 3),
        Pessoa(nome: "Maria", sobrenome: "Fagundes", idade: 23, genero: .feminino, avatar: "image4", customID: 4),
        Pessoa(nome: "João", sobrenome: "Neves", idade: 20, genero: .masculino, avatar: "image5", customID: 5),
        Pessoa(nome: "Antonio", sobrenome: "Goulart", idade: 26, genero: .masculino, avatar: "image2", customID: 6),
        Pessoa(nome: "Joana", sobrenome: "Ferreira", idade: 21, genero: .feminino, avatar: "image4", customID: 7),
        Pessoa(nome: "Carla", sobrenome: "Nunes", idade: 21, genero: .feminino, avatar: "image1", customID: 8),
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
        
        cell?.setup(value: self.pessoas[indexPath.row])
        cell?.delegate = self
        
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pessoaSelecionada: Pessoa = self.pessoas[indexPath.row]
        
        performSegue(withIdentifier: "DetailViewController", sender: pessoaSelecionada)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EditViewController" {
            let vc: EditViewController? = segue.destination as? EditViewController
            vc?.pessoaSelecionada = sender as? Pessoa
            vc?.delegate = self
        } else {
            let vc: DetailViewController? = segue.destination as? DetailViewController
            vc?.pessoaSelecionada = sender as? Pessoa
        }
    }
}

extension ViewController: CustomCellProtocal {
    func tappedEditButton(value: Pessoa) {
        self.performSegue(withIdentifier: "EditViewController", sender: value)
    }
}

extension ViewController: EditViewControllerProtocol {
    func updatePessoa(value: Pessoa) {
        
        self.pessoasTableView.reloadData()
        
        print("ViewController ------- EditViewController")
    }
}

