//
//  LogoView.swift
//  LogoAP
//
//  Created by Jorge Alvarez on 1/22/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable
class LogoView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.blue
    }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        if let canvas = UIGraphicsGetCurrentContext() {
            
            let max: CGFloat = self.bounds.maxX
            //let rStartEndPointX: CGFloat = 150 // should be self.bounds.maxY / 2 ?
            let controlX: CGFloat = max / (CGFloat.pi * 2) // maxX or maxY / 6 or pi * 2   300 / (pi*2) = this 50~
            
            
            // Left half
            canvas.move(to: CGPoint(x: max / 2, y: 0))
            canvas.addCurve(to: CGPoint(x: max / 2, y: max),
                            control1: CGPoint(x: -controlX, y: controlX),
                            control2: CGPoint(x: -controlX, y: controlX * 5))
            canvas.setFillColor(UIColor.red.cgColor) // -50 x
            canvas.fillPath()
            
            // Right half
            canvas.move(to: CGPoint(x: max / 2, y: 0))
            canvas.addCurve(to: CGPoint(x: max / 2, y: max),
                            control1: CGPoint(x: max + controlX, y: controlX),
                            control2: CGPoint(x: max + controlX, y: controlX * 5))
            canvas.setFillColor(UIColor.yellow.cgColor) // -50 x
            canvas.fillPath()
            
//            // Left half
//            canvas.move(to: CGPoint(x: rStartEndPointX, y: 0))
//            canvas.addCurve(to: CGPoint(x: rStartEndPointX, y: 300),
//                            control1: CGPoint(x: -50, y: 50),
//                            control2: CGPoint(x: -50, y: 250))
//            canvas.setFillColor(UIColor.red.cgColor) // -50 x
//            canvas.fillPath()
//
//            // Right half
//            canvas.move(to: CGPoint(x: rStartEndPointX, y: 0))
//            canvas.addCurve(to: CGPoint(x: rStartEndPointX, y: 300),
//                            control1: CGPoint(x: 350, y: 50),
//                            control2: CGPoint(x: 350, y: 250))
//            canvas.setFillColor(UIColor.orange.cgColor)
//            canvas.fillPath()
            
        }
    }
}

