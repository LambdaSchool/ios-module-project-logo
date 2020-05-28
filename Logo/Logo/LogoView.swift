//
//  LogoView.swift
//  Logo
//
//  Created by Ian French on 5/28/20.
//  Copyright © 2020 Ian French. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable
class LogoView: UIView {
    
    // MARK: - Properties
    private let logoBackgroundColor = UIColor.init(red: 0.25, green: 0.70, blue: 0.10, alpha: 1.0)
    private let logoColor = UIColor.black
    private let circleColor = UIColor.init(red: 0.85, green: 0.20, blue: 0.10, alpha: 1.0)
    private let radius: CGFloat = 25.0
    private let circleColorInner = UIColor.white
   
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Draw
    
    override func draw(_ rect: CGRect) {
        
        let path = CGPath(roundedRect: rect, cornerWidth: 8.0, cornerHeight: 8.0, transform: nil)
        
    
        
        let outsideLeftCorner = CGPoint(x: rect.minX, y: rect.maxY * 0.20)
        let outsideRightCorner = CGPoint(x: rect.size.width, y: rect.maxY * 0.20)
        let pointCorner = CGPoint(x: rect.midX, y: rect.midY * 2.0)
        
        let insideLeftCorner = CGPoint(x: rect.maxX * 0.30, y: rect.maxY * 0.41)
        let insideRightCorner = CGPoint(x: rect.maxX * 0.70, y: rect.maxY * 0.41)
        let insideTop = CGPoint(x: rect.midX, y: rect.maxY / 4.2)
        
        let innerTriangleLeft = CGPoint(x: rect.maxX * 0.35, y: rect.maxY * 0.32)
        let innerTriangleRight = CGPoint(x: rect.maxX * 0.65, y: rect.maxY * 0.32)
        let innerBottom = CGPoint(x: rect.midX, y: rect.maxY / 2.4)
        
        
        if let context = UIGraphicsGetCurrentContext() {
            
            // draw background
            context.beginPath()
            context.addPath(path)
            context.setFillColor(logoColor.cgColor)
            context.fillPath()
            
            // draw logo outer green triangle
    
            context.beginPath()
            context.move(to: outsideLeftCorner)
            context.addLine(to: pointCorner)
            context.addLine(to: outsideRightCorner)
            context.setFillColor(logoBackgroundColor.cgColor)
            context.fillPath()
  
            // draw logo inner  triangle
            
            context.beginPath()
            context.move(to: insideLeftCorner)
            context.addLine(to: insideRightCorner)
            context.addLine(to: insideTop)
            context.addLine(to: insideLeftCorner)
            context.setFillColor(logoColor.cgColor)
            context.fillPath()
            
            // draw inverted inner green triangle
      
            context.beginPath()
            context.move(to: innerTriangleLeft)
            context.addLine(to: innerTriangleRight)
            context.addLine(to: innerBottom)
            context.addLine(to: innerTriangleLeft)
            context.setFillColor(logoBackgroundColor.cgColor)
            context.fillPath()
        
            // add lower ellipse
            
            context.addEllipse(in: CGRect(x: rect.size.width / 2 - radius, y: rect.size.width / 2 - radius/2 , width: radius * 2, height: radius * 4))
                  context.setFillColor(circleColor.cgColor)
                  context.fillPath()
            
            
             //add interior ellipse
                 context.addEllipse(in: CGRect(x: rect.size.width / 2 - radius/2, y: rect.size.width / 2 + radius/2 , width: radius, height: radius * 2))
                       context.setFillColor(circleColorInner.cgColor)
                       context.fillPath()
            
            
        }
    }
    
}




