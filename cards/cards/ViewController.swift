//
//  ViewController.swift
//  cards
//
//  Created by Felipe Miranda on 01/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cardTableView: UITableView!
    
    private var arrayCards:[CartoesElement] = [CartoesElement(id: "1234", nome: "Felipe M Silva", data: "27/52", numero: "1234 4566 .... ....", bandeira: "mastercard"), CartoesElement(id: "1235", nome: "Fernando Douglas", data: "27/41", numero: "7845 8956 .... ....", bandeira: "mastercard"),CartoesElement(id: "1236", nome: "Patricia M Silva", data: "27/45", numero: "1245 4589 .... ....", bandeira: "visa")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cardTableView.register(UINib(nibName: "CardCell", bundle: nil), forCellReuseIdentifier: "CardCell")
        self.cardTableView.delegate = self
        self.cardTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.arrayCards.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CardCell? = tableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath) as? CardCell
        
        cell?.setup(value: self.arrayCards[indexPath.section])
        
        return cell ?? UITableViewCell()
    }


}

