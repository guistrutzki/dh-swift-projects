//
//  InstagramPrimaryButton.swift
//  insta-view-code-exerc
//
//  Created by Guilherme Strutzki on 26/10/21.
//

import UIKit

class InstragramPrimaryButton: UIButton {
    override var isEnabled: Bool {
        didSet {
            updateButtonState()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        backgroundColor = UIColor(red: 149/255, green: 204/255, blue: 244/255, alpha: 1)
        layer.cornerRadius = 5
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        setTitleColor(.white, for: .normal)
    }
    
    private func updateButtonState() {
        if (isEnabled) {
            backgroundColor = UIColor(red: 149/255, green: 204/255, blue: 244/255, alpha: 1)
        } else {
            backgroundColor = UIColor(red: 17/255, green: 154/255, blue: 237/255, alpha: 1)
        }
    }
}
