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
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
