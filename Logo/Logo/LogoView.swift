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
    
    var redStartAngle = CGFloat(2.7 * .pi)  //3.2
    var redEndAngle = CGFloat(1.7 * .pi)  //2.3
//    var redStartAngle: CGFloat = 0.0
//    var redEndAngle: CGFloat = 0.0
    var moved: Bool = false {
        didSet {
            let change = CADisplayLink(target: self, selector: #selector(updateArc(_:)))
            change.preferredFramesPerSecond = 1
            change.add(to: .current, forMode: .common)
        }
    }
    
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
            let point3 = CGPoint(x: point2.x - 65, y: point2.y - 47)
            
            
            let point4 = CGPoint(x: logoCenter.x - 15, y: logoCenter.y + 10)
            let point5 = CGPoint(x: point4.x, y: point4.y - 20)
            let point6 = CGPoint(x: point5.x - 45, y: point5.y - 48)
            
            
            let point7 = CGPoint(x: logoCenter.x + 15, y: logoCenter.y + 11)
            let point8 = CGPoint(x: point7.x, y: point5.y + 2)
            let point9 = CGPoint(x: point7.x + 43, y: logoCenter.y + 48)
            
            
            let point10 = CGPoint(x: point2.x, y: point7.y + 5)
            let point11 = CGPoint(x: point2.x - 17, y: point10.y)
            let point12 = CGPoint(x: logoCenter.x + 62, y: logoCenter.y + 60)
            
            // segments for border
            let arr = [CGPoint(x: 0, y: 0),
                       CGPoint(x: 0, y: 25),
                       CGPoint(x: 0, y: 30),
                       CGPoint(x: 0, y: 55),
                       CGPoint(x: 0, y: 60),
                       CGPoint(x: 0, y: 85),
                       CGPoint(x: 0, y: 90),
                       CGPoint(x: 0, y: 115),
                       CGPoint(x: 0, y: 120),
                       CGPoint(x: 0, y: 145),
                       CGPoint(x: 0, y: 150),
                       CGPoint(x: 0, y: 175),
                       CGPoint(x: 0, y: 180),
                       CGPoint(x: 0, y: 205),
                       CGPoint(x: 0, y: 210),
                       CGPoint(x: 0, y: 235),
                       CGPoint(x: 0, y: 240),
                       CGPoint(x: 0, y: 265),
                       CGPoint(x: 0, y: 270),
                       CGPoint(x: 0, y: 295),
                       CGPoint(x: 0, y: 300),
                       CGPoint(x: 0, y: 330),
                       
            CGPoint(x: 0, y: 330),
            CGPoint(x: 25, y: 330),
            CGPoint(x: 30, y: 330),
            CGPoint(x: 55, y: 330),
            CGPoint(x: 60, y: 330),
            CGPoint(x: 85, y: 330),
            CGPoint(x: 90, y: 330),
            CGPoint(x: 115, y: 330),
            CGPoint(x: 120, y: 330),
            CGPoint(x: 145, y: 330),
            CGPoint(x: 150, y: 330),
            CGPoint(x: 175, y: 330),
            CGPoint(x: 180, y: 330),
            CGPoint(x: 205, y: 330),
            CGPoint(x: 210, y: 330),
            CGPoint(x: 235, y: 330),
            CGPoint(x: 240, y: 330),
            CGPoint(x: 265, y: 330),
            CGPoint(x: 270, y: 330),
            CGPoint(x: 295, y: 330),
            CGPoint(x: 300, y: 330),
            CGPoint(x: 330, y: 330),
                       
                       CGPoint(x: 330, y: 330),
                       CGPoint(x: 330, y: 305),
                       CGPoint(x: 330, y: 300),
                       CGPoint(x: 330, y: 270),
                       CGPoint(x: 330, y: 265),
                       CGPoint(x: 330, y: 240),
                       CGPoint(x: 330, y: 235),
                       CGPoint(x: 330, y: 210),
                       CGPoint(x: 330, y: 205),
                       CGPoint(x: 330, y: 180),
                       CGPoint(x: 330, y: 175),
                       CGPoint(x: 330, y: 150),
                       CGPoint(x: 330, y: 145),
                       CGPoint(x: 330, y: 120),
                       CGPoint(x: 330, y: 115),
                       CGPoint(x: 330, y: 90),
                       CGPoint(x: 330, y: 85),
                       CGPoint(x: 330, y: 60),
                       CGPoint(x: 330, y: 55),
                       CGPoint(x: 330, y: 30),
                       CGPoint(x: 330, y: 25),
                       CGPoint(x: 330, y: 0),
    
            CGPoint(x: 330, y: 0),
            CGPoint(x: 305, y: 0),
            CGPoint(x: 300, y: 0),
            CGPoint(x: 270, y: 0),
            CGPoint(x: 265, y: 0),
            CGPoint(x: 240, y: 0),
            CGPoint(x: 235, y: 0),
            CGPoint(x: 210, y: 0),
            CGPoint(x: 205, y: 0),
            CGPoint(x: 180, y: 0),
            CGPoint(x: 175, y: 0),
            CGPoint(x: 150, y: 0),
            CGPoint(x: 145, y: 0),
            CGPoint(x: 120, y: 0),
            CGPoint(x: 115, y: 0),
            CGPoint(x: 90, y: 0),
            CGPoint(x: 85, y: 0),
            CGPoint(x: 60, y: 0),
            CGPoint(x: 55, y: 0),
            CGPoint(x: 30, y: 0),
            CGPoint(x: 25, y: 0),
            CGPoint(x: 0, y: 0)]
       
            // UIView
            
            context.addRect(rect)
            context.setFillColor(UIColor(red: 56/255, green: 205/233, blue: 231/255, alpha: 0.75).cgColor)
            context.fillPath()
            
            // IUView border
            context.addRect(rect)
             context.setLineWidth(5)
            context.setStrokeColor(UIColor(red: 136/255, green: 110/255, blue: 228/255, alpha: 1.0).cgColor)
            context.strokeLineSegments(between: arr)
            context.strokePath()
            
          
            
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
            
            
            context.setLineWidth(1.5)
            context.setStrokeColor(UIColor.black.cgColor)
            context.strokePath()
            
            
            let redRect = CGRect(x: (logoCenter.x - CGFloat(7.5)),
                                 y: (logoCenter.y - CGFloat(7.5)), width: 15, height: 15)
            context.addRect(redRect)
            context.setFillColor(UIColor.systemRed.cgColor)
           
            context.fillPath()
            
            
            struct Constants {
                static let lineWidth: CGFloat = 5.0
                static let arcWidth: CGFloat = 5
                static var halfOfLineWidth: CGFloat {
                    return lineWidth / 2
                }
            }
            
            
            var counterColor: UIColor = UIColor.systemOrange
            let orangeCenter = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
            
            let orangeRadius = max(bounds.width, bounds.height) - 5
            
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
            
            
//            redStartAngle = 2.7 * .pi  //3.2
//            redEndAngle = 1.7 * .pi  //2.3
//            let redStartAngle: CGFloat = 2 * .pi / 4
//            let redEndAngle: CGFloat = 6.5 * .pi / 4
            
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
    
    @objc func updateArc(_ sender: CADisplayLink) {
      if moved! {
          redStartAngle = 2.7 * .pi  //3.2
          redEndAngle = 1.7 * .pi
          moved?.toggle()
      } else {
          moved!.toggle()
          redStartAngle = 3.2  //3.2
          redEndAngle = 2.3
      }
        setNeedsDisplay()
    }
}
