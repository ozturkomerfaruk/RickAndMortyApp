//
//  RMCharacter.swift
//  TheRickAndMorty
//
//  Created by Ömer Faruk Öztürk on 23.01.2023.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMORigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}


