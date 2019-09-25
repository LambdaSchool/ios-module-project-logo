//
//  LogoView.swift
//  Logo
//
//  Created by John Kouris on 9/24/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {
    
    private let logoBgColor = UIColor.red
    private let borderColor = UIColor.black
    private let borderWidth: CGFloat = 2.0
    private let lineColor = UIColor.white
    private let lineWidth: CGFloat = 5.0
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            // background red square and bottom red triangle
            context.addRect(CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.size.width, height: rect.size.height * 0.7))
            context.move(to: CGPoint(x: rect.origin.x, y: rect.size.height * 0.7))
            context.addLine(to: CGPoint(x: rect.size.width / 2, y: rect.size.height))
            context.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height * 0.7))
            
            context.closePath()
            
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
            
            // inside white triangle with square top
            context.move(to: CGPoint(x: rect.size.width * 0.2, y: rect.size.height * 0.6))
            context.addLine(to: CGPoint(x: rect.size.width / 2 - 14, y: rect.size.height / 6))
            context.addLine(to: CGPoint(x: rect.size.width / 2 + 14, y: rect.size.height / 6))
            context.addLine(to: CGPoint(x: rect.size.width * 0.8, y: rect.size.height * 0.6))

            context.closePath()

            context.setLineWidth(lineWidth)
            context.setFillColor(lineColor.cgColor)
            context.fillPath()
            
            // inside red triangle to form the lambda
            context.move(to: CGPoint(x: rect.size.width * 0.3, y: rect.size.height * 0.6))
            context.addLine(to: CGPoint(x: rect.size.width / 2, y: rect.size.height / 4))
            context.addLine(to: CGPoint(x: rect.size.width * 0.7, y: rect.size.height * 0.6))

            context.closePath()

            context.setLineWidth(lineWidth)
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
        }
    }
    
}
