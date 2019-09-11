//
//  LogoView.swift
//  Logo
//
//  Created by Jordan Christensen on 9/12/19.
//  Copyright © 2019 Mazjap Co Technologies. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {
    
    let strokeColor = UIColor(red: 0.62, green: 0.68, blue: 0.72, alpha: 1.00)
    let secondaryStrokeColor = UIColor.black
    let backgroundCircleColor = UIColor.black
    let foregroundCircleColor = UIColor(red: 0.05, green: 0.44, blue: 0.53, alpha: 1.00)
    
    override func draw(_ rect: CGRect) {
        let center = CGPoint(x: rect.width/2, y: rect.height/2)
        var circleSize: CGFloat
        if rect.size.width > rect.size.height { circleSize = rect.size.height * 0.5 }
        else { circleSize = rect.size.width * 0.5 }
        let baseRect = CGRect(x: rect.width/2 - circleSize/2, y: rect.height/2 - circleSize/2, width: circleSize, height: circleSize)
        let lineWidth = baseRect.size.width * 0.02
        
        if let context = UIGraphicsGetCurrentContext() {
            context.move(to: center)
            context.addEllipse(in: baseRect)
            context.setFillColor(backgroundCircleColor.cgColor)
            context.fillPath()
            
            context.addEllipse(in: baseRect)
            context.setStrokeColor(strokeColor.cgColor)
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            let secondaryRect = CGRect(x: rect.size.width/2 - (baseRect.size.width * 0.6)/2, y: rect.size.height/2 - (baseRect.size.height * 0.6)/2, width: baseRect.size.width * 0.6, height: baseRect.size.height * 0.6)
            
            context.addEllipse(in: secondaryRect)
            context.setFillColor(foregroundCircleColor.cgColor)
            context.fillPath()
            
            context.addEllipse(in: secondaryRect)
            context.setStrokeColor(strokeColor.cgColor)
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.move(to: CGPoint(x: rect.width/2, y: secondaryRect.origin.y))
            context.setStrokeColor(strokeColor.cgColor)
            context.addLine(to: CGPoint(x: rect.width/2, y: secondaryRect.origin.y + secondaryRect.size.height))
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.move(to: CGPoint(x: secondaryRect.origin.x, y: rect.height/2))
            context.setStrokeColor(strokeColor.cgColor)
            context.addLine(to: CGPoint(x: secondaryRect.origin.x + secondaryRect.size.width, y: rect.height/2))
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.move(to: CGPoint(x: rect.width/2, y: secondaryRect.origin.y))
            context.setStrokeColor(secondaryStrokeColor.cgColor)
            context.addLine(to: CGPoint(x: rect.width/2, y: secondaryRect.origin.y + secondaryRect.size.height))
            context.setLineWidth(lineWidth/2)
            context.strokePath()
            
            context.move(to: CGPoint(x: secondaryRect.origin.x, y: rect.height/2))
            context.setStrokeColor(secondaryStrokeColor.cgColor)
            context.addLine(to: CGPoint(x: secondaryRect.origin.x + secondaryRect.size.width, y: rect.height/2))
            context.setLineWidth(lineWidth/2)
            context.strokePath()
            
            context.addEllipse(in: secondaryRect)
            context.setStrokeColor(secondaryStrokeColor.cgColor)
            context.setLineWidth(lineWidth/2)
            context.strokePath()
            
            context.move(to: CGPoint(x: center.x + (baseRect.size.width * 0.03)/3, y: center.y - (baseRect.size.height * 0.03)/3))
            context.addLine(to: CGPoint(x: center.x + (baseRect.size.width * 0.03)/3, y: center.y - secondaryRect.size.height/2 + (baseRect.size.height * 0.03)/3))
            context.addLine(to: CGPoint(x: secondaryRect.origin.x + secondaryRect.size.width - (baseRect.size.height * 0.03)/3, y: secondaryRect.origin.y + secondaryRect.size.height/2 - (baseRect.size.height * 0.03)/3))
            context.closePath()
            context.setFillColor(UIColor.white.cgColor)
            
            context.fillPath()
            
            context.move(to: CGPoint(x: center.x - (baseRect.size.width * 0.03)/3, y: center.y + (baseRect.size.height * 0.03)/3))
            context.addLine(to: CGPoint(x: center.x - (baseRect.size.width * 0.03)/3, y: center.y + secondaryRect.size.height/2 - (baseRect.size.height * 0.03)/3))
            context.addLine(to: CGPoint(x: secondaryRect.origin.x + (baseRect.size.height * 0.03)/3, y: secondaryRect.origin.y + secondaryRect.size.height/2 + (baseRect.size.height * 0.03)/3))
            context.closePath()
            context.setFillColor(UIColor.white.cgColor)
            
            context.fillPath()
        }
    }

}
