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
            
//            //Testing out filling custom shapes
//            context.move(to: CGPoint(x: rect.midX, y: rect.midY))
//            context.addLine(to: CGPoint(x: rect.midX + rect.maxX / 4, y: rect.midY + rect.maxY / 4))
//            context.addLine(to: CGPoint(x: rect.midX, y: rect.midY + rect.maxY / 4))
//            context.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
//
//            context.setStrokeColor(UIColor.red.cgColor)
//            context.setFillColor(UIColor.red.cgColor)
//            context.setLineWidth(5)
//            //context.strokePath()
//            context.fillPath()
            
            //context.move(to: proportionalPoint(x: 0.53, y: 0.86))
            //context.addLine(to: proportionalPoint(x: 0.66, y: 0.56))
            
            let points: [CGPoint] = [
                proportionalPoint(x: 0.66, y: 0.56),
                proportionalPoint(x: 0.97, y: 0.56),
                proportionalPoint(x: 0.64, y: 0.38),
                proportionalPoint(x: 0.29, y: 0.30),
                proportionalPoint(x: 0.00, y: 0.17),
                proportionalPoint(x: 0.27, y: 0.46),
                proportionalPoint(x: 0.18, y: 0.63),
                proportionalPoint(x: 0.41, y: 0.58),
                
                // Startind and ending point:
                proportionalPoint(x: 0.53, y: 0.86)
            ]
            
            context.move(to: points[points.count - 1])
            for point in points {
                context.addLine(to: point)
            }
            
            //context.setStrokeColor(UIColor.red.cgColor)
            //context.setLineWidth(5)
            //context.strokePath()
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
            
        }
        
        
    }

}
