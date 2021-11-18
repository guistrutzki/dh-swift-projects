//
//  ViewCode.swift
//  insta-view-code-exerc
//
//  Created by Guilherme Strutzki on 26/10/21.
//

import Foundation

protocol ViewCode {
    func buildViewHierarchy()
    func addConstraints()
    func additionalConfiguration()
    func setupView()
}

extension ViewCode {
    func setupView() {
        buildViewHierarchy()
        addConstraints()
        additionalConfiguration()
    }
}
