//
//  ViewController.swift
//  UIAlert
//
//  Created by Guilherme Strutzki on 15/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func triggerAlert() {
        let alert: UIAlertController = UIAlertController(title: "Alerta", message: "Deseja mesmo remover este item?", preferredStyle: .alert)
        
        let btnCancel: UIAlertAction = UIAlertAction(title: "Cancelar", style: .cancel) { action in
            print("Cancelar")
        }
        
        let btnConfirmar: UIAlertAction = UIAlertAction(title: "Confirmar", style: .default) { action in
            print("Confirmar")
        }
        
        alert.addAction(btnCancel)
        alert.addAction(btnConfirmar)
        
        alert.addTextField { textField in
            textField.delegate = self
            textField.placeholder = "Digite algo"
        }
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func triggerActionSheet() {
        let actionSheet: UIAlertController = UIAlertController(title: "Alerta", message: "Deseja mesmo remover este item?", preferredStyle: .actionSheet)
        
        let btnCancel: UIAlertAction = UIAlertAction(title: "Cancelar", style: .destructive) { action in
            print("Cancelar")
        }
        
        let btnConfirmar: UIAlertAction = UIAlertAction(title: "Confirmar", style: .default) { action in
            print("Confirmar")
        }
        
        actionSheet.addAction(btnConfirmar)
        actionSheet.addAction(btnCancel)
        
        self.present(actionSheet, animated: true, completion: nil)
    }

    @IBAction func tappedActionSheet(_ sender: Any) {
        triggerActionSheet()
    }
    
    @IBAction func tappedAlertButton(_ sender: Any) {
        self.triggerAlert()
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(textField.text)
        return true
    }
}
