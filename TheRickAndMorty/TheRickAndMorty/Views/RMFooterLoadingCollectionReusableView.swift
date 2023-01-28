//
//  RMFooterLoadingCollectionReusableView.swift
//  TheRickAndMorty
//
//  Created by Ömer Faruk Öztürk on 28.01.2023.
//

import UIKit

final class RMFooterLoadingCollectionReusableView: UICollectionReusableView {
    static let identifier = "RMFooterLoadingCollectionReusableView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("unsupported")
    }
}
