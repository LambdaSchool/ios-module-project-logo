//
//  PhotosLogoView.swift
//  Logo
//
//  Created by Shawn Gee on 3/19/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

@IBDesignable
class PhotosLogoView: UIView {

    private let cyan = CGColor(srgbRed: 11/255, green: 232/255, blue: 230/255, alpha: 1)
    //private let pink = CGColor(srgbRed: 255/255, green: 77/255, blue: 144/255, alpha: 1)
   
    private let opacity: CGFloat = 0.8
    private lazy var lime = CGColor(srgbRed: 157/255, green: 209/255, blue: 0/255, alpha: opacity)
    private lazy var teal = CGColor(srgbRed: 0/255, green: 177/255, blue: 108/255, alpha: opacity)
    private lazy var blue = CGColor(srgbRed: 0/255, green: 87/255, blue: 216/255, alpha: opacity)
    private lazy var purple = CGColor(srgbRed: 84/255, green: 0/255, blue: 190/255, alpha: opacity)
    private lazy var pink = CGColor(srgbRed: 196/255, green: 0/255, blue: 100/255, alpha: opacity)
    private lazy var red = CGColor(srgbRed: 233/255, green: 19/255, blue: 0/255, alpha: opacity)
    private lazy var orange = CGColor(srgbRed: 238/255, green: 132/255, blue: 0/255, alpha: opacity)
    private lazy var yellow = CGColor(srgbRed: 232/255, green: 211/255, blue: 0/255, alpha: opacity)
    
    private let rectRatio: CGFloat = 1.5
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.translateBy(x: rect.midX, y: rect.midY)
        context.setBlendMode(.multiply)
        
        let pillWidth = rect.width * 0.3
        let centerSpace = pillWidth / 12
        let pillSize = CGSize(width: pillWidth, height: pillWidth / rectRatio)
        let pillOrigin = CGPoint(x: centerSpace, y: 0 - pillSize.height / 2)
        let pillFrame = CGRect(origin: pillOrigin, size: pillSize)
        let cornerRadius = pillFrame.height / 2
        
        func drawPill(color: CGColor, rotation: CGFloat) {
            var tranform = CGAffineTransform(rotationAngle: rotation)
            let pillPath = CGPath(roundedRect: pillFrame, cornerWidth: cornerRadius , cornerHeight: cornerRadius, transform: &tranform)
            context.addPath(pillPath)
            context.setFillColor(color)
            context.fillPath()
        }
        
        let eigthTurn: CGFloat = 2 * .pi / 8
        
        drawPill(color: lime, rotation: 0)
        drawPill(color: teal, rotation: eigthTurn * 1)
        drawPill(color: blue, rotation: eigthTurn * 2)
        drawPill(color: purple, rotation: eigthTurn * 3)
        drawPill(color: pink, rotation: eigthTurn * 4)
        drawPill(color: red, rotation: eigthTurn * 5)
        drawPill(color: orange, rotation: eigthTurn * 6)
        drawPill(color: yellow, rotation: eigthTurn * 7)
    }
}
