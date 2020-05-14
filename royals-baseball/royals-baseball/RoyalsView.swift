//
//  RoyalsView.swift
//  royals-baseball
//
//  Created by ronald huston jr on 5/13/20.
//  Copyright © 2020 HenryQuante. All rights reserved.
//

import Foundation
import UIKit


struct Seam {
    let width: CGFloat
    let length: CGFloat
    let color: UIColor
    let value: Int = 1
}

struct Stitch {
    let width: CGFloat
    let length: CGFloat
    let color: UIColor
    let value: Int = 1
}

@IBDesignable
class RoyalsView: UIView {

    let ballBgColor = UIColor.lightGray
    let seam1 = Seam(width: 3.3, length: 33, color: .yellow)
    let seam2 = Seam(width: 3.4, length: 33, color: .red)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {

            //  draw the baseball
            let ellipseRect = CGRect(x: 0, y: bounds.height / 4, width: self.bounds.width, height: self.bounds.height / 2)
            context.addEllipse(in: ellipseRect)
            context.setFillColor(ballBgColor.cgColor)
            context.fillPath()
            
            //  attempt to draw laces
            context.setStrokeColor(UIColor.red.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: 103, y: 588))
            context.setLineWidth(seam1.width)
            context.addQuadCurve(to: CGPoint(x: 99, y: 235), control: CGPoint(x: 205, y: 313))
            context.strokePath()
            
            //  seam 2
            context.setStrokeColor(seam2.color.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: 299, y: 591))
            context.setLineWidth(seam2.width)
            context.addQuadCurve(to: CGPoint(x: 319, y: 235), control: CGPoint(x: 166, y: 414))
            context.strokePath()
        }
    }
}
