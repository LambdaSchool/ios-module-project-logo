//
//  NewButton.swift
//  Logo
//
//  Created by Wyatt Harrell on 3/18/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable
class NewButton: UIButton {

    let shadowColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.5)
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            let rectangle = CGRect(x: rect.midX - 75, y: rect.midY - 75, width: 150, height: 150)
            context.addEllipse(in: rectangle)
            context.setFillColor(UIColor.white.cgColor)
            context.setShadow(offset: CGSize(width: 0, height: 0),
                              blur: 6.0,
                              color: shadowColor.cgColor)
            context.fillPath()
            
            let middle = CGPoint(x: rectangle.midX, y: rectangle.midY)
            
            context.setStrokeColor(UIColor.red.cgColor)
            context.beginPath()
            context.move(to: middle)
            context.setLineWidth(4)
            context.addLine(to: CGPoint(x: rectangle.midX, y: rectangle.midY + 35))
            context.addLine(to: CGPoint(x: rectangle.midX, y: rectangle.midY - 35))
            context.addLine(to: middle)
            context.addLine(to: CGPoint(x: rectangle.midX + 35, y: rectangle.midY))
            context.addLine(to: CGPoint(x: rectangle.midX - 35, y: rectangle.midY))

            context.strokePath()
            
        }
    }
    

}
