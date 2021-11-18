//
//  ViewController.swift
//  arc-example
//
//  Created by Guilherme Strutzki on 05/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapShowModal(_ sender: Any) {
        showModal()
    }
    
    func showModal() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let modalVC = storyboard
                .instantiateViewController(withIdentifier:String(describing: ModalViewController.self))
                as? ModalViewController else { return }
        
        modalVC.actionHandler = { [weak modalVC] in
            modalVC?.dismiss(animated: true, completion: nil)
        }
        
        present(modalVC, animated: true, completion: nil)
    }
    
    deinit {
        print("Deallocating ViewController")
    }
}

