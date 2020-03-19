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
    private let rectRatio: CGFloat = 2.75
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.translateBy(x: rect.midX, y: rect.height * 0.6)
        context.setBlendMode(.multiply)
        
        let pillWidth = rect.width * 0.7
        let pillSize = CGSize(width: pillWidth, height: pillWidth / rectRatio)
        let pillOrigin = CGPoint(x: 0 - pillSize.width / 2, y: 0 )
        let pillFrame = CGRect(origin: pillOrigin, size: pillSize)
        let cornerRadius = pillFrame.height / 2
        
        func drawPill(color: CGColor, rotation: CGFloat) {
            var tranform = CGAffineTransform(rotationAngle: rotation)
            let pillPath = CGPath(roundedRect: pillFrame, cornerWidth: cornerRadius , cornerHeight: cornerRadius, transform: &tranform)
            context.addPath(pillPath)
            context.setFillColor(color)
            context.fillPath()
        }
        
        drawPill(color: cyan, rotation: 0)
        drawPill(color: pink, rotation: 2 * .pi / 3)
        drawPill(color: yellow, rotation: -2 * .pi / 3)
    }
    

}
