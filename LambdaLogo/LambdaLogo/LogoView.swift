//
//  LogoView.swift
//  LambdaLogo
//
//  Created by Eoin Lavery on 05/02/2020.
//  Copyright © 2020 Eoin Lavery. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

    override func draw(_ rect: CGRect) {
        
        self.layer.backgroundColor = UIColor.clear.cgColor
        
        if let context = UIGraphicsGetCurrentContext() {
            
            context.setFillColor(UIColor.red.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: 0, y: 0))
            context.addLine(to: CGPoint(x: frame.width, y: 0))
            context.addLine(to: CGPoint(x: frame.width, y: frame.height*0.673))
            context.addLine(to: CGPoint(x: frame.width/2, y: frame.height))
            context.addLine(to: CGPoint(x: 0, y: frame.height*0.673))
            context.addLine(to: CGPoint(x: 0, y: 0))
            context.fillPath()
            
            context.setFillColor(UIColor.white.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: frame.width*0.211, y: frame.height*0.573))
            context.addLine(to: CGPoint(x: frame.width*0.442, y: frame.height*0.2))
            context.addLine(to: CGPoint(x: frame.width*0.558, y: frame.height*0.2))
            context.addLine(to: CGPoint(x: frame.width*0.789, y: frame.height*0.573))
            context.addLine(to: CGPoint(x: frame.width*0.653, y: frame.height*0.573))
            context.addLine(to: CGPoint(x: frame.width/2, y: frame.height*0.345))
            context.addLine(to: CGPoint(x: frame.width*0.347, y: frame.height*0.573))
            context.fillPath()
            
        }
        
    }

}
