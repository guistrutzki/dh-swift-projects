//
//  LargeCardTableViewCell.swift
//  NewTimeline
//
//  Created by Guilherme Strutzki on 13/07/21.
//

import UIKit

class LargeCardTableViewCell: UITableViewCell {


    @IBOutlet weak var largeCardBackgroundImage: UIImageView!
    
    @IBOutlet weak var perfilImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(value: Animal) {
        self.largeCardBackgroundImage.image = UIImage(named: value.imageNameBackground)
        self.perfilImageView.image = UIImage(named: value.imageName)
    }
    
}
