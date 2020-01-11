//
//  UIView+Gradient.swift
//  Matrix
//
//  Created by AndUser on 1/11/20.
//  Copyright © 2020 Andrey Chub. All rights reserved.
//

import UIKit

extension UIView {
    
    func addGradient(topColor: UIColor, bottomColor: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        
        self.layer.addSublayer(gradientLayer)
    }
}
