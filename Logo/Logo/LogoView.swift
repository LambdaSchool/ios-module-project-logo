//
//  LogoView.swift
//  Logo
//
//  Created by Mark Gerrior on 3/18/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable // Interface Builder will render the view directly in the canvas
class LogoView: UIView {

    let offset = 10.0
    let debug = 0.0
    let lambdaRed = CGColor(srgbRed: 170.0/255, green: 42.0/255, blue: 56.0/255, alpha: 1.0)

    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        backgroundColor = UIColor.clear
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        /// Note: elements are drawn on the the screen from back to front
        /// in the order they appear below.
        
        // Get a dot on the screen for proof of concept
//        let smallDotRadius: CGFloat = 12.0
//        let smallCircle = CGRect(x: rect.midX - smallDotRadius,
//                                 y: rect.midY - smallDotRadius,
//                                 width: smallDotRadius * 2,
//                                 height: smallDotRadius * 2)
//        context.addEllipse(in: smallCircle)
//        context.setFillColor(UIColor.blue.cgColor)
//        context.fillPath()
        
        // Top rectangle
        var rect = CGRect(x: 10, y: 10, width: 100, height: 78)
        context.addRect(rect)
        context.setFillColor(lambdaRed)
        context.fillPath()

        // Bottom Triangle
        var startPoint  = CGPoint(x: offset,        y: offset + 78 + debug)
        var nextPoint   = CGPoint(x: offset +  50,  y: offset + 78 + 37 + debug)
        var endPoint    = CGPoint(x: offset + 100,  y: offset + 78 + debug)
        context.beginPath()
        context.move(to: startPoint)
        context.setFillColor(lambdaRed)
        context.addLine(to: nextPoint)
        context.addLine(to: endPoint)
        context.closePath()
        context.fillPath()

        // White Triangle
        startPoint  = CGPoint(x: offset + 22,  y: offset + 65)
        nextPoint   = CGPoint(x: offset + 50,  y: offset + 15)
        endPoint    = CGPoint(x: offset + 78,  y: offset + 65)
        context.beginPath()
        context.move(to: startPoint)
        context.setFillColor(UIColor.white.cgColor)
        context.addLine(to: nextPoint)
        context.addLine(to: endPoint)
        context.closePath()
        context.fillPath()

        // Punch Out Triangle
        startPoint  = CGPoint(x: offset + 35,  y: offset + 65)
        nextPoint   = CGPoint(x: offset + 50,  y: offset + 40)
        endPoint    = CGPoint(x: offset + 65,  y: offset + 65)
        context.beginPath()
        context.move(to: startPoint)
        context.setFillColor(lambdaRed)
        context.addLine(to: nextPoint)
        context.addLine(to: endPoint)
        context.closePath()
        context.fillPath()

        // Punch Out Square for tip of White Triangle
        rect = CGRect(x: offset + 35, y: offset + 10, width: 30, height: 15)
        context.addRect(rect)
//        context.setFillColor(UIColor.blue.cgColor)
        context.setFillColor(lambdaRed)
        context.fillPath()
    }
}
