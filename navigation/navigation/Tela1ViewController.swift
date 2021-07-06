//
//  ViewController.swift
//  navigation
//
//  Created by Guilherme Strutzki on 01/07/21.
//

import UIKit

class Tela1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedProximaTelaButon(_ sender: Any) {
        self.performSegue(withIdentifier: "Tela2ViewController", sender: nil)
    }
    
}

