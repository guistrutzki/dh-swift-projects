//
//  ViewController.swift
//  PickerViewCities
//
//  Created by Guilherme Strutzki on 20/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelRef: UILabel!
    @IBOutlet weak var pickerViewRef: UIPickerView!
    @IBOutlet weak var imageViewRef: UIImageView!
    
    var nomeEscolhido = ""
    
    let cities = [
        "Floripa",
        "Lençois Maranhenses",
        "Campos do jordão",
        "Bonito",
        "Rio de Janeiro"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerViewRef.delegate = self
        self.pickerViewRef.dataSource = self
    }

    @IBAction func didSelectButtonTapped(_ sender: Any) {
        self.labelRef.text = self.nomeEscolhido
    }
    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.cities.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.imageViewRef.image = UIImage(named: self.cities[row] ?? "")
        self.nomeEscolhido = self.cities[row]
    }
    
    
}
