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
            
            let point1 = CGPoint(x: logoCenter.x - 10, y: logoCenter.y - 15)
            let point2 = CGPoint(x: point1.x + 20, y: point1.y)
            let point3 = CGPoint(x: point1.x - 45, y: point1.y - 47)
            
            
            let point4 = CGPoint(x: (rect.size.width / 2.0) - 15, y: (rect.size.width / 2.0) + 10)
            let point5 = CGPoint(x: point4.x, y: point4.y - 20)
            let point6 = CGPoint(x: (rect.size.width / 2.0) - 58, y: (rect.size.width / 2.0) - 58)
            
            
            let point7 = CGPoint(x: (rect.size.width / 2.0) + 15, y: logoCenter.y + 11)
            let point8 = CGPoint(x: point7.x + 44, y: (rect.size.width / 2.0) + 48)
            let point9 = CGPoint(x: point7.x, y: point5.y)
            
            
            
            let point10 = CGPoint(x: point2.x, y: point7.y + 5)
            let point11 = CGPoint(x: (rect.size.width / 2.0) - 10, y: point10.y)
            let point12 = CGPoint(x: point8.x + 3, y: point8.y + 8)
            
            
            context.addRect(rect)
            context.setFillColor(UIColor(red: 32/255, green: 201/255, blue: 228/255, alpha: 0.75).cgColor)
            context.fillPath()
          
            
            context.beginPath()
            
            context.move(to: point1)
            context.addLine(to: point2)
            context.addLine(to: point3)
            context.addLine(to: point1)
            context.setFillColor(UIColor.green.cgColor)
            
            
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
            
            
            context.setLineWidth(2.5)
            context.setStrokeColor(UIColor.black.cgColor)
            context.strokePath()
            
            
            let redRect = CGRect(x: (logoCenter.x - CGFloat(7.5)),
                                 y: (logoCenter.y - CGFloat(7.5)), width: 15, height: 15)
            context.addRect(redRect)
            context.setFillColor(UIColor.systemRed.cgColor)
            context.setLineWidth(100)
            context.setStrokeColor(UIColor.systemGreen.cgColor)
            context.fillPath()
            
            
            struct Constants {
                static let lineWidth: CGFloat = 5.0
                static let arcWidth: CGFloat = 5// was 25
                
                static var halfOfLineWidth: CGFloat {
                    return lineWidth / 2
                }
            }
            
            
            var counterColor: UIColor = UIColor.systemOrange
            let orangeCenter = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
            
            let orangeRadius = max(bounds.width, bounds.height)
            
            let orangeStartAngle: CGFloat = 4.5 * .pi / 4
            let orangeEndAngle: CGFloat = .pi / 3
            
            let orangePath = UIBezierPath(
                arcCenter: orangeCenter,
                radius: orangeRadius/2 - Constants.arcWidth/2,
                startAngle: orangeStartAngle,
                endAngle: orangeEndAngle,
                clockwise: true)
            
            orangePath.lineWidth = Constants.arcWidth
            counterColor.setStroke()
            orangePath.fill(with: .luminosity, alpha: 0.25)
            orangePath.stroke()
            
            
            
            counterColor = UIColor.systemRed
            
            let redArcCenter = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
            
            let redArcRadius = max(bounds.width - 55, bounds.height - 55)
            
            let redStartAngle: CGFloat = 2 * .pi / 4
            let redEndAngle: CGFloat = 6.5 * .pi / 4
            
            let redArcPath = UIBezierPath(
                arcCenter: redArcCenter,
                radius: redArcRadius/2 - Constants.arcWidth/2,
                startAngle: redStartAngle,
                endAngle: redEndAngle,
                clockwise: true)
            
            redArcPath.lineWidth = Constants.arcWidth
            counterColor.setStroke()
            redArcPath.fill(with: .hardLight, alpha: 0.25)
            redArcPath.stroke()
            
            
            counterColor = UIColor.purple
            
            let prurpleArcCenter = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
            
            let purpleArcRadius = max(bounds.width - 110, bounds.height - 110)
            
            let purpleStartAngle: CGFloat = 5.0 * .pi / 4
            let purpleEndAngle: CGFloat = .pi / 2
            
            let purplePath = UIBezierPath(
                arcCenter: prurpleArcCenter,
                radius: purpleArcRadius/2 - Constants.arcWidth/2,
                startAngle: purpleStartAngle,
                endAngle: purpleEndAngle,
                clockwise: true)
            
            purplePath.lineWidth = Constants.arcWidth
            counterColor.setStroke()
            purplePath.fill(with: .difference, alpha: 0.25)
            purplePath.stroke()
            
        }
    }
}
