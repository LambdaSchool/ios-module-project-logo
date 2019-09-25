//
//  LogoView.swift
//  Logo
//
//  Created by Vici Shaweddy on 9/24/19.
//  Copyright © 2019 Vici Shaweddy. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {
    
    private let viewBgColor = UIColor.green
    private let borderRadius = CGFloat(10.0)
    private let borderRadiusInside = CGFloat(8.0)
    private let lambdaColor = UIColor(displayP3Red: 234/255, green: 24/255, blue: 64/255, alpha: 1)

    override func draw(_ rect: CGRect) {
        let rect = rect.insetBy(dx: 10, dy: 10)
        if let context = UIGraphicsGetCurrentContext() {
            let topLeft = CGPoint(x: rect.origin.x, y: rect.origin.y)
            let topRight = CGPoint(x: rect.maxX, y: rect.origin.y)
            let bottomLeft = CGPoint(x: rect.origin.x, y: 2 * rect.maxY / 3)
            let bottomCenter = CGPoint(x: rect.midX, y: rect.maxY )
            let bottomRight = CGPoint(x: rect.maxX, y: 2 * rect.maxY / 3)
            
            let path = UIBezierPath()
            path.move(to: topLeft)
            path.addLine(to: topRight)
            path.addLine(to: bottomRight)
            path.addLine(to: bottomCenter)
            path.addLine(to: bottomLeft)
            path.addLine(to: topLeft)
            path.close()

            context.setFillColor(lambdaColor.cgColor)
            context.setStrokeColor(lambdaColor.cgColor)
            context.fillPath()
            context.setLineJoin(.round)
            context.setLineCap(.round)
            context.setLineWidth(borderRadius)
            context.addPath(path.cgPath)
            context.strokePath()
            context.addPath(path.cgPath)
            context.fillPath()
            
            let triangle = self.triangleFor(rect: CGRect(x: rect.midX - rect.midX / 2, y: rect.midY - rect.midY / 2, width: 100, height: 80))
            context.setFillColor(UIColor.white.cgColor)
            context.setStrokeColor(UIColor.white.cgColor)
            context.setLineJoin(.round)
            context.setLineCap(.round)
            context.setLineWidth(borderRadiusInside)
            context.addPath(triangle.cgPath)
            context.strokePath()
            context.addPath(triangle.cgPath)
            context.fillPath()
        }
    }
    
    private func triangleFor(rect: CGRect) -> UIBezierPath {
        let path = UIBezierPath()
        let topLeft = CGPoint(x: rect.midX - 10, y: rect.origin.y)
        let topRight = CGPoint(x: rect.midX + 10, y: rect.origin.y)
        let bottomRight2 = CGPoint(x: rect.maxX, y: rect.maxY)
        let bottomRight1 = CGPoint(x: rect.maxX - 25, y: rect.maxY)
        let center = CGPoint(x: rect.midX, y: rect.midY - 10)
        let bottomLeft2 = CGPoint(x: rect.origin.y + 25, y: rect.maxY)
        let bottomLeft1 = CGPoint(x: rect.origin.y, y: rect.maxY)
        
        path.move(to: topLeft)
        path.addLine(to: topRight)
        path.addLine(to: bottomRight2)
        path.addLine(to: bottomRight1)
        path.addLine(to: center)
        path.addLine(to: bottomLeft2)
        path.addLine(to: bottomLeft1)
        path.close()
        
        return path
    }
}

