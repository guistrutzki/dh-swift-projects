//
//  ViewController.swift
//  stepper-switch
//
//  Created by Guilherme Strutzki on 06/07/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var switchComponent: UISwitch!
    @IBOutlet weak var stepperComponent: UIStepper!
    @IBOutlet weak var labelComponent: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchDidChanged(_ sender: Any) {
        self.stepperComponent.isEnabled = switchComponent.isOn
    }
    
    @IBAction func stepperDidChanged(_ sender: Any) {
        self.labelComponent.text = "\(self.stepperComponent.value)"
        
    }
}

