//
//  Logo.swift
//  Logo
//
//  Created by Dahna on 4/15/20.
//  Copyright © 2020 Dahna Buenrostro. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable
class LogoView: UIView {
   
    private let mouseColor = UIColor.black
    private let bowColor = UIColor.red
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")

    }
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let mouseCenter = CGPoint(x: rect.midX, y: rect.midY)
            
            
            //The Head
            let headRadius: CGFloat = 65
            let centerCircle = CGRect(x: mouseCenter.x - headRadius, y: mouseCenter.y - headRadius, width: 2 * headRadius, height: 2 * headRadius)
            context.addEllipse(in: centerCircle)
            context.setFillColor(mouseColor.cgColor)
            context.fillPath()
            
            //The Left Ear
            let leftEarRadius: CGFloat = 35
            let leftCenterEar = CGRect(x: (mouseCenter.x - 120),
                                       y: (mouseCenter.y - 105),
                                       width: 2.5 * leftEarRadius,
                                       height: 2.5 * leftEarRadius)
            context.addEllipse(in: leftCenterEar)
            context.setFillColor(mouseColor.cgColor)
            context.fillPath()
            
            //The Right Ear
            let rightEarRadius: CGFloat = 35
            let rightCenterEar = CGRect(x: mouseCenter.x + 30,
                                        y: mouseCenter.y - 105,
                                        width: 2.5 * rightEarRadius,
                                        height: 2.5 * rightEarRadius)
            context.addEllipse(in: rightCenterEar)
            context.setFillColor(mouseColor.cgColor)
            context.fillPath()
            
            
            // Middle of bow
            
            let centerBowRadius: CGFloat = 25
            let centerBowRect = CGRect(x: mouseCenter.x - 18,
                                       y: mouseCenter.y - 85,
                                       width: 10 + centerBowRadius,
                                       height: 1.5 * centerBowRadius)

            let centerBowRoundCourners = CGPath(roundedRect: centerBowRect,
                                                cornerWidth: 5,
                                                cornerHeight: 5,
                                                transform: nil)
            context.addPath(centerBowRoundCourners)
            context.setFillColor(bowColor.cgColor)
            context.fillPath()
            
            // Top Left Bow
            
            let topLeftRadius: CGFloat = 40
            let topLeftRect = CGRect(x: mouseCenter.x - 50,
                                     y: mouseCenter.y - 110,
                                     width: topLeftRadius * 1,
                                     height: topLeftRadius * 2)
//            context.translateBy(x: 10, y: -40)
            //context.rotate(by: 25.06)
            context.rotate(by: -25.19999)
            context.addEllipse(in: topLeftRect)
            context.setFillColor(bowColor.cgColor)
            context.fillPath()
            
            // Top Right Bow
            
            let topRightRadius: CGFloat = 40
            let topRightRect = CGRect(x: mouseCenter.x + 10,
                                      y: mouseCenter.y - 132,
                                      width: topRightRadius * 1,
                                      height: topRightRadius * 2)
           context.rotate(by: -37.55)
            context.addEllipse(in: topRightRect)
            context.setFillColor(bowColor.cgColor)
            context.fillPath()
        }
    }
}
