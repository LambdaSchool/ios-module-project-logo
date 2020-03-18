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
        
        let pillSize = CGSize(width: rect.width / 2, height: rect.width / 5.5)
        let pillOrigin = CGPoint(x: 0 - pillSize.width / 2, y: 0 )
        let pillFrame = CGRect(origin: pillOrigin, size: pillSize)
        
        
        context.setBlendMode(.multiply)
        
        func drawPill(color: CGColor, rotation: CGFloat) {
            var tranform = CGAffineTransform(rotationAngle: rotation)
            let pillPath = CGPath(roundedRect: pillFrame, cornerWidth: pillFrame.height / 2 , cornerHeight: pillFrame.height / 2, transform: &tranform)
            context.addPath(pillPath)
            context.setFillColor(color)
            context.fillPath()
        }
        
        drawPill(color: UIColor.cyan.cgColor, rotation: 0)
        drawPill(color: UIColor.systemPink.cgColor, rotation: 2 * .pi / 3)
        drawPill(color: UIColor.systemYellow.cgColor, rotation: -2 * .pi / 3)
    }
    

}
