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
    let color = UIColor.systemGray


    // MARK: - View Lifecycle
    
    
     override func draw(_ rect: CGRect) {
        
        // Outer rectanglle
        let rectangle = UIBezierPath(roundedRect: CGRect(x: rect.size.width / 2.0 - 50,
                                                         y: rect.size.width / 2.0 - 25,
                                                         width: 100,
                                                         height: 100),
                                                         cornerRadius: 30)
        color.setStroke()
        rectangle.lineWidth = 10
        rectangle.lineJoinStyle = .round
        rectangle.stroke()
        
        // Inner circle
        let circlePath = UIBezierPath(ovalIn: CGRect(x: rect.size.width / 2.0 - 25,
                                                   y: rect.size.width / 2.0,
                                                   width: 50,
                                                   height: 50))
        color.setStroke()
        circlePath.lineWidth = 10
        circlePath.stroke()
        
        // Small circle
        let smallCirclePath = UIBezierPath(ovalIn: CGRect(x: rect.size.width / 2.0 + 22,
                                                    y: rect.size.width / 2.0 - 12,
                                                    width: 13,
                                                    height: 13))
        color.setFill()
        smallCirclePath.fill()
        color.setStroke()
        smallCirclePath.lineWidth = 2
        smallCirclePath.stroke()
        
        
        
    }
    

}
