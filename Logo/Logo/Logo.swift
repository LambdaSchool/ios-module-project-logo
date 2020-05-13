//
//  Logo.swift
//  Logo
//
//  Created by Dahna on 4/15/20.
//  Copyright © 2020 Dahna Buenrostro. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable
class LogoView: UIView {
   
    private let bgColor = UIColor.systemIndigo.cgColor
    private let whiteColor = UIColor.white.cgColor
    private let startColor = UIColor.systemPurple.cgColor
    private let endColor = UIColor.systemOrange.cgColor
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")

    }
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let center = CGPoint(x: rect.midX, y: rect.midY)
            
            let bgRect = CGRect(x: center.x - 100, y: center.y - 100, width: 200, height: 200)
            let bgRectRounded = CGPath(roundedRect: bgRect, cornerWidth: 30, cornerHeight: 30, transform: nil)
            context.addPath(bgRectRounded)
            context.setFillColor(bgColor)
            context.fillPath()
            
            
            
            let innerSquare = CGRect(x: center.x / 2.5, y: center.y / 2.5, width: bgRect.width - 20, height: bgRect.height - 20)
            let innerSquareRounded = CGPath(roundedRect: innerSquare, cornerWidth: 20, cornerHeight: 20, transform: nil)
            context.addPath(innerSquareRounded)
            context.setStrokeColor(whiteColor)
            context.setLineWidth(8)
            context.strokePath()
            
            context.addEllipse(in: CGRect(x: center.x / 1.7, y: center.y / 1.7, width: rect.size.width / 2.5, height: rect.size.height / 2.5))
            context.setStrokeColor(whiteColor)
            context.setLineWidth(10)
            context.strokePath()
            
            context.addEllipse(in: CGRect(x: center.x + 55, y: center.y - 70, width: rect.size.width / 15, height: rect.size.width / 15))
            context.setFillColor(whiteColor)
            context.fillPath()
           
        }
    }
}
