//
//  LogoView.swift
//  PlayStationLogo
//
//  Created by Ufuk Türközü on 19.02.20.
//  Copyright © 2020 Ufuk Türközü. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class LogoView: UIView {
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        
        if let context = UIGraphicsGetCurrentContext() {
            
            // Red View
            context.setStrokeColor(UIColor.systemRed.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: center.x - 10, y: center.y + 50))
            context.setLineWidth(4)
            context.addLine(to: CGPoint(x: center.x - 10, y: center.y - 50))
            context.addLine(to: CGPoint(x: center.x + 10, y: center.y - 40))
            context.addLine(to: CGPoint(x: center.x + 10, y: center.y + 60))
            context.addLine(to: CGPoint(x: center.x - 10, y: center.y + 50))
            context.strokePath()
            
            // Yellow Circle
            context.setStrokeColor(UIColor.systemYellow.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: center.x + 20, y: center.y - 36))
            context.setLineWidth(4)
            // context.addLine(to: CGPoint(x: center.x + 20, y: center.y + 20))
            context.addCurve(to: CGPoint(x: center.x + 20, y: center.y + 6),
                             control1: CGPoint(x: center.x + 50, y: center.y - 22 ),
                             control2: CGPoint(x: center.x + 50, y: center.y + 14))
            context.strokePath()
            
            // Yellow Line
            context.setStrokeColor(UIColor.systemYellow.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: center.x + 20, y: center.y - 36))
            context.setLineWidth(4)
            context.addLine(to: CGPoint(x: center.x + 20, y: center.y + 6))
            context.strokePath()
            
            // Blue Circle
            context.setStrokeColor(UIColor.systemBlue.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: center.x + 20, y: center.y + 60))
            context.setLineWidth(4)
            // context.addLine(to: CGPoint(x: center.x + 20, y: center.y + 20))
            context.addCurve(to: CGPoint(x: center.x + 20, y: center.y + 20),
                             control1: CGPoint(x: center.x + 106, y: center.y + 26),
                             control2: CGPoint(x: center.x + 56, y: center.y - 4))
            context.strokePath()
            
            // Blue Line
            context.setStrokeColor(UIColor.systemBlue.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: center.x + 20, y: center.y + 60))
            context.setLineWidth(4)
            context.addLine(to: CGPoint(x: center.x + 20, y: center.y + 20))
            context.strokePath()
            
            // Green Circle
            context.setStrokeColor(UIColor.systemGreen.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: center.x - 20, y: center.y + 46))
            context.setLineWidth(4)
            // context.addLine(to: CGPoint(x: center.x + 20, y: center.y + 20))
            context.addCurve(to: CGPoint(x: center.x - 20, y: center.y + 6),
                             control1: CGPoint(x: center.x - 50, y: center.y + 54),
                             control2: CGPoint(x: center.x - 85, y: center.y + 26))
            context.strokePath()
            
            // Green Line
            context.setStrokeColor(UIColor.systemGreen.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: center.x - 20, y: center.y + 46))
            context.setLineWidth(4)
            context.addLine(to: CGPoint(x: center.x - 20, y: center.y + 6))
            context.strokePath()
            
        }
    }
}
