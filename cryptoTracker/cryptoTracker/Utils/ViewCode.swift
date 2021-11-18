//
//  ViewCode.swift
//  cryptoTracker
//
//  Created by Guilherme Strutzki on 04/11/21.
//

protocol ViewCode {
  func buildViewHierarchy()
  func addConstraints()
  func additionalConfiguration()
  func setup()
}
extension ViewCode {
  func setup() {
    buildViewHierarchy()
    addConstraints()
    additionalConfiguration()
  }
}
