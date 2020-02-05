//
//  UIView+Extension.swift
//  ProjectLogo
//
//  Created by denis cedeno on 11/20/19.
//  Copyright © 2019 DenCedeno Co. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setGradientBackground(colorOne: UIColor, colorTwo: UIColor, colorThree: UIColor, colorFour: UIColor, colorFive: UIColor, colorSix: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor, colorThree.cgColor, colorFour.cgColor, colorFive.cgColor, colorSix.cgColor]
        gradientLayer.locations = [0.0, 0.2, 0.4, 0.6, 0.8, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
