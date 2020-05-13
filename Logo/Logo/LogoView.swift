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
    
    struct LambdaLine {
        let width: CGFloat
        
        let length: CGFloat
        let color: UIColor
    }

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    private var lambdaColor = UIColor.red
    private var centerCircle = UIColor.white
    let borderColor = UIColor.white
    let borderWidth: CGFloat = 30.0

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let clockCenter = CGPoint(x: rect.size.width / 2.0,
            y: rect.size.height / 2.0)
            
            context.addRect(CGRect(x: rect.origin.x, y: rect.origin.y, width: 240, height: 240))
            context.setFillColor(lambdaColor.cgColor)
            context.fillPath()
            
            context.addEllipse(in: rect)
            context.setFillColor(lambdaColor.cgColor)
            context.fillPath()
            
            context.addEllipse(in: CGRect(x: rect.origin.x + borderWidth / 10, y: rect.origin.y + borderWidth / 2, width: rect.size.width, height: rect.size.height - borderWidth))
            context.setLineWidth(borderWidth)
            context.setStrokeColor(borderColor.cgColor)
            context.strokePath()
            
            context.addEllipse(in: CGRect(x: rect.origin.x + 60, y: rect.origin.y + 73, width: 120, height: 100))
            context.setFillColor(centerCircle.cgColor)
            context.fillPath()
            
            
    
            //origin is x,y
            
            
        }
    }
}
