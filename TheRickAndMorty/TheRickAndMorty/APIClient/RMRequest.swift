//
//  RMRequest.swift
//  TheRickAndMorty
//
//  Created by Ömer Faruk Öztürk on 24.01.2023.
//

import Foundation

/// Object that represents an API call
final class RMRequest {
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    private let endpoint: RMEndpoint
    private let pathComponent: Set<String>
    private let queryParameter: [URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponent.isEmpty {
            pathComponent.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameter.isEmpty {
            // name=value&name=value
            string += "?"
            let argumentString = queryParameter.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    init(endpoint: RMEndpoint,
         pathComponent: Set<String> = [],
         queryParameter: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponent = pathComponent
        self.queryParameter = queryParameter
    }
}
