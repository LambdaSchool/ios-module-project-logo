//
//  LogoView.swift
//  Project Logo
//
//  Created by Andrew Ruiz on 10/9/19.
//  Copyright © 2019 Andrew Ruiz. All rights reserved.
//

import UIKit

@IBDesignable class LogoView: UIView {
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            // The blue rectangle
            let point1 = CGPoint(x: rect.size.width / (rect.size.width / 150), y: rect.size.height / (rect.size.height / 300))
            let point2 = CGPoint(x: rect.size.width / (rect.size.width / 250), y: rect.size.height / (rect.size.height / 300))
            let point3 = CGPoint(x: rect.size.width / (rect.size.width / 250), y: rect.size.height / (rect.size.height / 400))
            let point4 = CGPoint(x: rect.size.width / (rect.size.width / 150), y: rect.size.height / (rect.size.height / 400))
           
            // Pattern so I don't have to calculate the proportions by hand
            // Will work across all screen sizes
            // rect.size.width / (rect.size.width / 100 )
            // rect.size.height / (rect.size.height / 100)
            
            context.move(to:point1)
            context.addLine(to: point2)
            context.addLine(to: point3)
            context.addLine(to: point4)
            context.addLine(to: point1)
            
            context.setFillColor(UIColor.blue.cgColor)
            context.fillPath()
            
            
            // Triangle
            let trianglePoint1 = CGPoint(x: point3.x, y: point3.y)
            let trianglePoint2 = CGPoint(x: (point1.x + point2.x) / 2, y: point3.y + rect.size.height / (rect.size.height / 50))
            let trianglePoint3 = CGPoint(x: point4.x, y: point4.y)
            
            context.move(to: trianglePoint1)
            context.addLine(to: trianglePoint2)
            context.addLine(to: trianglePoint3)
            context.addLine(to: trianglePoint1)
            
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
            
            // Left Rhombus Letters
            let leftRhombusPoint1 = CGPoint(x: rect.size.width / (rect.size.width / 190 ), y: rect.size.height / (rect.size.height / 350))
            let leftRhombusPoint2 = CGPoint(x: rect.size.width / (rect.size.width / 200 ), y: rect.size.height / (rect.size.height / 350))
            let leftRhombusPoint3 = CGPoint(x: rect.size.width / (rect.size.width / 180 ), y: rect.size.height / (rect.size.height / 380))
            let leftRhombusPoint4 = CGPoint(x: rect.size.width / (rect.size.width / 170 ), y: rect.size.height / (rect.size.height / 380))
            
            context.move(to:leftRhombusPoint1)
            context.addLine(to: leftRhombusPoint2)
            context.addLine(to: leftRhombusPoint3)
            context.addLine(to: leftRhombusPoint4)
            context.addLine(to: leftRhombusPoint1)
            
            context.setFillColor(UIColor.green.cgColor)
            context.fillPath()
            
            
            // Right Rhombus Letters
            let rightRhombusPoint1 = CGPoint(x: rect.size.width / (rect.size.width / 200 ), y: rect.size.height / (rect.size.height / 350))
            let rightRhombusPoint2 = CGPoint(x: rect.size.width / (rect.size.width / 210 ), y: rect.size.height / (rect.size.height / 350))
            let rightRhombusPoint3 = CGPoint(x: rect.size.width / (rect.size.width / 230 ), y: rect.size.height / (rect.size.height / 380))
            let rightRhombus4 = CGPoint(x: rect.size.width / (rect.size.width / 220 ), y: rect.size.height / (rect.size.height / 380))
            
            context.move(to:rightRhombusPoint1)
            context.addLine(to: rightRhombusPoint1)
            context.addLine(to: rightRhombusPoint2)
            context.addLine(to: rightRhombusPoint3)
            context.addLine(to: rightRhombus4)
            
            context.setFillColor(UIColor.green.cgColor)
            context.fillPath()
            
            // Final Trapezoid
            
            let trapezoidPoint1 = CGPoint(x: leftRhombusPoint1.x, y: leftRhombusPoint1.y)
            let trapezoidPoint2 = CGPoint(x: rightRhombusPoint2.x , y: rightRhombusPoint2.y)
            let trapezoidPoint3 = CGPoint(x: rect.size.width / (rect.size.width / 203 ), y: rect.size.height / (rect.size.height / 340))
            let trapezoidPoint4 = CGPoint(x: rect.size.width / (rect.size.width / 195 ), y: rect.size.height / (rect.size.height / 340))
            
            context.move(to:trapezoidPoint1)
            context.addLine(to: trapezoidPoint2)
            context.addLine(to: trapezoidPoint3)
            context.addLine(to: trapezoidPoint4)
            context.addLine(to: trapezoidPoint1)
            
            context.setFillColor(UIColor.yellow.cgColor)
            context.fillPath()

        }
    }
}
