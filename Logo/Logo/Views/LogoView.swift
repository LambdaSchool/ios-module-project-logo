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
            let clipPath = UIBezierPath(roundedRect: lambdaRect, cornerRadius: 10).cgPath
            context.addPath(clipPath)
            context.setFillColor(lambdaRed.cgColor)
            context.closePath()
            context.fillPath()
            
            context.beginPath()
            context.move(to: CGPoint(x: rect.origin.x, y: rect.size.height * 0.6 - rect.size.height * 0.02))
//            context.addLine(to: CGPoint(x: rect.size.width / 2, y: rect.size.height))
            context.addCurve(to: CGPoint(x: rect.size.width / 2 + 10,
                                         y: rect.size.height - 10),
                             control1: CGPoint(x: rect.size.width / 2 + 8,
                                               y: rect.size.height + 10),
                             control2: CGPoint(x: rect.size.width / 2 - 12,
                                               y: rect.size.height + 10))
            context.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height * 0.6 - rect.size.height * 0.02))
            context.closePath()
            
//            context.
            
            context.setFillColor(lambdaRed.cgColor)
            context.fillPath()
        }
    }
    
}
