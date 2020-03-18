//
//  LogoController.swift
//  DrawLogo
//
//  Created by Lambda_School_Loaner_259 on 3/18/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            // main circle
            context.addEllipse(in: rect)
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
            // white loops

            // left loop
            context.saveGState()
            context.rotate(by: -20 * CGFloat.pi/180)
            let leftOvalPath = UIBezierPath(ovalIn: CGRect(x: 35, y: 65, width: 70, height: 100))
            context.setFillColor(UIColor.white.cgColor)
            leftOvalPath.fill()
            context.restoreGState()
            
            // right loop
            context.saveGState()
            context.rotate(by: 20 * CGFloat.pi/180)
            let rightOvalPath = UIBezierPath(ovalIn: CGRect(x: 205, y: -50, width: 70, height: 100))
            context.setFillColor(UIColor.white.cgColor)
            rightOvalPath.fill()
            context.restoreGState()
            
            // left exit from loop
            context.saveGState()
            context.rotate(by: 40 * CGFloat.pi/180)
            let leftExitRectangle = UIBezierPath(rect: CGRect(x: 88, y: -117, width: 40, height: 110))
            context.setFillColor(UIColor.white.cgColor)
            leftExitRectangle.fill()
            context.restoreGState()
            
            // right exit from loop
            context.saveGState()
            context.rotate(by: -40 * CGFloat.pi/180)
            let rightExitRectangle = UIBezierPath(rect: CGRect(x: 127, y: 100, width: 40, height: 100))
            context.setFillColor(UIColor.white.cgColor)
            rightExitRectangle.fill()
            context.restoreGState()

        }
    }
}


