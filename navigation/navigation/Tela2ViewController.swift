//
//  Tela2ViewController.swift
//  navigation
//
//  Created by Guilherme Strutzki on 01/07/21.
//

import UIKit

class Tela2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func tappedVoltarButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
