//
//  LogoView.swift
//  Logo
//
//  Created by morse on 11/6/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

    private let viewBackgroundColor = UIColor(displayP3Red: 250.0/255, green: 200/255, blue: 250.0/255, alpha: 1)
    
    private let lambdaRed = UIColor(displayP3Red: 170.0/255, green: 42.0/255, blue: 56.0/255, alpha: 1)
    
    private var strokeWidth: CGFloat {
        return frame.width * 0.05
    }
    private var shieldTopLeft: CGPoint {
        return CGPoint(x: frame.width * 0.25, y: frame.height * 0.125)
    }
    private var shieldTopRight: CGPoint {
        return CGPoint(x: frame.width - frame.width * 0.25, y: frame.height * 0.125)
    }
    private var shieldBottomRight: CGPoint {
        return CGPoint(x: frame.width * 0.75, y: frame.height * 0.5)
    }
    private var shieldBottom: CGPoint {
        return CGPoint(x: frame.width * 0.5, y: frame.height * 0.7)
    }
    private var sheildBottomLeft: CGPoint {
        return CGPoint(x: frame.width * 0.25, y: frame.height * 0.5)
    }
    
    private var lambdaTop: CGPoint {
        return CGPoint(x: frame.width * 0.5, y: frame.height * 0.20)
    }
    private var lambdaLeft: CGPoint {
        return CGPoint(x: frame.width * 0.3333, y: frame.height * 0.44)
    }
    private var lambdaRight: CGPoint {
        return CGPoint(x: frame.width - frame.width * 0.3333, y: frame.height * 0.44)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = .clear
    }
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
//            context.addEllipse(in: rect)
//            context.setFillColor(viewBackgroundColor.cgColor)
//            context.fillPath()
            
//            context.setStrokeColor(UIColor.brown.cgColor)
//            context.beginPath()
//            context.move(to: CGPoint(x: rect.width / 3, y: rect.height / 3))
//            context.setLineWidth(strokeWidth)
//            context.addLine(to: CGPoint(x: rect.width - rect.width / 3, y: rect.height / 3))
//            context.strokePath()
            
//            context.beginPath()
//            context.move(to: CGPoint(x: rect.width / 3, y: rect.height / 3 + rect.width / 8))
//            context.setLineWidth(strokeWidth)
//            context.addLine(to: CGPoint(x: rect.width / 2, y: 2 * (rect.height / 3)))
//            context.strokePath()
            
//            context.beginPath()
//            context.move(to: CGPoint(x: rect.width - rect.width / 3, y: rect.height / 3 + rect.width / 8))
//            context.setLineWidth(strokeWidth)
//            context.addLine(to: CGPoint(x: rect.width / 2, y: 2 * (rect.height / 3)))
//            context.strokePath()
            
//            context.beginPath()
//            context.setStrokeColor(UIColor.systemPink.cgColor)
//            context.move(to: CGPoint(x: rect.width / 3, y: rect.height / 3 + rect.width / 8))
//            context.addLine(to: CGPoint(x: rect.width / 2, y: 2 * (rect.height / 3)))
//            context.addLine(to: CGPoint(x: rect.width - rect.width / 3, y: rect.height / 3 + rect.width / 8))
//            context.closePath()
////            context.fillPath()
//            context.strokePath()
            
            // Draw shield
            context.beginPath()
            context.setFillColor(lambdaRed.cgColor)
            context.move(to: shieldTopLeft)
            context.addLine(to: shieldTopRight)
            context.addLine(to: shieldBottomRight)
            context.addLine(to: shieldBottom)
            context.addLine(to: sheildBottomLeft)
            context.closePath()
            context.fillPath()
            
            // Draw lambda triangle
            context.beginPath()
            context.setFillColor(UIColor.lightGray.cgColor)
            context.move(to: lambdaLeft)
            context.addLine(to: lambdaTop)
            context.addLine(to: lambdaRight)
            context.closePath()
            context.fillPath()
            
            // Cover lambda triangle bottom
            context.beginPath()
            context.setFillColor(lambdaRed.cgColor)
            context.move(to: movePointRight(movePointDown((lambdaLeft), by: 0.01), by: 0.065))
            context.addLine(to: movePointDown(lambdaTop, by: 0.10))
            context.addLine(to: movePointLeft(movePointDown((lambdaRight), by: 0.01), by: 0.065))
            context.closePath()
            context.fillPath()
            
            context.beginPath()
            context.setStrokeColor(lambdaRed.cgColor)
            context.setLineWidth(strokeWidth)
            context.move(to: movePointLeft(lambdaTop, by: 0.05))
            context.addLine(to: movePointRight(lambdaTop, by: 0.05))
            context.strokePath()
        }
        
        
    }
    
    func movePointUp(_ point: CGPoint, by percentage: CGFloat) -> CGPoint{
        return CGPoint(x: point.x, y: point.y - frame.size.height * percentage)
    }
    
    func movePointDown(_ point: CGPoint, by percentage: CGFloat) -> CGPoint {
        return CGPoint(x: point.x, y: point.y + frame.size.height * percentage)
    }
    
    func movePointLeft(_ point: CGPoint, by percentage: CGFloat) -> CGPoint {
        return CGPoint(x: point.x - frame.size.height * percentage, y: point.y)
    }
    
    func movePointRight(_ point: CGPoint, by percentage: CGFloat) -> CGPoint {
        return CGPoint(x: point.x + frame.size.height * percentage, y: point.y)
    }
    
}
