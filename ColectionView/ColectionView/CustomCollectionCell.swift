//
//  CustomCollectionCell.swift
//  ColectionView
//
//  Created by Evandro Rodrigo Minamoto on 06/07/21.
//

import UIKit

class CustomCollectionCell: UICollectionViewCell {
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
        self.clipsToBounds = true
        self.layer.borderColor = UIColor.purple.cgColor
        self.layer.borderWidth = 1.5
        // Initialization code
    }
    
}
