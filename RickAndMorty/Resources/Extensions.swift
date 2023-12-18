//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Dhandeep  Singh on 18/12/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
