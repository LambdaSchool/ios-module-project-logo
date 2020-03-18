//
//  LogoView.swift
//  LOGO
//
//  Created by Lydia Zhang on 3/18/20.
//  Copyright © 2020 Lydia Zhang. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable
class LogoView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    override func draw(_ rect: CGRect) {
        
        
        if let context = UIGraphicsGetCurrentContext() {
            context.move(to: CGPoint(x: rect.width*0.5, y: rect.height*0.5 - 80))
            context.addArc(center: CGPoint(x: rect.width*0.5, y: rect.height*0.5), radius: 80, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: true)
            context.setFillColor(CGColor(srgbRed: 0.39, green: 0.82, blue: 0.96, alpha: 0.5))
            context.fillPath()
            
            context.move(to: CGPoint(x: rect.width*0.5, y: rect.height*0.5 - 80))
            context.addArc(center: CGPoint(x: rect.width*0.5, y: rect.height*0.5), radius: 80, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi / 2, clockwise: false)
            context.setFillColor(CGColor(srgbRed: 1, green: 1, blue: 1, alpha: 0.5))
            context.fillPath()
            
            context.move(to: CGPoint(x: rect.width*0.5, y: rect.height*0.5))
            context.addArc(center: CGPoint(x: rect.width*0.5, y: rect.height*0.5), radius: 40, startAngle: 0, endAngle: -CGFloat.pi * 3/2, clockwise: false)
            context.setFillColor(CGColor(srgbRed: 1, green: 0.65, blue: 0.31, alpha: 0.5))
            context.fillPath()
             
            context.move(to: CGPoint(x: rect.width*0.5, y: rect.height*0.5))
            context.addArc(center: CGPoint(x: rect.width*0.5, y: rect.height*0.5), radius: 40, startAngle: -CGFloat.pi, endAngle: -CGFloat.pi * 3/2, clockwise: true)
            context.setFillColor(CGColor(srgbRed: 1, green: 0.42, blue: 0.42, alpha: 0.5))
            context.fillPath()
             
        }
    
    }
    
    /*Line(to: CGPoint(x: rect.width/3, y: rect.height/2))
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
