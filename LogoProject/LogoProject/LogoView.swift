//
//  LogoView.swift
//  LogoProject
//
//  Created by admin on 10/9/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class LogoView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        // width/height = 414
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let center = CGPoint(x: rect.size.width / 2.0,
                                 y: rect.size.height / 2.0)
            
            let offset: CGFloat = 5
  
         
            let point1 = CGPoint(x: rect.size.width * 0.5, y: (rect.size.height - rect.size.height) + offset)
            
            let point2 = CGPoint(x: rect.size.width * 0.65, y: rect.size.height * 0.14)
            
            let point3 = CGPoint(x: rect.size.width * 0.83, y: rect.size.height * 0.18)
            
            let point4 = CGPoint(x: rect.size.width * 0.87, y: rect.size.height * 0.37)
            
            let point5 = CGPoint(x: rect.size.width - offset, y: rect.size.height * 0.5)
            
            let point6 = CGPoint(x: rect.size.width * 0.87, y: rect.size.height * 0.63)
            
            let point7 = CGPoint(x: rect.size.width * 0.83, y: rect.size.height * 0.82)
            
            let point8 = CGPoint(x: rect.size.width * 0.65, y: rect.size.height * 0.86)
            
            let point9 = CGPoint(x: rect.size.width * 0.5, y: rect.size.height - offset)
            
            let point10 = CGPoint(x: rect.size.width * 0.35, y: rect.size.height * 0.86)
            
            let point11 = CGPoint(x: rect.size.width * 0.17, y: rect.size.height * 0.82)
            
            let point12 = CGPoint(x: rect.size.width * 0.13, y: rect.size.height * 0.63)
            
            let point13 = CGPoint(x: (rect.size.width * 0) + offset, y: rect.size.height * 0.5)
            
            let point14 = CGPoint(x: rect.size.width * 0.13, y: rect.size.height * 0.37)
            
            let point15 = CGPoint(x: rect.size.width * 0.17, y: rect.size.height * 0.18)
            
            let point16 = CGPoint(x: rect.size.width * 0.35, y: rect.size.height * 0.14)
            
//            let line = CAShapeLayer()
//            let linePath = UIBezierPath()
//
//
//
//            linePath.move(to: point1)
//            linePath.addLine(to: point2)
//
//
//            linePath.addLine(to: point3)
//            linePath.addLine(to: point4)
//            linePath.addLine(to: point5)
//            linePath.addLine(to: point6)
//            linePath.addLine(to: point7)
//            linePath.addLine(to: point8)
//            linePath.addLine(to: point9)
//            linePath.addLine(to: point10)
//            linePath.addLine(to: point11)
//            linePath.addLine(to: point12)
//            linePath.addLine(to: point13)
//            linePath.addLine(to: point14)
//            linePath.addLine(to: point15)
//            linePath.addLine(to: point16)
//
//            var dis = (point2.x - point1.x / 3.0)
//            linePath.addCurve(to: point1, controlPoint1: CGPoint(x: point1.x + dis, y: point1.y + dis), controlPoint2: CGPoint(x: point2.x - dis, y: point2.y - dis))
//
//            line.path = linePath.cgPath
//            line.strokeColor = UIColor.black.cgColor
//            line.lineWidth = 5.0
//
//            context.strokePath()
//            self.layer.addSublayer(line)
            
            context.move(to: point1)

            context.addLine(to: point2)

            context.addLine(to: point3)

            context.addLine(to: point4)

            context.addLine(to: point5)

            context.addLine(to: point6)

            context.addLine(to: point7)

            context.addLine(to: point8)

            context.addLine(to: point9)

            context.addLine(to: point10)

            context.addLine(to: point11)

            context.addLine(to: point12)

            context.addLine(to: point13)

            context.addLine(to: point14)

            context.addLine(to: point15)

            context.addLine(to: point16)

            context.closePath()
// attempt
//            let rad: CGFloat = 2
//
//            context.addArc(tangent1End: point1, tangent2End: point2, radius: rad)
//            context.addArc(tangent1End: point2, tangent2End: point3, radius: rad)
//            context.addArc(tangent1End: point3, tangent2End: point4, radius: rad)
//            context.addArc(tangent1End: point4, tangent2End: point5, radius: rad)
//            context.addArc(tangent1End: point5, tangent2End: point6, radius: rad)
//            context.addArc(tangent1End: point6, tangent2End: point7, radius: rad)
//            context.addArc(tangent1End: point7, tangent2End: point8, radius: rad)
//            context.addArc(tangent1End: point8, tangent2End: point9, radius: rad)
//            context.addArc(tangent1End: point9, tangent2End: point10, radius: rad)
//            context.addArc(tangent1End: point10, tangent2End: point11, radius: rad)
//            context.addArc(tangent1End: point11, tangent2End: point12, radius: rad)
//            context.addArc(tangent1End: point12, tangent2End: point13, radius: rad)
//            context.addArc(tangent1End: point13, tangent2End: point14, radius: rad)
//            context.addArc(tangent1End: point14, tangent2End: point15, radius: rad)
//            context.addArc(tangent1End: point15, tangent2End: point16, radius: rad)
//            context.addArc(tangent1End: point16, tangent2End: point1, radius: rad)
            
            
            
            context.setStrokeColor(UIColor.black.cgColor)
            context.setLineWidth(9)
            
            context.strokePath()
            
            let radius: CGFloat = 90
                       
            let centerRec = CGRect(x: center.x - radius,
                                   y: center.y - radius,
                                   width: radius * 2,
                                   height: radius * 2)
                       
            context.addEllipse(in: centerRec)
            context.setFillColor(UIColor.red.cgColor)
                       
            context.fillPath()
            
        }
        
    }
    

}
