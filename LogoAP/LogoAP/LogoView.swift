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
        backgroundColor = UIColor.black
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.black
    }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        if let canvas = UIGraphicsGetCurrentContext() {
            
            let max: CGFloat = self.bounds.maxX
            let controlX: CGFloat = max / (CGFloat.pi * 2)
            let smallMulti: CGFloat = 0.20
            let bigMulti: CGFloat = 0.80
            
            // Left half
            canvas.move(to: CGPoint(x: max / 2, y: 0))
            canvas.addCurve(to: CGPoint(x: max / 2, y: max),
                            control1: CGPoint(x: -controlX, y: controlX / 2),
                            control2: CGPoint(x: -controlX, y: controlX * (CGFloat.pi * 2)))
            canvas.setFillColor(UIColor.orange.cgColor) //
            canvas.fillPath()
            
            // Left half pt2
            canvas.move(to: CGPoint(x: max / 2, y: 0))
            canvas.addCurve(to: CGPoint(x: max / 2, y: max),
                            control1: CGPoint(x: controlX / CGFloat.pi, y: controlX / 2),
                            control2: CGPoint(x: controlX / CGFloat.pi, y: controlX * (CGFloat.pi * 2)))
            canvas.setFillColor(UIColor.black.cgColor) //
            canvas.fillPath()
            
            // Right half
            canvas.move(to: CGPoint(x: max / 2, y: max * smallMulti))
            canvas.addCurve(to: CGPoint(x: max / 2, y: max * bigMulti),
                            control1: CGPoint(x: (max + controlX)  , y: (controlX / 2) * smallMulti ),
                            control2: CGPoint(x: (max + controlX) , y: controlX * (CGFloat.pi * 2) ))
            canvas.setFillColor(UIColor.orange.cgColor)
            canvas.fillPath()
            
            // Right half pt2
            canvas.move(to: CGPoint(x: max / 2, y: max * 0.15)) // small mul
            canvas.addCurve(to: CGPoint(x: max / 2, y: max * 0.85), // big mul
                            control1: CGPoint(x: (max + controlX) - controlX , y: (controlX / 2) * smallMulti ),
                            control2: CGPoint(x: (max + controlX) - controlX , y: controlX * (CGFloat.pi * 2) ))
            canvas.setFillColor(UIColor.black.cgColor)
            canvas.fillPath()
            
        }
    }
}

