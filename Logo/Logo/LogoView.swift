//
//  LogoView.swift
//  Logo
//
//  Created by Nichole Davidson on 3/18/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {
    
    // MARK: - Properties
    private let logoBgColor = UIColor.init(red: 0.75, green: 0.10, blue: 0.20, alpha: 1.0)
    private let letterColor = UIColor.white
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Draw
    
    override func draw(_ rect: CGRect) {
        
        let roundedRectPath = CGPath(roundedRect: rect, cornerWidth: 8.0, cornerHeight: 8.0, transform: nil)
        let path = CGMutablePath()
        let leftCorner = CGPoint(x: rect.minX, y: rect.maxY * 0.65)
        let rightCorner = CGPoint(x: rect.size.width, y: rect.maxY * 0.65)
        let topLeftCorner = CGPoint(x: rect.minX, y: rect.minY)
        let topRightCorner = CGPoint(x: rect.size.width, y: rect.minY)
        let pointCorner = CGPoint(x: rect.midX, y: rect.midY * 2.0)
        
        let letterLeftCorner = CGPoint(x: rect.maxX * 0.20, y: rect.maxY * 0.58)
        let letterRightCorner = CGPoint(x: rect.maxX * 0.80, y: rect.maxY * 0.58)
        let letterTopPoint = CGPoint(x: rect.midX, y: rect.maxY / 6.5)
        
        let innerLeft = CGPoint(x: rect.maxX * 0.35, y: rect.maxY * 0.58)
        let innerRight = CGPoint(x: rect.maxX * 0.65, y: rect.maxY * 0.58)
        let innerTop = CGPoint(x: rect.midX, y: rect.maxY / 2.8)
        
        let topLetterRect = CGRect(x: rect.midX * 0.50, y: rect.maxY / 6.5, width: rect.maxX * 0.50, height: rect.maxY * 0.07)
        
        if let context = UIGraphicsGetCurrentContext() {
            
            // logo background
            context.beginPath()
            context.addPath(roundedRectPath)
            context.setFillColor(letterColor.cgColor)
            context.fillPath()
            
            // logo bottom point
            
            context.beginPath()
            context.move(to: leftCorner)
            context.addLine(to: pointCorner)
            context.addLine(to: rightCorner)
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
            
            // logo top portion
            context.beginPath()
            context.move(to: leftCorner)
            context.addLine(to: topLeftCorner)
            context.addLine(to: topRightCorner)
            context.addLine(to: rightCorner)
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
            
            // lambda letter - outer
            
            context.beginPath()
            context.move(to: letterLeftCorner)
            context.addLine(to: letterRightCorner)
            context.addLine(to: letterTopPoint)
            context.addLine(to: letterLeftCorner)
            context.setFillColor(letterColor.cgColor)
            context.fillPath()
            
            // lambda letter inner
            
            context.beginPath()
            context.move(to: innerLeft)
            context.addLine(to: innerRight)
            context.addLine(to: innerTop)
            context.addLine(to: innerLeft)
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
            
            // lambda letter top
            
            context.beginPath()
            context.addRect(topLetterRect)
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
        }
    }
    
}
