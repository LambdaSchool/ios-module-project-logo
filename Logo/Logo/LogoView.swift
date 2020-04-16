//
//  LogoView.swift
//  Logo
//
//  Created by Harmony Radley on 4/16/20.
//  Copyright © 2020 Harmony Radley. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class MyLogo: UIView {
    
    private let alienBgColor = UIColor.green
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .clear
    }
    
    
    // 1. Rotate eyes
    // 2. Curve buttom half of circle
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            context.addEllipse(in: rect)
            context.setFillColor(alienBgColor.cgColor)
            context.fillPath()
            
            
            // draw from too
            
            // Left Alien Eye
            context.addEllipse(in: CGRect(x: 70, y: 130, width: 80, height: 50))
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
            
            
            // Right Alien Eye
            context.addEllipse(in: CGRect(x: 170, y: 130, width: 80, height: 50))
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
           
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
            
            // mouth
            context.addRect(CGRect(x: 115, y: 190, width: 90, height: 30))
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
            // Left tooth
            context.addRect(CGRect(x: 115, y: 190, width: 20, height: 10))
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
            
            
            // Right tooth
            context.addRect(CGRect(x: 180, y: 190, width: 20, height: 10))
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
            
            // right pupil
            context.addEllipse(in: CGRect(x: 200, y: 140, width: 20, height: 20))
                       context.setFillColor(UIColor.white.cgColor)
                       context.fillPath()
            
            // left pupil
            context.addEllipse(in: CGRect(x: 100, y: 140, width: 20, height: 20))
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
            
            
            // eyebrow left
            context.addRect(CGRect(x: 180, y: 110, width: 90, height: 10))
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
            // right eyebrow
            context.addRect(CGRect(x: 180, y: 110, width: 90, height: 10))
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
            context.addRect(CGRect(x: 50, y: 110, width: 90, height: 10))
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
        }
    }
}
