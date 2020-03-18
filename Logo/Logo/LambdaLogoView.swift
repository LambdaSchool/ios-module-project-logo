//
//  LambdaLogoView.swift
//  Logo
//
//  Created by Wyatt Harrell on 3/18/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable
class LambdaLogoView: UIView {

    /*
     override init(frame: CGRect) {
         super.init(frame: frame)
         backgroundColor = UIColor.clear
     }
     
     required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         backgroundColor = UIColor.clear
     }
     
     */
    
    let red = UIColor(red:0.73, green:0.07, blue:0.20, alpha:1.00)
     
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            // Rectangle
            let rectangle = CGRect(x: rect.minX, y: rect.minY, width: rect.width, height: (rect.height / 3) * 2)
            let roundedRectanglePath = CGPath(roundedRect: rectangle,
                                        cornerWidth: 6.0,
                                        cornerHeight: 6.0,
                                        transform: nil)
            context.addPath(roundedRectanglePath)
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
            
            // Triangle
            let leftCorner = CGPoint(x: rectangle.minX + 5, y: rectangle.maxY)
            let rightCorner = CGPoint(x: rectangle.maxX - 5, y: rectangle.maxY)
            let centerBottom = CGPoint(x: rect.midX, y: rect.maxY)
            let centerBottomLeft = CGPoint(x: rect.midX - 10, y: rect.maxY - 10)
            let centerBottomRight = CGPoint(x: rect.midX + 10, y: rect.maxY - 10)
            context.setStrokeColor(UIColor.white.cgColor)
            context.beginPath()
            context.move(to: leftCorner)
            context.addLine(to: centerBottomLeft)
            context.addQuadCurve(to: centerBottomRight, control: centerBottom)
            context.addLine(to: rightCorner)
            context.addLine(to: leftCorner)
            context.closePath()
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
            context.strokePath()

            // Lambda
            let middle = CGPoint(x: rectangle.midX, y: rectangle.midY)
            context.setStrokeColor(red.cgColor)
            context.beginPath()
            context.move(to: middle)
            context.setLineWidth(5)
            context.addLine(to: CGPoint(x: rectangle.midX - 50, y: rectangle.midY + 75))
            context.addLine(to: CGPoint(x: rectangle.midX - 85, y: rectangle.midY + 75))
            context.addLine(to: CGPoint(x: rectangle.midX - 20, y: rectangle.midY - 35))
            context.addLine(to: CGPoint(x: rectangle.midX + 20, y: rectangle.midY - 35))
            context.addLine(to: CGPoint(x: rectangle.midX + 85, y: rectangle.midY + 75))
            context.addLine(to: CGPoint(x: rectangle.midX + 50, y: rectangle.midY + 75))
            context.addLine(to: middle)
            context.setFillColor(red.cgColor)
            context.closePath()
            context.fillPath()
            context.strokePath()
        }
    }

}
