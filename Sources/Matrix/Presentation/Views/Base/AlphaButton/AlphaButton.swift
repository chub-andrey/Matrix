//
//  AlphaButton.swift
//  Matrix
//
//  Created by AndUser on 1/12/20.
//  Copyright © 2020 Andrey Chub. All rights reserved.
//

import UIKit

class AlphaButton: UIButton {
    
    // MARK: IBInspectable
    
    @IBInspectable var cornerRadius: CGFloat = 22
    
    // MARK: Properties
    
    var isDisabled: Bool = false {
        didSet {
            isDisabled ? disableStyle() : enableStyle()
        }
    }
    
    // MARK: Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        disableStyle()
    }
    
    // MARK: Actions
    
    private func enableStyle() {
        
        setStyle(borderWidth: Constants.AlphaViewStyle.borderWidth,
                 borderColor: Constants.AlphaViewStyle.borderColor,
                 cornerRadius: cornerRadius,
                 backgroundColor: Constants.AlphaViewStyle.backgroundColor)
    }
    
    private func disableStyle() {
        
        setStyle(borderWidth: Constants.AlphaViewStyle.borderWidth,
                 borderColor: UIColor.AlphaView.disableBorderColor,
                 cornerRadius: cornerRadius,
                 backgroundColor: Constants.AlphaViewStyle.backgroundColor.withAlphaComponent(0.3))
        
        layer.shadowColor = UIColor.AlphaView.disableBorderColor.cgColor
        layer.shadowRadius = 2
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    
    private func setStyle(borderWidth: CGFloat, borderColor: UIColor, cornerRadius: CGFloat, backgroundColor: UIColor) {
        
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
        layer.cornerRadius = cornerRadius
        
        self.backgroundColor = backgroundColor
    }
}
