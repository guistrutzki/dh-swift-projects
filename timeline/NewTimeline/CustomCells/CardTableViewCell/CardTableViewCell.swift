//
//  CardTableViewCell.swift
//  NewTimeline
//
//  Created by Felipe Miranda on 08/07/21.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    @IBOutlet weak var perfilImageView: UIImageView!
    @IBOutlet weak var cardBackgroundImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.cardBackgroundImageView.layer.cornerRadius = 4
        self.perfilImageView.circleImage()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(value: Animal) {
        
        self.cardBackgroundImageView.image = UIImage(named: value.imageNameBackground)
        self.perfilImageView.image = UIImage(named: value.imageName)
    }
    
}
