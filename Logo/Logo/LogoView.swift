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

    let debug = 1.0
    
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
        let rect = CGRect(x: 10, y: 10, width: 100, height: 78)
        context.addRect(rect)
        context.setFillColor(UIColor.red.cgColor)
        context.fillPath()

        // Bottom Triangle
        let offset = 10.0
        
        let startPoint  = CGPoint(x: offset,        y: offset + 78 + debug)
        let nextPoint   = CGPoint(x: offset +  50,  y: offset + 78 + 37 + debug)
        let endPoint    = CGPoint(x: offset + 100,  y: offset + 78 + debug)
        context.beginPath()
        context.move(to: startPoint)
        context.setFillColor(UIColor.red.cgColor)
        context.addLine(to: nextPoint)
        context.addLine(to: endPoint)
        context.closePath()
        context.fillPath()

        
//        context.setStrokeColor(hours.color.cgColor)
//        context.beginPath()
//        context.move(to: clockCenter)
//        context.setLineWidth(hours.width)
//        context.addLine(to: hourHandEndPoint)
//        context.strokePath()
//
//        path.move(to: startPoint)
//        path.addLine(to: nextPoint)
//        path.addLine(to: endPoint)
//        path.closeSubpath()

    }
}
