//
//  RMCharacterViewController.swift
//  TheRickAndMorty
//
//  Created by Ömer Faruk Öztürk on 23.01.2023.
//

import UIKit

final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Character"
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: \(model.info.count)")
                print("Pages: \(model.results.count)")
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
    
}

//peki bundan sonraki süreç hakkında bir bilgi verdiler mi sana ya da kaç kişi alınacağını vs. biliyor musun? Benimle ik mülakat yapmadı
