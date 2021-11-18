//
//  CicleCollectionViewCell.swift
//  NewTimeline
//
//  Created by Felipe Miranda on 08/07/21.
//

import UIKit

class CicleCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cicleImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.cicleImageView.circleImage()
        
        // Initialization code
    }
    
    func setup(value: Animal) {
        
        self.cicleImageView.image = UIImage(named: value.imageName)
    }

}
