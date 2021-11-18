//
//  NetworkService.swift
//  cryptoTracker
//
//  Created by Guilherme Strutzki on 04/11/21.
//

import Foundation

enum NetworkError: Error {
    case badRequest
    case noData
    case invalidStatusCode(code: Int)
    case custom(error: Error)
}

final class NetworkService {
    static let shared = NetworkService()
    
    private init() {}
    
    func requestList<T: Decodable>(url: URL, completion: @escaping (Result<[T], NetworkError>) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return completion(.failure(.badRequest))
            }
            
            if let statusCode = (response as? HTTPURLResponse)?.statusCode, !(200...299 ~= statusCode) {
                return completion(.failure(.invalidStatusCode(code: statusCode)))
            }
            
            do {
                let list = try JSONDecoder().decode([T].self, from: data)
                return completion(.success(list))
            } catch {
                return completion(.failure(.custom(error: error)))
            }
        }
        task.resume()
    }
    
    func requestAllCryptos(completion: @escaping (Result<[Crypto], NetworkError>) -> Void) {
        guard let url = URL(string: Constants.assetsBaseUrl + "?apikey=" + Constants.apiKey) else {
            return completion(.failure(.badRequest))
        }
        
        requestList(url: url) { [weak self] (result: Result<[Crypto], NetworkError>) in
            guard let self = self else { return }
            switch result {
            case .success(var cryptos):
                self.requestAllIcons { result in
                    switch result {
                    case .success(let icons):
                        for (index, crypto) in cryptos.enumerated() {
                            let icon = icons.first(where: { $0.assetId == crypto.assetId })
                            cryptos[index].image = icon?.url
                        }
                        return completion(.success(cryptos))
                    case .failure(let error):
                        return completion(.failure(error))
                    }
                }
            case .failure(let error):
                return completion(.failure(error))
            }
        }
    }
        
        
    func requestAllIcons(completion: @escaping (Result<[Icon], NetworkError>) -> Void) {
        guard let url = URL(string: Constants.assetsIconsUrl + "?apikey=" + Constants.apiKey) else {
            return completion(.failure(.badRequest))
        }
        
        requestList(url: url, completion: completion)
    }
}
