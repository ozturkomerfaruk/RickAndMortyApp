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
    
    /// Request Rick and Morty
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object  we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T>(_ request: RMRequest,
                           expecting type: T.Type,
                        completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}
