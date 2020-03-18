//
//  LogoView.swift
//  Logo
//
//  Created by Shawn Gee on 3/18/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

    
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.translateBy(x: rect.midX, y: rect.midY)
        
        let pillSize = CGSize(width: rect.width / 5.5, height: rect.height / 2)
        let pillOrigin = CGPoint(x: 0, y: 0 - pillSize.height / 2)
        let pillFrame = CGRect(origin: pillOrigin, size: pillSize)
        
        
        context.setBlendMode(.multiply)
        
        func drawPill(color: CGColor, rotation: CGFloat) {
            var tranform = CGAffineTransform(rotationAngle: -1.5 * .pi + rotation)
            let pillPath = CGPath(roundedRect: pillFrame, cornerWidth: pillFrame.width / 2 , cornerHeight: pillFrame.width / 2, transform: &tranform)
            context.addPath(pillPath)
            context.setFillColor(color)
            context.fillPath()
        }
        
        drawPill(color: UIColor.cyan.cgColor, rotation: 0)
        drawPill(color: UIColor.systemPink.cgColor, rotation: 2 * .pi / 3)
        drawPill(color: UIColor.systemYellow.cgColor, rotation: -2 * .pi / 3)
    }
    

}
