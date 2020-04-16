//
//  DrawView.swift
//  Logo
//
//  Created by Shawn James on 4/15/20.
//  Copyright © 2020 Shawn James. All rights reserved.
//

import UIKit

// filledRectangle
// filledTriangle
// filledTrapezoid

@IBDesignable
class DrawView: UIView {
        
    let lambdaRed = UIColor(red: 0.728, green: 0.077, blue: 0.205, alpha: 1)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        
        guard let currentContext = UIGraphicsGetCurrentContext() else {
            print("Could not get the context")
            return
        }
        
        // Shield
        currentContext.setFillColor(lambdaRed.cgColor)
        currentContext.beginPath()
                
        let upperLeft = CGPoint(x: bounds.size.width * 0.29, y: bounds.size.height * 0.29)
        let upperRight = CGPoint(x: bounds.size.width * 0.71, y: bounds.size.height * 0.29)
        let lowerRight = CGPoint(x: bounds.size.width * 0.71, y: bounds.size.height * 0.64)
        let peak = CGPoint(x: bounds.size.width * 0.5, y: bounds.size.width * 0.749)
        let lowerLeft = CGPoint(x: bounds.size.width * 0.29, y: bounds.size.height * 0.64)
        
        currentContext.move(to: upperLeft)
        currentContext.addLine(to: upperLeft)
        currentContext.addLine(to: upperRight)
        currentContext.addLine(to: lowerRight)
        currentContext.addLine(to: peak)
        currentContext.addLine(to: lowerLeft)
        currentContext.addLine(to: upperLeft)
        currentContext.fillPath()
        
//         Lambda Symbol
        let point1 = CGPoint(x: bounds.size.width * 0.478, y: bounds.size.height * 0.42)
        let point2 = CGPoint(x: bounds.size.width * 0.522, y: bounds.size.height * 0.42)
        let point3 = CGPoint(x: bounds.size.width * 0.615, y: bounds.size.height * 0.6)
        let point4 = CGPoint(x: bounds.size.width * 0.558, y: bounds.size.height * 0.6)
        let point5 = CGPoint(x: bounds.size.width * 0.5, y: bounds.size.height * 0.5)
        let point6 = CGPoint(x: bounds.size.width * 0.442, y: bounds.size.height * 0.6)
        let point7 = CGPoint(x: bounds.size.width * 0.385, y: bounds.size.height * 0.6)
        
        currentContext.setFillColor(UIColor.white.cgColor)
        currentContext.beginPath()
        currentContext.move(to: point1)
        currentContext.addLine(to: point1)
        currentContext.addLine(to: point2)
        currentContext.addLine(to: point3)
        currentContext.addLine(to: point4)
        currentContext.addLine(to: point5)
        currentContext.addLine(to: point6)
        currentContext.addLine(to: point7)
        currentContext.addLine(to: point1)
        currentContext.fillPath()
        
        // check out quad curve to round corners
    }
    
}
