//
//  LogoView.swift
//  Logo
//
//  Created by Thomas Sabino-Benowitz on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {
    
       private let borderWidth: CGFloat = 2.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
//         Drawing code
        if let context = UIGraphicsGetCurrentContext() {

// MARK: + FIRST GRAY CIRCLE
            context.addEllipse(in: rect)
            context.setFillColor(UIColor.lightGray.cgColor)
            context.fillPath()

            
// MARK: + YELLOW BORDER CIRCLE (STROKED)
            context.addEllipse(in: CGRect(x: rect.origin.x + borderWidth / 2, y: rect.origin.y + borderWidth / 2, width: rect.size.width - borderWidth, height: rect.size.height - borderWidth))
            context.setStrokeColor(UIColor.yellow.cgColor)
            context.setLineWidth(borderWidth)
            context.strokePath()
  
// MARK: + BLACK CIRCLE FOR RING (FILLED)
            
            context.addEllipse(in: CGRect(x: rect.width * 0.25, y: rect.height * 0.25, width: rect.width * 0.5, height: rect.height * 0.5))
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
// MARK: + SLIGHTLY SMALLER GRAY CIRCLE WITHIN BLACK, CREATES RING
            
            context.addEllipse(in: CGRect(x: rect.width * 0.27, y: rect.height * 0.27, width: rect.width * 0.46, height: rect.height * 0.46))
            context.setFillColor(UIColor.lightGray.cgColor)
            context.fillPath()

// MARK: + FILLED DIAMOND
            
            context.setFillColor(UIColor.blue.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: rect.width * 0.30 , y: rect.height * 0.05))
            context.setLineWidth(3.5)
            context.addLine(to: CGPoint(x: rect.width * 0.70, y: rect.height * 0.05))
            context.addLine(to: CGPoint(x: rect.width * 0.78, y: rect.height * 0.18))
            context.addLine(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.35))
            context.addLine(to: CGPoint(x: rect.width * 0.22, y: rect.height * 0.18))
            context.addLine(to: CGPoint(x: rect.width * 0.30, y: rect.height * 0.05))

            context.fillPath()

// MARK: + OUTLINE DIAMOND
            context.setStrokeColor(UIColor.black.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: rect.width * 0.30 , y: rect.height * 0.05))
            context.setLineWidth(3.5)
            context.addLine(to: CGPoint(x: rect.width * 0.70, y: rect.height * 0.05))
            context.addLine(to: CGPoint(x: rect.width * 0.78, y: rect.height * 0.18))
            context.addLine(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.35))
            context.addLine(to: CGPoint(x: rect.width * 0.22, y: rect.height * 0.18))
            context.addLine(to: CGPoint(x: rect.width * 0.305, y: rect.height * 0.0465))

// MARK: + ADD FACETS
            
            context.strokePath()
            context.setStrokeColor(UIColor.black.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: rect.width * 0.30 , y: rect.height * 0.05))
            context.addLine(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.13))
            context.addLine(to: CGPoint(x: rect.width * 0.7, y: rect.height * 0.05))
            context.move(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.13))
            context.addLine(to: CGPoint(x: rect.width * 0.765, y: rect.height * 0.155))
            context.move(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.13))
            context.addLine(to: CGPoint(x: rect.width * 0.235, y: rect.height * 0.155))
            context.move(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.13))
            context.addLine(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.05))
            context.move(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.05))
            context.addLine(to: CGPoint(x: rect.width * 0.60, y: rect.height * 0.09))
            context.move(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.05))
            context.addLine(to: CGPoint(x: rect.width * 0.40, y: rect.height * 0.09))
            context.move(to: CGPoint(x: rect.width * 0.26, y: rect.height * 0.11))
            context.addLine(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.13))
            context.move(to: CGPoint(x: rect.width * 0.74, y: rect.height * 0.11))
            context.addLine(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.13))
            
            context.strokePath()
            
//            context.addRect(CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.width, height: rect.height / 2))
//            context.fillPath()

    

            
        }
    }
    

}
