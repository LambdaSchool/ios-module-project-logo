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
     
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            let rectangle = CGRect(x: rect.minX, y: rect.minY, width: rect.width, height: (rect.height / 3) * 2)
            let roundedRectanglePath = CGPath(roundedRect: rectangle,
                                        cornerWidth: 6.0,
                                        cornerHeight: 6.0,
                                        transform: nil)
            context.addPath(roundedRectanglePath)
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
            
            let leftCorner = CGPoint(x: rectangle.minX + 5, y: rectangle.maxY)
            let rightCorner = CGPoint(x: rectangle.maxX - 5, y: rectangle.maxY)
            let centerBottom = CGPoint(x: rect.midX, y: rect.maxY)
            context.setStrokeColor(UIColor.white.cgColor)
            context.beginPath()
            context.move(to: leftCorner)
            context.setLineWidth(3)
            context.addLine(to: centerBottom)
            context.addLine(to: rightCorner)
            context.addLine(to: leftCorner)
            context.closePath()
            //context.strokePath()
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
            
            
        }
    }

}
