//
//  RMEndpoint.swift
//  TheRickAndMorty
//
//  Created by Ömer Faruk Öztürk on 24.01.2023.
//

import Foundation

/// Represent unique API endpoint
@frozen enum RMEndpoint: String {
    case character
    case location
    case episode
}
