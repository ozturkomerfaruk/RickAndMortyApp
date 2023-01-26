//
//  Extensions.swift
//  TheRickAndMorty
//
//  Created by Ömer Faruk Öztürk on 26.01.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
