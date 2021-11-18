//
//  HorizontalTableViewCell.swift
//  NewTimeline
//
//  Created by Felipe Miranda on 08/07/21.
//

import UIKit

protocol HorizontalTableViewCellProtocol: AnyObject {
    
    func didSelectAnimal(value: Animal)
}


class HorizontalTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var horizontalCollectionView: UICollectionView!
    
    private var arrayAnimais: [Animal] = []
    
    weak var delegate: HorizontalTableViewCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.horizontalCollectionView.register(UINib(nibName: "CicleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CicleCollectionViewCell")
        
        self.horizontalCollectionView.dataSource = self
        self.horizontalCollectionView.delegate = self
        
        
        // Initialization code
    }
    
    func setup(value: [Animal]) {
        
        self.arrayAnimais = value
        
        self.horizontalCollectionView.reloadData()
    }
}


extension HorizontalTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrayAnimais.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: CicleCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: "CicleCollectionViewCell", for: indexPath) as? CicleCollectionViewCell
        
        cell?.setup(value: self.arrayAnimais[indexPath.row])
        
        return cell ?? UICollectionViewCell()
    
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("HorizontalTableViewCell=====didSelectItemAt====\n \(self.arrayAnimais[indexPath.row])")
        
        self.delegate?.didSelectAnimal(value: self.arrayAnimais[indexPath.row])
    }
    
}


