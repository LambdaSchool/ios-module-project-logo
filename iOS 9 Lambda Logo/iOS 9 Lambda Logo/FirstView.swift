//
//  FirstView.swift
//  iOS 9 Lambda Logo
//
//  Created by Alex Shillingford on 9/11/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class FirstView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            // Lambda outline
            context.move(to: CGPoint(x: (rect.width / 2) - 8, y: rect.height - 30))
            context.addLine(to: CGPoint(x: rect.width * 0.8, y: rect.height * 0.65))
            context.addLine(to: CGPoint(x: rect.width * 0.8, y: rect.height * 0.2))
            context.addLine(to: CGPoint(x: rect.width * 0.2, y: rect.height * 0.2))
            context.addLine(to: CGPoint(x: rect.width * 0.2, y: rect.height * 0.65))
            context.addLine(to: CGPoint(x: (rect.width / 2) + 8, y: rect.height - 30))
            context.setStrokeColor(UIColor.red.cgColor)
            context.setLineWidth(25)
            context.strokePath()
            
            // Lambda symbol
            
            context.move(to: CGPoint(x: rect.width / 2, y: rect.height))
            context.addLines(between: [CGPoint(x: (rect.width / 2), y: rect.height * 0.42),
                                       CGPoint(x: (rect.width / 2) + 35, y: rect.height * 0.62),
                                       CGPoint(x: (rect.width / 2) + 60, y: rect.height * 0.62),
                                       CGPoint(x: (rect.width / 2) + 15, y: rect.height * 0.37),
                                       CGPoint(x: (rect.width / 2) - 15, y: rect.height * 0.37),
                                       CGPoint(x: (rect.width / 2) - 60, y: rect.height * 0.62),
                                       CGPoint(x: (rect.width / 2) - 35, y: rect.height * 0.62)])
            context.closePath()
            context.setFillColor(UIColor.red.cgColor)
            context.setLineWidth(1)
            context.fillPath()

        }
    }
    

}
