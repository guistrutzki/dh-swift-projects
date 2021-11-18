//
//  CustomTableViewCell.swift
//  ColectionView
//
//  Created by Evandro Rodrigo Minamoto on 06/07/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myCollection: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.myCollection.register(UINib(nibName: "CustomCollectionCell", bundle: nil), forCellWithReuseIdentifier: "CustomCollectionCell")
        self.myCollection.dataSource = self
        self.myCollection.delegate = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension CustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 20
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionCell", for: indexPath) as? CustomCollectionCell
        
        return cell ?? UICollectionViewCell ()
    }
    
}
