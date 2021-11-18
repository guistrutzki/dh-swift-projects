//
//  ViewController.swift
//  PickerView
//
//  Created by Guilherme Strutzki on 20/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var labelRef: UILabel!
    
    var listOfFruits: [[String]] = []
    
    let fruitsOne: [String] = ["🍎", "🍌", "🥑", "🍀", "🍐", "🍍"]
    let fruitsTwo: [String] = ["🍎", "🍌", "🥑", "🍀", "🍐", "🍍"]
    let fruitsThree: [String] = ["🍎", "🍌", "🥑", "🍀", "🍐", "🍍"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfFruits = [fruitsOne, fruitsTwo, fruitsThree]
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    
    
    @IBAction func clickMeDidTapped(_ sender: Any) {
        let firstRandomNumber = Int.random(in: 0..<5)
        let secondRandomNumber = Int.random(in: 0..<5)
        let lastRandomNumber = Int.random(in: 0..<5)
        
        pickerView.selectRow(firstRandomNumber, inComponent: 0, animated: true)
        pickerView.selectRow(secondRandomNumber, inComponent: 1, animated: true)
        pickerView.selectRow(lastRandomNumber, inComponent: 2, animated: true)
        
        if (firstRandomNumber == secondRandomNumber && secondRandomNumber == lastRandomNumber) {
            labelRef.text = "Parabéns você ganhou 🎉"
        } else {
            labelRef.text = "Tente novamente 😢"
        }
        
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.listOfFruits[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.listOfFruits[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("row ->\(row)  column\(component)")
    }
    
}
