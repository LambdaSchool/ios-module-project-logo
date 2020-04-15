//
//  LogoView.swift
//  Logo
//
//  Created by Chad Parker on 4/14/20.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

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

    override func draw(_ rect: CGRect) {
        guard let c = UIGraphicsGetCurrentContext() else { return }
        
        // shield
        c.beginPath()
        c.move(to: CGPoint(x: rect.minX, y: rect.minY))
        c.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        c.addLine(to: CGPoint(x: rect.maxX, y: rect.height * 0.62))
        c.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        c.addLine(to: CGPoint(x: rect.minX, y: rect.height * 0.62))
        c.closePath()
        c.setFillColor(UIColor.lambdaRed.cgColor)
        c.fillPath()

        // lambda
        let xTopOffCenter: CGFloat = 0.05 * rect.width
        let xBottomOuterOffCenter: CGFloat = 0.25 * rect.width
        let xBottomInnerOffCenter: CGFloat = 0.125 * rect.width
        let yTop: CGFloat = 0.2 * rect.height
        let yInsidePeak: CGFloat = 0.33 * rect.height
        let yBottom: CGFloat = 0.55 * rect.height        
        c.beginPath()
        c.move(to: CGPoint(x: rect.midX - xBottomOuterOffCenter, y: yBottom))
        c.addLine(to: CGPoint(x: rect.midX - xTopOffCenter, y: yTop))
        c.addLine(to: CGPoint(x: rect.midX + xTopOffCenter, y: yTop))
        c.addLine(to: CGPoint(x: rect.midX + xBottomOuterOffCenter, y: yBottom))
        c.addLine(to: CGPoint(x: rect.midX + xBottomInnerOffCenter, y: yBottom))
        c.addLine(to: CGPoint(x: rect.midX, y: yInsidePeak))
        c.addLine(to: CGPoint(x: rect.midX - xBottomInnerOffCenter, y: yBottom))
        c.closePath()
        c.setFillColor(UIColor.white.cgColor)
        c.fillPath()
    }
}

extension UIColor {
    static var lambdaRed: UIColor {
        UIColor(red: 0.73, green: 0.08, blue: 0.20, alpha: 1.00)
    }
}
