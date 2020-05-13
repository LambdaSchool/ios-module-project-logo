//
//  LogoView.swift
//  Logo
//
//  Created by Kelson Hartle on 5/12/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//
import Foundation
import UIKit
import CoreGraphics

@IBDesignable
class LogoView: UIView {

    //MARK: - Properties
    private var targetRed = UIColor.red
    private var centerCircleColor = UIColor.white
    let targetBorderColor = UIColor.white
    let borderWidth: CGFloat = 30.0

    
    //MARK: - Overide (Required Functions)

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        backgroundColor = UIColor.clear
    }
    
    //MARK: - Draw Function
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let clockCenter = CGPoint(x: rect.size.width / 2.0,
            y: rect.size.height / 2.0)
            let rightSide = CGPoint(x: rect.size.width / 4.0, y: rect.size.height / 3.0)
            
            context.addRect(CGRect(x: rect.origin.x, y: rect.origin.y, width: 240, height: 240))
            context.setFillColor(targetRed.cgColor)
            context.fillPath()
            
            context.addEllipse(in: rect)
            context.setFillColor(targetRed.cgColor)
            context.fillPath()
            
            context.addEllipse(in: CGRect(x: rect.origin.x + borderWidth / 10, y: rect.origin.y + borderWidth / 2, width: rect.size.width, height: rect.size.height - borderWidth))
            context.setLineWidth(borderWidth)
            context.setStrokeColor(targetBorderColor.cgColor)
            context.strokePath()
            
            let targetCircle: CGFloat = 60.0
            let centerCircle = CGRect(x: clockCenter.x - targetCircle, y: clockCenter.y - targetCircle, width: 2 * targetCircle, height: 2 * targetCircle)
            
            context.addEllipse(in: centerCircle)
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
            
//            context.addEllipse(in: CGRect(x: rect.origin.x + 60, y: rect.origin.y + 73, width: 120, height: 100))
//            context.setFillColor(centerCircle.cgColor)
//            context.fillPath()
            
            context.setStrokeColor(UIColor.blue.cgColor)
            context.beginPath()
            context.move(to: clockCenter)
            context.addLine(to: rightSide)
        }
    }
}
