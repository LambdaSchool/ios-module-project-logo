//
//  LogoView.swift
//  Logo
//
//  Created by Rob Vance on 5/25/20.
//  Copyright © 2020 Robs Creations. All rights reserved.
//
import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {

    private let pacmanBodyColor = UIColor.yellow
    private let pacmanEyeColor = UIColor.black
    private let pacmanMouthColor = UIColor.black
    private let borderWidth: CGFloat = 30.0
    
    private func mouthEndPoint(with radianValue: Float, and handLength: CGFloat) -> CGPoint {
           return CGPoint(x: handLength * CGFloat(cosf(radianValue)) + frame.size.width / 2.0,
                          y: handLength * CGFloat(sinf(radianValue)) + frame.size.height / 2.0)
       }
    
    private var topOfMouthEndPoint: CGPoint {
    let mouthAsRadians = Float(Double(9) / 60.0 * 2.0 * Double.pi - Double.pi / 2)
        let handLength = CGFloat(frame.size.width / 2.0)
    return mouthEndPoint(with: mouthAsRadians, and: handLength)
    }
    private var bottomOfMouthEndPoint: CGPoint {
        let mouthAsRadians = Float(Double(20) / 60 * 2.0 * Double.pi - Double.pi / 2)
        let handLength = CGFloat(frame.size.width / 2.0)
        return mouthEndPoint(with: mouthAsRadians, and: handLength)
    }
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        if let context = UIGraphicsGetCurrentContext() {
        
        
        let centerOfPacman = CGPoint(x: rect.size.width / 2, y: rect.size.height / 2)
        
        
        
        
            context.addEllipse(in: rect)
            context.setFillColor(pacmanBodyColor.cgColor)
            context.fillPath()
            
            // Mouth
            // don't use strokes for filling in color SIR!!!
//            context.setStrokeColor(pacmanMouthColor.cgColor)
            
            context.setFillColor(UIColor.black.cgColor)
            context.beginPath()
            context.move(to: centerOfPacman)
            context.addLine(to: bottomOfMouthEndPoint)
            context.move(to: centerOfPacman)
            context.addLine(to: topOfMouthEndPoint)
            context.addCurve(to: bottomOfMouthEndPoint,
                             control1: CGPoint(x: 291, y: 60),
                             control2: CGPoint(x: 357, y: 145))
            context.setLineWidth(5)
//            context.strokePath()
            context.fillPath()

            
            // Eye
            
            let eyeRadius: CGFloat = 16.0
            let eyeCircle = CGRect(x: centerOfPacman.x + 5, y: 60, width: eyeRadius * 2, height: eyeRadius * 2)
            context.addEllipse(in: eyeCircle)
            context.setFillColor(pacmanEyeColor.cgColor)
            context.fillPath()
            
            
            
        }
    }
    

}
