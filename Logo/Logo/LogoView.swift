//
//  LogoView.swift
//  Logo
//
//  Created by David Williams on 4/14/20.
//  Copyright © 2020 david williams. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            
            let logoCenter = CGPoint(x: rect.size.width / 2.0, y: rect.size.height / 2.0)
            let point1 = CGPoint(x: logoCenter.x - 40, y: logoCenter.y - 45)
            let point2 = CGPoint(x: point1.x + 55, y: point1.y)
            let point3 = CGPoint(x: point1.x - 55, y: point1.y - 65)
            
            let point4 = CGPoint(x: (rect.size.width / 2.0) - 50, y: (rect.size.width / 2.0) - 35)
            let point5 = CGPoint(x: (rect.size.width / 2.0) - 100, y: (rect.size.width / 2.0) - 100)
            let point6 = CGPoint(x: (rect.size.width / 2.0) - 50, y: (rect.size.width / 2.0) + 15)
            
            let point7 = CGPoint(x: (rect.size.width / 2.0) + 50, y: (rect.size.width / 2.0) + 40)
            let point8 = CGPoint(x: (rect.size.width / 2.0) + 105, y: (rect.size.width / 2.0) + 100)
            let point9 = CGPoint(x: (rect.size.width / 2.0) + 50, y: (rect.size.width / 2.0) - 15)
            
            let point10 = CGPoint(x: (rect.size.width / 2.0) + 40, y: (rect.size.width / 2.0) + 50)
            let point11 = CGPoint(x: (rect.size.width / 2.0) - 10, y: (rect.size.width / 2.0) + 50)
            let point12 = CGPoint(x: (rect.size.width / 2.0) + 100, y: (rect.size.width / 2.0) + 115)
            
            let point13 = CGPoint(x: (rect.size.width / 2.0) - 95, y: (rect.size.width / 2.0) + 45)
            let point14 = CGPoint(x: (rect.size.width / 2.0) - 45, y: (rect.size.width / 2.0) + 45)
            let point15 = CGPoint(x: (rect.size.width / 2.0) - 45, y: (rect.size.width / 2.0) + 95)
            
            let point16 = CGPoint(x: point13.x + 5, y: point13.y)
            let point17 = CGPoint(x: point15.x, y: point15.y - 5)
            
            let point18 = CGPoint(x: point13.x + 20, y: point13.y)
            let point19 = CGPoint(x: point15.x, y: point15.y - 20)
            
            let point20 = CGPoint(x: point13.x + 35, y: point13.y)
            let point21 = CGPoint(x: point15.x, y: point15.y - 35)
            
            let borderWidth: CGFloat = 2.0
            
            context.addEllipse(in: rect)
            context.setFillColor(UIColor.systemTeal.cgColor)
            context.fillPath()
            
            let borderRect = CGRect(x: rect.origin.x + borderWidth / 2,
            y: rect.origin.y + borderWidth / 2,
            width: rect.width - borderWidth,
            height: rect.height - borderWidth)
            
            context.addEllipse(in: borderRect)
            context.setLineWidth(CGFloat(2))
            context.setStrokeColor(UIColor.systemRed.cgColor)
            context.strokePath()
            
            let yellowCircle = CGRect(x: logoCenter.x - 25,
                                      y: logoCenter.y - 145,
                                      width: 50,
                                      height: 50)
            context.addEllipse(in: yellowCircle)
            context.setFillColor(UIColor.systemYellow.cgColor)
            context.fillPath()
            
            let blueCircle = CGRect(x: (rect.size.width / 2.0) + 60,
                                    y: logoCenter.y - 100,
                                    width: 50,
                                    height: 50)
            context.addEllipse(in: blueCircle)
            context.setFillColor(UIColor.systemBlue.cgColor)
            context.fillPath()
            
            let greenCircle = CGRect(x: (rect.size.width / 2.0) + 90,
                                    y: logoCenter.y - 25,
                                    width: 50,
                                    height: 50)
            context.addEllipse(in: greenCircle)
            context.setFillColor(UIColor.systemGreen.cgColor)
            context.fillPath()
            
            context.beginPath()
            context.move(to: point1)
            context.addLine(to: point2)
            context.addLine(to: point3)
            context.addLine(to: point1)
         
            context.move(to: point4)
            context.addLine(to: point5)
            context.addLine(to: point6)
            context.addLine(to: point4)
            
            
            context.move(to: point7)
            context.addLine(to: point8)
            context.addLine(to: point9)
            context.addLine(to: point7)
            
            context.move(to: point10)
            context.addLine(to: point11)
            context.addLine(to: point12)
            context.addLine(to: point10)
            
            
            context.move(to: point13)
            context.addLine(to: point14)
            context.addLine(to: point15)
            
            
            context.move(to: point16)
            context.addLine(to: point17)

            context.move(to: point18)
            context.addLine(to: point19)

            
            context.addQuadCurve(to: point19, control: point18)
            
            context.move(to: point20)
            context.addLine(to: point21)

            
            context.setLineWidth(3.0)
            context.setStrokeColor(UIColor.black.cgColor)
            context.setFillColor(UIColor.red.cgColor)
            context.strokePath()
            
            let redRect = CGRect(x: (logoCenter.x - CGFloat(30)),
                                    y: (logoCenter.y - CGFloat(30)), width: 60, height: 60)
            context.addRect(redRect)
            context.setFillColor(UIColor.systemRed.cgColor)
            context.setLineWidth(10)
            context.setStrokeColor(UIColor.systemGreen.cgColor)
            context.fillPath()
            
        }
    }
}
