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

            context.setFillColor(UIColor.red.cgColor)
            context.setStrokeColor(UIColor.red.cgColor)
            context.fillPath()
            context.setLineJoin(.round)
            context.setLineCap(.round)
            context.setLineWidth(borderRadius)
            context.addPath(path.cgPath)
            context.strokePath()
            context.addPath(path.cgPath)
            context.fillPath()
        }
    }
}

