//
//  LogoView.swift
//  LogoProject
//
//  Created by admin on 10/9/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class LogoView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        // width/height = 414
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let center = CGPoint(x: rect.size.width / 2.0,
                                 y: rect.size.height / 2.0)
  
         
            let point1 = CGPoint(x: rect.size.width * 0.5, y: rect.size.height - rect.size.height)
            
            let point2 = CGPoint(x: rect.size.width * 0.65, y: rect.size.height * 0.14)
            
            let point3 = CGPoint(x: rect.size.width * 0.83, y: rect.size.height * 0.18)
            
            let point4 = CGPoint(x: rect.size.width * 0.87, y: rect.size.height * 0.37)
            
            let point5 = CGPoint(x: rect.size.width, y: rect.size.height * 0.5)
            
            let point6 = CGPoint(x: rect.size.width * 0.87, y: rect.size.height * 0.63)
            
            let point7 = CGPoint(x: rect.size.width * 0.83, y: rect.size.height * 0.82)
            
            let point8 = CGPoint(x: rect.size.width * 0.65, y: rect.size.height * 0.86)
            
            let point9 = CGPoint(x: rect.size.width * 0.5, y: rect.size.height)
            
            let point10 = CGPoint(x: rect.size.width * 0.35, y: rect.size.height * 0.86)
            
            let point11 = CGPoint(x: rect.size.width * 0.17, y: rect.size.height * 0.82)
            
            let point12 = CGPoint(x: rect.size.width * 0.13, y: rect.size.height * 0.63)
            
            let point13 = CGPoint(x: rect.size.width * 0, y: rect.size.height * 0.5)
            
            let point14 = CGPoint(x: rect.size.width * 0.13, y: rect.size.height * 0.37)
            
            let point15 = CGPoint(x: rect.size.width * 0.17, y: rect.size.height * 0.18)
            
            let point16 = CGPoint(x: rect.size.width * 0.35, y: rect.size.height * 0.14)
            
            
            context.move(to: point1)
            context.addLine(to: point2)
            context.addLine(to: point3)
            context.addLine(to: point4)
            context.addLine(to: point5)
            context.addLine(to: point6)
            context.addLine(to: point7)
            context.addLine(to: point8)
            context.addLine(to: point9)
            context.addLine(to: point10)
            context.addLine(to: point11)
            context.addLine(to: point12)
            context.addLine(to: point13)
            context.addLine(to: point14)
            context.addLine(to: point15)
            context.addLine(to: point16)
            context.closePath()
            
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
        }
        
    }
    

}
