//
//  LogoView.swift
//  Logo
//
//  Created by Matthew Martindale on 4/13/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

import Foundation
import UIKit

let lambdaRed: UIColor = #colorLiteral(red: 0.7294117647, green: 0.07843137255, blue: 0.2039215686, alpha: 1)

@IBDesignable
class LogoView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            let lambdaRect = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.size.width, height: rect.size.height * 0.6)
            context.addRect(lambdaRect)
            context.setFillColor(lambdaRed.cgColor)
            context.fillPath()
            
            
        }
    }
    
}
