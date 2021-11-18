//
//  NetworkService.swift
//  arc-example
//
//  Created by Guilherme Strutzki on 05/10/21.
//

import Foundation

protocol NetworkDelegate: AnyObject {
    func saved(status: Bool)
}

class NetworkService {
    weak var delegate: NetworkDelegate?
    let api = API()
    
    func saveValue() {
        api.request { [weak self] status in
            self?.delegate?.saved(status: status)
        }
    }
    
    deinit {
        print("Deallocated NetworkService")
    }
}

class API {
    func request(completion: @escaping (Bool) -> Void) {
        completion(true)
    }
    
    deinit {
        print("Deallocated API")
    }
}
