//
//  LogoView.swift
//  Logo
//
//  Created by Isaac Lyons on 10/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        func proportionalPoint(x: CGFloat, y: CGFloat) -> CGPoint {
            return CGPoint(x: rect.maxX * x, y: rect.maxY * y)
        }
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let startingPoint = proportionalPoint(x: 0.53, y: 0.86)
            
            var points: [CGPoint] = [
                proportionalPoint(x: 0.66, y: 0.56),
                proportionalPoint(x: 0.97, y: 0.56)
            ]
            
            context.move(to: startingPoint)
            for point in points {
                context.addLine(to: point)
            }
            
            context.addCurve(to: proportionalPoint(x: 0.00, y: 0.17),
                             control1: proportionalPoint(x: 0.71, y: 0.29),
                             control2: proportionalPoint(x: 0.32, y: 0.39))

            points = [
                proportionalPoint(x: 0.27, y: 0.46),
                proportionalPoint(x: 0.18, y: 0.63),
                proportionalPoint(x: 0.41, y: 0.58)
            ]
            
            for point in points {
                context.addLine(to: point)
            }
            context.addLine(to: startingPoint)

            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
            
        }
        
        
    }

}
