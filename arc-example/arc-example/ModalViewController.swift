//
//  ModalViewController.swift
//  arc-example
//
//  Created by Guilherme Strutzki on 05/10/21.
//

import UIKit

class ModalViewController: UIViewController {
    var actionHandler: (() -> Void)?
    let network = NetworkService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        network.delegate = self
    }
    @IBAction func didTapBackButton(_ sender: Any) {
        actionHandler?()
    }
    
    @IBAction func didTapSaveButton(_ sender: Any) {
        network.saveValue()
    }
    
    deinit {
        print("Deallocating ModalViewController")
    }
}

extension ModalViewController: NetworkDelegate {
    func saved(status: Bool) {
        print(status)
    }
    
    
}
