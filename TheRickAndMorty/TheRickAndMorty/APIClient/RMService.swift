//
//  RMService.swift
//  TheRickAndMorty
//
//  Created by Ömer Faruk Öztürk on 24.01.2023.
//

import Foundation


/// Rick and Morty için singleton servis
final class RMService {
    /// singleton
    static let shared = RMService()
    
    /// Constructor
    private init() {}
    
    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// Request Rick and Morty
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object  we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(_ request: RMRequest,
                           expecting type: T.Type,
                           completion: @escaping (Result<T, Error>) -> Void) {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
            } catch {
                print(error)
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {return nil}
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
