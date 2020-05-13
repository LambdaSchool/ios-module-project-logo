//
//  Logo.swift
//  Logo
//
//  Created by Dahna on 4/15/20.
//  Copyright © 2020 Dahna Buenrostro. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable
class LogoView: UIView {
   
    private let bgColor = UIColor.systemIndigo.cgColor
    private let whiteColor = UIColor.white.cgColor
    
    
    
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
            
            // original background - basis of other layers
            let center = CGPoint(x: rect.midX, y: rect.midY)
            let bgRect = CGRect(x: center.x - 100, y: center.y - 100, width: 200, height: 200)
            let bgRectRounded = CGPath(roundedRect: bgRect, cornerWidth: 30, cornerHeight: 30, transform: nil)
            context.addPath(bgRectRounded)
            context.setFillColor(bgColor)
            context.fillPath()

            
            // The Gradient Color
            let colorSpace = CGColorSpaceCreateDeviceRGB()
            let startColor = UIColor.systemPurple.cgColor
            guard let startColorComponents = startColor.components else { return }

            let endColor = UIColor.systemYellow.cgColor
            guard let endColorComponents = endColor.components else { return }

            let colorComponents: [CGFloat] = [startColorComponents[0], startColorComponents[1], startColorComponents[2], startColorComponents[3], endColorComponents[0], endColorComponents[1], endColorComponents[2], endColorComponents[3]]

            let locations: [CGFloat] = [0.0, 1.0]

            guard let gradient = CGGradient(colorSpace: colorSpace, colorComponents: colorComponents, locations: locations, count: 2) else { return }

            let startPoint = CGPoint(x: self.bounds.width, y: 0)
            let endPoint = CGPoint(x: 0, y: self.bounds.height)

            context.drawLinearGradient(gradient, start: startPoint, end: endPoint, options: CGGradientDrawingOptions(rawValue: UInt32(0)))

            // The Square
            let innerSquare = CGRect(x: center.x / 2.5, y: center.y / 2.5, width: bgRect.width - 20, height: bgRect.height - 20)
            let innerSquareRounded = CGPath(roundedRect: innerSquare, cornerWidth: 20, cornerHeight: 20, transform: nil)
            context.addPath(innerSquareRounded)
            context.setStrokeColor(whiteColor)
            context.setLineWidth(8)
            context.strokePath()
            
            // The inner Circle
            context.addEllipse(in: CGRect(x: center.x / 1.7, y: center.y / 1.7, width: rect.size.width / 2.5, height: rect.size.height / 2.5))
            context.setStrokeColor(whiteColor)
            context.setLineWidth(10)
            context.strokePath()
            
            // The upper right Circle
            context.addEllipse(in: CGRect(x: center.x + 55, y: center.y - 70, width: rect.size.width / 15, height: rect.size.width / 15))
            context.setFillColor(whiteColor)
            context.fillPath()
        }
    }
}
