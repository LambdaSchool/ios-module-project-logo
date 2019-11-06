//
//  LogoView.swift
//  Logo
//
//  Created by Lambda_School_Loaner_204 on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

    private let lambdaBgColor = UIColor.red
    private let lambdaIconColor = UIColor.white
    
    private let heightOffSet: CGFloat = 70.0
    private let logoHeightSize: CGFloat = 30.0
    private let logoWidthSize: CGFloat = 10.0
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        if let context = UIGraphicsGetCurrentContext() {
            
            // First rect
            
            
            let roundRect = CGRect(x: rect.origin.x,
                                   y: rect.origin.y,
                                   width: rect.size.width,
                                   height: rect.size.height - heightOffSet)
            context.beginPath()
            let roundedRectPath = CGPath(roundedRect: roundRect, cornerWidth: 10.0, cornerHeight: 10.0, transform: nil)
            context.addPath(roundedRectPath)
//            context.addRect(CGRect(x: rect.origin.x,
//                                   y: rect.origin.y,
//                                   width: rect.size.width,
//                                   height: rect.size.height - heightOffSet))
            context.setFillColor(lambdaBgColor.cgColor)
            context.fillPath()
            context.closePath()
            
            
            let squareCenter = CGPoint(x: rect.size.width / 2.0,
                                       y: (rect.size.height - heightOffSet) / 2.0)
            
            // Triangle under square
            let curveOffSet: CGFloat = 5.0
            
            context.beginPath()
            context.move(to: CGPoint(x: rect.origin.x + curveOffSet,
                                     y: rect.size.height - heightOffSet - 1.5))
            
            context.addLine(to: CGPoint(x: squareCenter.x - curveOffSet * 2,
                                        y: (rect.size.height - heightOffSet) + heightOffSet - curveOffSet))
            context.addQuadCurve(to: CGPoint(x: squareCenter.x + curveOffSet * 2,
                                               y: (rect.size.height - heightOffSet) + heightOffSet - curveOffSet),
                                   control: CGPoint(x: squareCenter.x,
                                                    y: (rect.size.height - heightOffSet) + heightOffSet))
            
            context.addLine(to: CGPoint(x: rect.size.width - curveOffSet,
                                        y: rect.size.height - heightOffSet - 1.5))
            
            context.closePath()
            context.setFillColor(lambdaBgColor.cgColor)
            context.fillPath()
            
            //context.setStrokeColor(UIColor.black.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: squareCenter.x - 10,
                                     y: (rect.size.height - heightOffSet) + heightOffSet - 10))
            //context.setLineWidth(10)
  
            //context.strokePath()
            context.closePath()
            
            // Logo lines
            context.beginPath()
            context.move(to: CGPoint(x: squareCenter.x,
                                     y: squareCenter.y + logoWidthSize))
            context.addLine(to: CGPoint(x: squareCenter.x - logoWidthSize * 3.5,
                                        y: squareCenter.y + logoHeightSize * 2))
            context.addLine(to: CGPoint(x: squareCenter.x - logoWidthSize * 7,
                                        y: squareCenter.y + logoHeightSize * 2))
            context.addLine(to: CGPoint(x: squareCenter.x - logoWidthSize * 1.25,
                                        y: squareCenter.y - logoHeightSize))
            context.addLine(to: CGPoint(x: squareCenter.x + logoWidthSize * 1.25,
                                        y: squareCenter.y - logoHeightSize))
            context.addLine(to: CGPoint(x: squareCenter.x + logoWidthSize * 7,
                                        y: squareCenter.y + logoHeightSize * 2))
            context.addLine(to: CGPoint(x: squareCenter.x + logoWidthSize * 3.5,
                                        y: squareCenter.y + logoHeightSize * 2))
            
            context.closePath()
            context.setFillColor(lambdaIconColor.cgColor)
            context.fillPath()
        }
    }
}
