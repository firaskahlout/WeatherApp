//
//  UIView.swift
//  CocoapodsDemo
//
//  Created by IFone on 10/1/19.
//  Copyright © 2019 Firas Alkahlout. All rights reserved.
//

import UIKit

//MARK: - UIView Extension.
extension UIView {
    
    func roundCorners(cornerRadius: Double) {
        layer.cornerRadius = CGFloat(cornerRadius)
        clipsToBounds = true
        layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
}
