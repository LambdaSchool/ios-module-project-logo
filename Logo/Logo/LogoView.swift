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

    let offset: CGFloat = 10.0
    let debug: CGFloat = 0.0
    let lambdaRed = CGColor(srgbRed: 170.0/255, green: 42.0/255, blue: 56.0/255, alpha: 1.0)

    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
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

        let scaleFactor: CGFloat = (rect.width - 20.0) / 100.0
        
        // Top rectangle
        var rect = CGRect(x: 10, y: 10,
                          width: 100 * scaleFactor,
                          height: 78 * scaleFactor)
        context.addRect(rect)
        context.setFillColor(lambdaRed)
        context.fillPath()

        // Bottom Triangle
        var startPoint  = CGPoint(x: offset,
                                  y: offset + ((77.9 + debug) * scaleFactor))
        var nextPoint   = CGPoint(x: offset + (50.0 * scaleFactor),
                                  y: offset + ((77.9 + 37 + debug) * scaleFactor))
        var endPoint    = CGPoint(x: offset + (100.0 * scaleFactor),
                                  y: offset + ((77.9 + debug) * scaleFactor))
        context.beginPath()
        context.move(to: startPoint)
        context.setFillColor(lambdaRed)
        context.addLine(to: nextPoint)
        context.addLine(to: endPoint)
        context.closePath()
        context.fillPath()

        // White Triangle
        startPoint  = CGPoint(x: offset + (22 * scaleFactor),
                              y: offset + (65 * scaleFactor))
        nextPoint   = CGPoint(x: offset + (50 * scaleFactor),
                              y: offset + (15 * scaleFactor))
        endPoint    = CGPoint(x: offset + (78 * scaleFactor),
                              y: offset + (65 * scaleFactor))
        context.beginPath()
        context.move(to: startPoint)
        context.setFillColor(UIColor.white.cgColor)
        context.addLine(to: nextPoint)
        context.addLine(to: endPoint)
        context.closePath()
        context.fillPath()

        // Punch Out Triangle
        startPoint  = CGPoint(x: offset + (35 * scaleFactor),
                              y: offset + (66 * scaleFactor))
        nextPoint   = CGPoint(x: offset + (50 * scaleFactor),
                              y: offset + (40 * scaleFactor))
        endPoint    = CGPoint(x: offset + (65 * scaleFactor),
                              y: offset + (66 * scaleFactor))
        context.beginPath()
        context.move(to: startPoint)
        context.setFillColor(lambdaRed)
        context.addLine(to: nextPoint)
        context.addLine(to: endPoint)
        context.closePath()
        context.fillPath()

        // Punch Out Square for tip of White Triangle
        rect = CGRect(x: offset + (35 * scaleFactor),
                      y: offset + (10 * scaleFactor),
                      width: (30 * scaleFactor),
                      height: (15 * scaleFactor))
        context.addRect(rect)
//        context.setFillColor(UIColor.blue.cgColor)
        context.setFillColor(lambdaRed)
        context.fillPath()
    }
}
