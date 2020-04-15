//
//  LeafView.swift
//  LogoDesign
//
//  Created by Hunter Oppel on 4/15/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

import UIKit

@IBDesignable
class LeafView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            // First Large Curve
            context.move(to: CGPoint(x: rect.width/8, y: (2*rect.height)/3))
            context.setFillColor(UIColor.green.cgColor)
            context.setLineWidth(3)
            context.addCurve(to: CGPoint(x: (3*rect.width)/5, y: rect.height/4),
                             control1: CGPoint(x: rect.midX/2, y: rect.height/1.75),
                             control2: CGPoint(x: rect.width/4, y: rect.midY/8))
            
            // Stem
            context.addQuadCurve(to: CGPoint(x: (7*rect.width)/10, y: rect.height/8),
                                 control: CGPoint(x: (6*rect.width)/9, y: rect.height/4))
            
            context.addLine(to: CGPoint(x: (8*rect.width)/10, y: rect.height/5))
            
            context.addLine(to: CGPoint(x: (8*rect.width)/12, y: (3*rect.height)/10))
            
            // Second Large Curge
            
            context.addCurve(to: CGPoint(x: rect.width/8, y: (2*rect.height)/3),
                             control1: CGPoint(x: rect.width, y: rect.midY),
                             control2: CGPoint(x: rect.midX, y: (9*rect.height)/10))
            
            context.fillPath()
            
            // Cutout Section
            
            let cutoutRadius: CGFloat = rect.midX/5
            let cutoutCircle = CGRect(x: rect.midX,
                                      y: (3*rect.height)/5,
                                      width: 2*cutoutRadius,
                                      height: 2*cutoutRadius)
            context.addEllipse(in: cutoutCircle)
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
        }
    }
}
