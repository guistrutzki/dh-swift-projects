//
//  CustomCell.swift
//  projeto-escola
//
//  Created by Guilherme Strutzki on 17/06/21.
//

import UIKit

protocol CustomCellProtocal: AnyObject {
    func tappedEditButton(value: Pessoa)
}

class CustomCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var perfilImage: UIImageView!
    private var pessoa: Pessoa?
    
    weak var delegate: CustomCellProtocal?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(value: Pessoa) {
        self.pessoa = value
        self.nameLabel.text = value.nome
        self.subtitleLabel.text = value.sobrenome
        self.perfilImage.image = UIImage(named: value.avatar ?? "")
    }
    
    @IBAction func tappedEditButton(_ sender: UIButton) {
        if let _pessoa = self.pessoa {
            self.delegate?.tappedEditButton(value: _pessoa)
            print("tappedEditButton")
        }
    }
}
