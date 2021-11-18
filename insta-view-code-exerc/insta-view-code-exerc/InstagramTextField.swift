//
//  InstagramTextField.swift
//  insta-view-code-exerc
//
//  Created by Guilherme Strutzki on 26/10/21.
//

import UIKit

class InstagramTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        backgroundColor = UIColor(white: 0, alpha: 0.03)
        font = UIFont.systemFont(ofSize: 14)
        BorderStyle.roundedRect
    }
}
