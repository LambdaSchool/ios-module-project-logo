//
//  LogoView.swift
//  Logo
//
//  Created by Vici Shaweddy on 9/24/19.
//  Copyright © 2019 Vici Shaweddy. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {
    
    private let viewBgColor = UIColor.green

    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {

            let topLeft = CGPoint(x: rect.origin.x, y: rect.origin.y)
            let topRight = CGPoint(x: rect.midX, y: rect.origin.y)
            let bottomLeft = CGPoint(x: rect.origin.x, y: rect.midX)
            let bottomCenter = CGPoint(x: rect.midX - (rect.midX / 2), y: rect.midX + rect.midX / 4)
            let bottomRight = CGPoint(x: rect.midX, y: rect.midX)

            context.move(to: topLeft)
            context.addLine(to: topRight)
            context.addLine(to: bottomRight)
            context.addLine(to: bottomCenter)
            context.addLine(to: bottomLeft)
            context.addLine(to: topLeft)
            context.setFillColor(UIColor.green.cgColor)
            context.fillPath()


        }
    }
}

