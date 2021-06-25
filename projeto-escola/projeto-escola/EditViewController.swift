//
//  EditViewController.swift
//  projeto-escola
//
//  Created by Guilherme Strutzki on 24/06/21.
//

import UIKit

protocol EditViewControllerProtocol: AnyObject {
  func updatePessoa(value: Pessoa)
}

class EditViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var sobrenomeTextField: UITextField!
    @IBOutlet weak var idadeTextField: UITextField!
    @IBOutlet weak var generoTextField: UITextField!
    
    weak var delegate: EditViewControllerProtocol?
    
    var pessoaSelecionada: Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let _pessoaSelecionada = self.pessoaSelecionada {
            self.nomeTextField.text = _pessoaSelecionada.nome
            self.sobrenomeTextField.text = _pessoaSelecionada.sobrenome
            self.idadeTextField.text = String(_pessoaSelecionada.idade ?? 0)
            self.generoTextField.text = _pessoaSelecionada.genero?.rawValue
        }
        
        self.nomeTextField.delegate = self
        self.sobrenomeTextField.delegate = self
        self.idadeTextField.delegate = self
        self.generoTextField.delegate = self
        
        self.idadeTextField.keyboardType = .decimalPad
        
        self.addButtonOnKeyBoard()
        
    }
    
    private func addButtonOnKeyBoard() {
        let toolBar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        
        toolBar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonTapped))
        
        let items = [flexSpace, doneButton]
        
        toolBar.items = items
        toolBar.sizeToFit()
        
        self.idadeTextField.inputAccessoryView = toolBar
    }
    
    @objc func doneButtonTapped() {
        print("doneButtonTapped")
    }
}

extension EditViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        switch textField {
        case self.nomeTextField:
            self.pessoaSelecionada?.nome = textField.text
            
        case self.sobrenomeTextField:
            self.pessoaSelecionada?.sobrenome = textField.text
            
        case self.idadeTextField:
            self.pessoaSelecionada?.idade = Int(textField.text ?? "0")
            
        default:
            self.pessoaSelecionada?.genero = Genero(rawValue: textField.text ?? "")
        }
        
        if let _pessoaSelecionada = self.pessoaSelecionada {
           self.delegate?.updatePessoa(value: _pessoaSelecionada)
         }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        switch textField {
        case self.nomeTextField:
            sobrenomeTextField.becomeFirstResponder()
            
        case self.sobrenomeTextField:
            idadeTextField.becomeFirstResponder()
            
        case self.idadeTextField:
            generoTextField.becomeFirstResponder()
            
        default:
            textField.resignFirstResponder()
        }
        
        if let _pessoaSelecionada = self.pessoaSelecionada {
           self.delegate?.updatePessoa(value: _pessoaSelecionada)
         }
        
        return true
    }
}

