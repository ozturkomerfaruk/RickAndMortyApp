//
//  RMCharacterStatus.swift
//  TheRickAndMorty
//
//  Created by Ömer Faruk Öztürk on 25.01.2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
