//
//  LogoView.swift
//  LogoProject
//
//  Created by Elizabeth Wingate on 2/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class LogoView: UIView {
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
           
            // lambda outline
            context.move(to: CGPoint(x: (rect.width / 2) - 8, y: rect.height - 30))
            context.addLine(to: CGPoint(x: rect.width * 0.8, y: rect.height * 0.65))
            context.addLine(to: CGPoint(x: rect.width * 0.8, y: rect.height * 0.2))
            context.addLine(to: CGPoint(x: rect.width * 0.2, y: rect.height * 0.2))
            context.addLine(to: CGPoint(x: rect.width * 0.2, y: rect.height * 0.65))
            context.addLine(to: CGPoint(x: (rect.width / 2) + 8, y: rect.height - 30))
            context.setStrokeColor(UIColor.red.cgColor)
            context.setLineWidth(25)
            context.strokePath()
            
            // lambda symbol
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
