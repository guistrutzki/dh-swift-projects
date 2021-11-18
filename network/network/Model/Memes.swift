//
//  Meme.swift
//  network
//
//  Created by Guilherme Strutzki on 26/08/21.
//

import Foundation

struct Result: Codable {
    let success: Bool
    let data: Data
}

struct Data: Codable {
    let memes: [Meme]
}

struct Meme: Codable {
    let id, name: String
    let url: String
    let width, height, boxCount: Int
    
    enum CodingKeys: String, CodingKey {
        case id, name, url, width, height
        case boxCount = "box_count"
    }
}
