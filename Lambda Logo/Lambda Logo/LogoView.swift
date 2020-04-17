//
//  LogoView.swift
//  Lambda Logo
//
//  Created by Casualty on 9/24/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import UIKit

class LogoView: UIView {

    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            // Setting start point
            context.move(to: CGPoint(x: (rect.width / 2) - 8, y: rect.height - 25))
            
            // Drawing at bottom middle movine up to the right at a 45 degree angle
            context.addLine(to: CGPoint(x: rect.width * 0.8, y: rect.height * 0.65))
            
            // Drawing vertical line upwards to top right
            context.addLine(to: CGPoint(x: rect.width * 0.8, y: rect.height * 0.2))
            
            // Drawing horizontal line from top right to top left
            context.addLine(to: CGPoint(x: rect.width * 0.2, y: rect.height * 0.2))
            
            // Drawing vertical line downwards to bottom left
            context.addLine(to: CGPoint(x: rect.width * 0.2, y: rect.height * 0.65))
            
            // Drawing 45 degree angle line down to the right back to the bottom middle
            context.addLine(to: CGPoint(x: (rect.width / 2) + 8, y: rect.height - 25))
            context.setStrokeColor(UIColor.red.cgColor)
            
            // changed this number probably 100 times to get it just right
            context.setLineWidth(25)
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
            context.strokePath()

            
            
            
            // Setting start point for middle shape
    

        }
    }
    

}

