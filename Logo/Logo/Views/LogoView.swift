//
//  LogoView.swift
//  Logo
//
//  Created by Lambda_School_loaner_226 on 4/14/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {
    
    let logoView = UIView()
    
    private let bgColor = UIColor.black
    private let foreColor = UIColor.white
    private let outlineWidth: CGFloat = 3.0

    override init(frame: CGRect) {
        super.init(frame: frame)
        logoView.contentMode = .scaleToFill
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        logoView.contentMode = .scaleToFill
    }
    
    override func draw(_ rect: CGRect) {
        
        if let logo = UIGraphicsGetCurrentContext() {
            
            // Left side of leaf
            logo.move(to: CGPoint(x: 200, y: 0))
            logo.addQuadCurve(to: CGPoint(x: 150, y: 60), control: CGPoint(x: 145, y: 10))
            logo.setStrokeColor(bgColor.cgColor)
            logo.setLineWidth(outlineWidth)
            logo.strokePath()
            
            // Right side of leaf
            logo.move(to: CGPoint(x: 200, y: 0))
            logo.addQuadCurve(to: CGPoint(x: 150, y: 60), control: CGPoint(x: 200, y: 50))
            logo.setStrokeColor(bgColor.cgColor)
            logo.setLineWidth(outlineWidth)
            logo.strokePath()
            
            // Top left curve
            logo.move(to: CGPoint(x: 150, y: 75))
            logo.addQuadCurve(to: CGPoint(x: 45, y: 80), control: CGPoint(x: 75, y: 35))
            logo.setStrokeColor(bgColor.cgColor)
            logo.setLineWidth(outlineWidth)
            logo.strokePath()
            
            // Left side
            logo.move(to: CGPoint(x: 45, y: 80))
            logo.addQuadCurve(to: CGPoint(x: 85, y: 250), control: CGPoint(x: 0, y: 140))
            logo.setStrokeColor(bgColor.cgColor)
            logo.setLineWidth(outlineWidth)
            logo.strokePath()
            
            // Bottom Left curve
            logo.move(to: CGPoint(x: 85, y: 250))
            logo.addQuadCurve(to: CGPoint(x: 150, y: 250), control: CGPoint(x: 110, y: 270))
            logo.setStrokeColor(bgColor.cgColor)
            logo.setLineWidth(outlineWidth)
            logo.strokePath()
            
            // Bottom Right curve
            logo.move(to: CGPoint(x: 150, y: 250))
            logo.addQuadCurve(to: CGPoint(x: 250, y: 200), control: CGPoint(x: 220, y: 280))
            logo.setStrokeColor(bgColor.cgColor)
            logo.setLineWidth(outlineWidth)
            logo.strokePath()
            
            // Bite
            logo.move(to: CGPoint(x: 250, y: 200))
            logo.addQuadCurve(to: CGPoint(x: 250, y: 100), control: CGPoint(x: 190, y: 150))
            logo.setStrokeColor(bgColor.cgColor)
            logo.setLineWidth(outlineWidth)
            logo.strokePath()
            
            // Top Right
            logo.move(to: CGPoint(x: 250, y: 100))
            logo.addQuadCurve(to: CGPoint(x: 150, y: 75), control: CGPoint(x: 240, y: 35))
            logo.setStrokeColor(bgColor.cgColor)
            logo.setLineWidth(outlineWidth)
            logo.strokePath()
            
            
            
        }
        
    }
    
    
    
    
}
