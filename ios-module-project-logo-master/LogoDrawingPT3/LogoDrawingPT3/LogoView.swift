//
//  LogoView.swift
//  LogoDrawingPT3
//
//  Created by Jessie Ann Griffin on 11/19/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {
    
    // MARK: Properties
    private let logoBgColor = UIColor(red: 187/255, green: 19/255, blue: 52/255, alpha: 1)
    private let lineColor = UIColor.white
    private let lineWidth: CGFloat = 20.0
    private let frameWidth: CGFloat = 240.0
    private let corners: CGFloat = 12.0
    
    
    // MARK: View Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
        self.layer.cornerRadius = corners
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = UIColor.clear
        self.layer.cornerRadius = corners
    }
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            let shapeBackground = CGRect(x: 0.0, y: 0.0, width: frameWidth, height: frameWidth)
//            let leftCover = CGRect(origin: CGPoint(x: 0.33 * frameWidth, y: 0.66 * frameWidth), size: CGSize(width: frameWidth / 2.0, height: frameWidth / 2.0))
//            leftCover.applying(CGAffineTransform(rotationAngle: CGFloat.pi / 4.0))
            
            // Logo Shape
//            context.addRect(shapeBackground)
//            context.setFillColor(logoBgColor.cgColor)
//            context.fillPath()
            
//            context.addRect(leftCover.applying(CGAffineTransform(rotationAngle: -CGFloat.pi / 4.0)))
//            context.setFillColor(UIColor.blue.cgColor)
//            context.fillPath()
            
//            context.addArc(center: CGPoint(x: 6.0, y: 6.0), radius: corners, startAngle: -CGFloat.pi, endAngle: CGFloat.pi / 2.0, clockwise: false)
//            context.setFillColor(UIColor.blue.cgColor)
//            context.fillPath()
            
            context.addPath(CGPath(roundedRect: shapeBackground, cornerWidth: corners, cornerHeight: corners, transform: nil))
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
            
            context.setStrokeColor(lineColor.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: 0.5 * frameWidth, y: 0.33 * frameWidth))
            context.addLine(to: CGPoint(x: 0.33 * frameWidth, y: 0.66 * frameWidth))
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.setStrokeColor(lineColor.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: 0.5 * frameWidth, y: 0.33 * frameWidth))
            context.addLine(to: CGPoint(x: 0.66 * frameWidth, y: 0.66 * frameWidth))
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.addPath(CGPath(roundedRect: CGRect(x: 0.5 * frameWidth - 12.0, y: 0.39 * frameWidth - lineWidth, width: 24.0, height: 24.0), cornerWidth: 8.0, cornerHeight: 8.0, transform: nil))
           context.setFillColor(lineColor.cgColor)
           context.fillPath()
            
            context.setStrokeColor(lineColor.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: -lineWidth, y: 0.66 * frameWidth - lineWidth))
            context.addLine(to: CGPoint(x: 0.5 * frameWidth + 0.5 * lineWidth, y: frameWidth + lineWidth))
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.setStrokeColor(lineColor.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: frameWidth + 0.5 * lineWidth, y: 0.66 * frameWidth - lineWidth))
            context.addLine(to: CGPoint(x: 0.5 * frameWidth - 0.5 * lineWidth, y: frameWidth + lineWidth))
            context.setLineWidth(lineWidth)
            context.strokePath()
            
        }
    }
}
