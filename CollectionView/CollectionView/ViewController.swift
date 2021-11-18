//
//  ViewController.swift
//  CollectionView
//
//  Created by Guilherme Strutzki on 06/07/21.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var myCollection: UICollectionView!
    @IBOutlet weak var myTableView: UITableView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
        
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
        
        
//        self.myCollection.register(UINib(nibName: "CustomCollectionCell", bundle: nil), forCellWithReuseIdentifier: "CustomCollectionCell")
//
//        self.myCollection.dataSource = self
//        self.myCollection.delegate = self
    }

}

//extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionCell", for: indexPath) as? CustomCollectionCell
//
//        return cell ?? UICollectionViewCell()
//    }
//}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    
}
