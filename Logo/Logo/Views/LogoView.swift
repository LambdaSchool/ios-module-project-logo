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
let lambdaString: NSString = "Λ"

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
            
            //Lambda Background
            let lambdaRect = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.size.width, height: rect.size.height * 0.6)
            let clipPath = UIBezierPath(roundedRect: lambdaRect, cornerRadius: 10).cgPath
            context.addPath(clipPath)
            context.setFillColor(lambdaRed.cgColor)
            context.closePath()
            context.fillPath()
            
            context.beginPath()
            context.move(to: CGPoint(x: rect.origin.x, y: rect.size.height * 0.6 - rect.size.height * 0.02))
            context.addCurve(to: CGPoint(x: rect.size.width / 2 + 10,
                                         y: rect.size.height - 10),
                             control1: CGPoint(x: rect.size.width / 2 + 8,
                                               y: rect.size.height + 10),
                             control2: CGPoint(x: rect.size.width / 2 - 12,
                                               y: rect.size.height + 10))
            context.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height * 0.6 - rect.size.height * 0.02))
            context.closePath()
            
            context.setFillColor(lambdaRed.cgColor)
            context.fillPath()
            
            //Lambda Character
            let lambdaStringRect = CGRect(x: rect.size.width * 0.25,
                                          y: rect.size.height * 0.07,
                                          width: rect.size.width / 2,
                                          height: rect.size.height / 2)
//            let lambdaStringRect = CGPoint(x: rect.size.width / 2 - lambdaString., y: lambdaRect.size.height / 2)
//            lambdaString.draw(at: lambdaCenter, withAttributes: [NSAttributedString.Key.foregroundColor: UIColor.white,
//                                                                 NSAttributedString.Key.font: UIFont.systemFont(ofSize: 200, weight: .black)])
            lambdaString.draw(in: lambdaStringRect, withAttributes: [NSAttributedString.Key.foregroundColor: UIColor.white,
                                                                     NSAttributedString.Key.font: UIFont.systemFont(ofSize: rect.size.width * 0.7, weight: .black)])
        }
    }
    
}
