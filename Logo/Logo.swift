//
//  Logo.swift
//  Logo
//
//  Created by Andrew Ruiz on 9/11/19.
//  Copyright © 2019 Andrew Ruiz. All rights reserved.
//

import UIKit


@IBDesignable class LogoView: UIView {
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
//            let topPoint = CGPoint(x: rect.size.width / 6, y: rect.size.height / 10)
//            let bottomPoint = CGPoint(x: rect.size.width / 5, y: rect.size.height
//             * 0.75)
//            let rightPoint = CGPoint(x: rect.size.width * 0.6, y: rect.size.height / 2)
//
//            // Create the path
//
//            context.move(to: topPoint)
//            context.addLine(to: bottomPoint)
//            context.addLine(to: rightPoint)
//            context.addLine(to: topPoint)
//
//            // Configuring the path
//
//            context.setFillColor(UIColor.blue.cgColor)
//            context.fillPath()
            
            
            
            let point1 = CGPoint(x: 150, y: 300)
            let point2 = CGPoint(x: 250, y: 300)
            let point3 = CGPoint(x: 250, y: 400)
            let point4 = CGPoint(x: 150, y: 400)
           
            
            // print(rect.size.width / 100)
            // rect.size.width / (rect.size.width / 100 )
            
            context.move(to:point1)
            context.addLine(to: point2)
            context.addLine(to: point3)
            context.addLine(to: point4)
            context.addLine(to: point1)
            
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
            
            
            // Triangle
            
            let trianglePoint1 = CGPoint(x: point3.x, y: point3.y)
            let trianglePoint2 = CGPoint(x: 200, y: point1.y + 200)
            let trianglePoint3 = CGPoint(x: point4.x, y: point4.y)
            
            context.move(to: trianglePoint1)
            context.addLine(to: trianglePoint2)
            context.addLine(to: trianglePoint3)
            context.addLine(to: trianglePoint1)
            
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
            
        }
    }
}
