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
    
    
    override func draw(_ rect: CGRect) {
         
        if let context = UIGraphicsGetCurrentContext() {
            
            context.addEllipse(in: rect)
            context.setFillColor(alienBgColor.cgColor)
            context.fillPath()
            
            // Left Alien Eye
            context.addEllipse(in: CGRect(x: 80, y: 130, width: 75, height: 50))
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
            // Right Alien Eye
            
            context.addEllipse(in: CGRect(x: 180, y: 130, width: 75, height: 50))
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
    }
}
