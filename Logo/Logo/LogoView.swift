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

    private let cyan = CGColor(srgbRed: 11/255, green: 232/255, blue: 230/255, alpha: 1)
    private let pink = CGColor(srgbRed: 255/255, green: 77/255, blue: 144/255, alpha: 1)
    private let yellow = CGColor(srgbRed: 255/255, green: 175/255, blue: 22/255, alpha: 1)
    
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.translateBy(x: rect.midX, y: rect.midY)
        context.setBlendMode(.multiply)
        
        let pillSize = CGSize(width: rect.width / 2, height: rect.width / 5.5)
        let pillOrigin = CGPoint(x: 0 - pillSize.width / 2, y: 0 )
        let pillFrame = CGRect(origin: pillOrigin, size: pillSize)
        
        func drawPill(color: CGColor, rotation: CGFloat) {
            var tranform = CGAffineTransform(rotationAngle: rotation)
            let pillPath = CGPath(roundedRect: pillFrame, cornerWidth: pillFrame.height / 2 , cornerHeight: pillFrame.height / 2, transform: &tranform)
            context.addPath(pillPath)
            context.setFillColor(color)
            context.fillPath()
        }
        
        drawPill(color: cyan, rotation: 0)
        drawPill(color: pink, rotation: 2 * .pi / 3)
        drawPill(color: yellow, rotation: -2 * .pi / 3)
    }
    

}
