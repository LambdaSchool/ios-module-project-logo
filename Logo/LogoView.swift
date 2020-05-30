//
//  LogoView.swift
//  Logo
//
//  Created by Kenneth Jones on 5/28/20.
//  Copyright © 2020 Kenneth Jones. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {
    
    private let logoBgColor = UIColor(red: 185 / 255, green: 19 / 255, blue: 52 / 255, alpha: 1)
    private let squareSize = 250

    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            let redRect = CGRect(x: 0, y: 0, width: rect.width, height: rect.height)
            
            context.addRect(redRect)
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()

            let logoCenter = CGPoint(x: rect.size.width / 2.0, y: rect.size.height / 2.0)
            
            context.move(to: CGPoint(x: Int(logoCenter.x) - squareSize / 2, y: Int(logoCenter.y) - squareSize / 2))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) + squareSize / 2, y: Int(logoCenter.y) - squareSize / 2))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) + squareSize / 2, y: Int(logoCenter.y) + squareSize / 4))
            context.addLine(to: CGPoint(x: Int(logoCenter.x), y: Int(logoCenter.y) + squareSize / 2 + 15))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) - squareSize / 2, y: Int(logoCenter.y) + squareSize / 4))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) - squareSize / 2, y: Int(logoCenter.y) - squareSize / 2))
            
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
            
            context.move(to: CGPoint(x: Int(logoCenter.x) - squareSize / 2 + 30, y: Int(logoCenter.y) - squareSize / 2 + 30))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) + squareSize / 2 - 30, y: Int(logoCenter.y) - squareSize / 2 + 30))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) + squareSize / 2 - 30, y: Int(logoCenter.y) + squareSize / 4 - 15))
            context.addLine(to: CGPoint(x: Int(logoCenter.x), y: Int(logoCenter.y) + squareSize / 2 + 10 - 30))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) - squareSize / 2 + 30, y: Int(logoCenter.y) + squareSize / 4 - 15))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) - squareSize / 2 + 30, y: Int(logoCenter.y) - squareSize / 2 + 30))
            
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
            
            context.move(to: CGPoint(x: Int(logoCenter.x) - 30, y: Int(logoCenter.y) - squareSize / 2 + 50))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) + 30, y: Int(logoCenter.y) - squareSize / 2 + 50))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) + squareSize / 2 - 45, y: Int(logoCenter.y) + squareSize / 4 - 30))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) + squareSize / 2 - 85, y: Int(logoCenter.y) + squareSize / 4 - 30))
            context.addLine(to: CGPoint(x: Int(logoCenter.x), y: Int(logoCenter.y) - squareSize / 2 + 80))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) - squareSize / 2 + 85, y: Int(logoCenter.y) + squareSize / 4 - 30))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) - squareSize / 2 + 45, y: Int(logoCenter.y) + squareSize / 4 - 30))
            context.addLine(to: CGPoint(x: Int(logoCenter.x) - 30, y: Int(logoCenter.y) - squareSize / 2 + 50))
            
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
        }
    }
}
