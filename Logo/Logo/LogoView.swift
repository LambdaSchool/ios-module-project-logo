//
//  LogoView.swift
//  Logo
//
//  Created by Joshua Rutkowski on 2/4/20.
//  Copyright © 2020 Josh Rutkowski. All rights reserved.
//

import UIKit




@IBDesignable
class LogoView: UIView {
    
    //MARK: - Properties
    let color = UIColor.white
    
    // MARK: - View Lifecycle
    
    override func draw(_ rect: CGRect) {
        
        // Outer rectanglle
        let rectangle = UIBezierPath(roundedRect: CGRect(x: self.frame.minX / 2.0 + 70,
                                                         y: self.frame.minY / 2.0 - 15,
                                                         width: 100,
                                                         height: 100),
                                     cornerRadius: 25)
        
        color.setStroke()
        rectangle.lineWidth = 15
        rectangle.lineJoinStyle = .round
        rectangle.stroke()
        
        // Inner circle
        let circlePath = UIBezierPath(ovalIn: CGRect(x: self.frame.minX / 2.0 + 95,
                                                     y: self.frame.minY / 2.0 + 10,
                                                     width: 50,
                                                     height: 50))
        
        color.setStroke()
        circlePath.lineWidth = 15
        circlePath.stroke()
        
        // Small circle
        let smallCirclePath = UIBezierPath(ovalIn: CGRect(x: self.frame.minX / 2.0 + 145,
                                                          y: self.frame.minY / 2.0,
                                                          width: 13,
                                                          height: 13))
        color.setFill()
        smallCirclePath.fill()
        color.setStroke()
        smallCirclePath.lineWidth = 2
        smallCirclePath.stroke()
        
        
        
        
        
    }
    
    
}
