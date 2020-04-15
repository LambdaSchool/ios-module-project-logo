//
//  LogoView.swift
//  Logo
//
//  Created by Chris Dobek on 4/15/20.
//  Copyright © 2020 Chris Dobek. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

    private let lambdaShield = UIColor.red
    private let lambdaSymbol = UIColor.white
    
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
            
            // Building the Shield
            context.setFillColor(lambdaShield.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: 0, y: 0))
            context.addLine(to: CGPoint(x: rect.width, y: 0))
            context.addLine(to: CGPoint(x: rect.width, y: rect.height*0.6))
            context.addLine(to: CGPoint(x: rect.width/2, y: rect.height))
            context.addLine(to: CGPoint(x: 0, y: rect.height*0.6))
            context.addLine(to: CGPoint(x: 0, y: 0))
            context.fillPath()
            
            // Building the Lambda Symbol
            context.setFillColor(lambdaSymbol.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: rect.width * 0.21, y: rect.height * 0.57))
            context.addLine(to: CGPoint(x: rect.width * 0.44, y: rect.height * 0.2))
            context.addLine(to: CGPoint(x: rect.width * 0.56, y: rect.height * 0.2))
            context.addLine(to: CGPoint(x: rect.width * 0.79, y: rect.height * 0.57))
            context.addLine(to: CGPoint(x: rect.width * 0.65, y: rect.height * 0.57))
            context.addLine(to: CGPoint(x: rect.midX, y: rect.height*0.35))
            context.addLine(to: CGPoint(x: rect.width * 0.35, y: rect.height * 0.57))
            context.fillPath()
           
            
            
        }
        
        
        
    }

}
