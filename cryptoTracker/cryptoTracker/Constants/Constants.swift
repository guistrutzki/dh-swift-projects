//
//  Constants.swift
//  cryptoTracker
//
//  Created by Guilherme Strutzki on 04/11/21.
//

import Foundation

struct Constants {
    static let apiKey = "86810BF7-43EB-47B8-AA91-7F82F75B5F8D"
    static let assetsBaseUrl = "https://rest.coinapi.io/v1/assets"
    static let size = 50
    static let assetsIconsUrl = "\(assetsBaseUrl)/icons/\(Constants.size)"
}
