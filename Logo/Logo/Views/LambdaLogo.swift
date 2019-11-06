//
//  LambdaLogo.swift
//  Logo
//
//  Created by Jon Bash on 2019-11-06.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

@IBDesignable
class LambdaLogo: UIView {
    
    let mainColor = UIColor(red: 0.73, green: 0.08, blue: 0.20, alpha: 1.00).cgColor
    let accentColor = UIColor.white.cgColor
    
    // ratio constants (per pixel of total size)
    var topCornerRadius: CGFloat = 0.008
    var rectPortionHeight: CGFloat = 0.38
    var cutoffHeight: CGFloat = 0.044
    var totalShape = CGSize(width: 0.476, height: 0.543)
    var mainTriangle = CGSize(width: 0.276, height: 0.242)
    var innerTriangle = CGSize(width: 0.14, height: 0.124)
    var topToMainTriBottom: CGFloat = 0.312
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        topCornerRadius *= rect.width
        rectPortionHeight *= rect.height
        cutoffHeight *= rect.height
        totalShape.width *= rect.width
        totalShape.height *= rect.height
        mainTriangle.width *= rect.width
        mainTriangle.height *= rect.height
        innerTriangle.width *= rect.width
        innerTriangle.height *= rect.height
        topToMainTriBottom *= rect.height
        
        if let context = UIGraphicsGetCurrentContext() {
            let center = CGPoint(x: rect.width * 0.5, y: rect.height * 0.5)
            
            // draw main rectangle
            let mainRect = CGRect(
                x: center.x - (totalShape.width * 0.5),
                y: center.y - (totalShape.height * 0.5),
                width: totalShape.width,
                height: rectPortionHeight
            )
            context.setStrokeColor(mainColor)
            context.setLineWidth(1)
            context.addRect(mainRect)
            context.setFillColor(mainColor)
            context.drawPath(using: .fillStroke)
            
            // draw bottom triangle
            context.beginPath()
            context.move(to: CGPoint(x: mainRect.minX, y: mainRect.maxY))
            context.addLine(to: CGPoint(x: center.x, y: mainRect.minY + totalShape.height))
            context.addLine(to: CGPoint(x: mainRect.maxX, y: mainRect.maxY))
            context.drawPath(using: .fillStroke)
            
            // draw main white triangle
            context.setStrokeColor(accentColor)
            context.setFillColor(accentColor)
            
            let mainTriangleTop = CGPoint(x: center.x, y: mainRect.minY + topToMainTriBottom - mainTriangle.height)
            
            context.beginPath()
            context.move(to: CGPoint(x: center.x - (mainTriangle.width * 0.5), y: mainRect.minY + topToMainTriBottom))
            context.addLine(to: CGPoint(x: center.x + (mainTriangle.width * 0.5), y: mainRect.minY + topToMainTriBottom))
            context.addLine(to: mainTriangleTop)
            context.drawPath(using: .fill)
            
            // draw inlet triangle
            context.setStrokeColor(mainColor)
            context.setFillColor(mainColor)
            
            context.beginPath()
            context.move(to: CGPoint(x: center.x - (innerTriangle.width * 0.5), y: mainRect.minY + topToMainTriBottom))
            context.addLine(to: CGPoint(x: center.x + (innerTriangle.width * 0.5), y: mainRect.minY + topToMainTriBottom))
            context.addLine(to: CGPoint(x: center.x, y: mainRect.minY + topToMainTriBottom - innerTriangle.height))
            context.drawPath(using: .fillStroke)
            
            // draw triangle cutoff
            let heightToCutoff = (mainTriangleTop.y - mainRect.minY) + cutoffHeight
            context.beginPath()
            context.addRect(CGRect(x: mainRect.minX, y: mainRect.minY, width: mainRect.width, height: heightToCutoff))
            context.drawPath(using: .fillStroke)
        }
    }

}
