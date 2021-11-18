//
//  LogoContainerView.swift
//  insta-view-code-exerc
//
//  Created by Guilherme Strutzki on 26/10/21.
//

import UIKit

class LogoContainerView: UIView {
    let logo = UIImageView(image: #imageLiteral(resourceName: "Instagram_logo_white@2x.png"))
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LogoContainerView: ViewCode {
    func buildViewHierarchy() {
        addSubview(logo)
    }
    
    func addConstraints() {
        logo.centerInSuperview(size: CGSize(width: 200, height: 200))
    }
    
    func additionalConfiguration() {
        logo.contentMode = .scaleAspectFit
        backgroundColor = UIColor(red: 0/255, green: 120/255, blue: 175/255, alpha: 1)
    }
}
