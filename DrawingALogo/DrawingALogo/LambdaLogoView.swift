//
//  LambdaLogoView.swift
//  DrawingALogo
//
//  Created by Jessie Ann Griffin on 9/24/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LambdaLogoView: UIView {
    
    private let shieldBgColor = UIColor.red
    private let lambdaBgColor = UIColor.white
    
    

    private let drop1Color = UIColor.red
    private let drop2Color = UIColor.blue
    private let drop3Color = UIColor.green
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder: NSCoder) {
        //super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
        //backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            // Square for body of shield
            context.addRect(in: rect)
            context.setFillColor(shieldBgColor.cgColor)
            // this is the method that actually draws on the screen
            context.fillPath()
            // triangle for bottom of shield

        }
        
        
    }
}
