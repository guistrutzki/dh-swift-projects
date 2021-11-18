//
//  ViewController.swift
//  insta-view-code-exerc
//
//  Created by Guilherme Strutzki on 26/10/21.
//

import UIKit
import Utils

class ViewController: UIViewController {
    
    let loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = loginView
    }

}

