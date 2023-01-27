//
//  RMCharacterDetailViewViewModel.swift
//  TheRickAndMorty
//
//  Created by Ömer Faruk Öztürk on 27.01.2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
