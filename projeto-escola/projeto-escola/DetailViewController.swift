//
//  DetailViewController.swift
//  projeto-escola
//
//  Created by Guilherme Strutzki on 22/06/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var sobrenomeLabel: UILabel!
    @IBOutlet weak var idadeLabel: UILabel!
    @IBOutlet weak var generoLabel: UILabel!
    
    var pessoaSelecionada: Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.detailImageView.image = UIImage(named: self.pessoaSelecionada?.avatar ?? "")
        self.nomeLabel.text = self.pessoaSelecionada?.nome
        self.sobrenomeLabel.text = self.pessoaSelecionada?.sobrenome
        self.generoLabel.text = self.pessoaSelecionada?.genero?.rawValue
        self.idadeLabel.text = String(self.pessoaSelecionada?.idade ?? 0)
    }
}
