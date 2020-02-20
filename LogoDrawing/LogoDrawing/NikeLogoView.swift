//
//  NikeLogoView.swift
//  LogoDrawing
//
//  Created by scott harris on 2/20/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

import UIKit

@IBDesignable
class NikeLogoView: UIView {
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            context.addRect(rect)
            context.setFillColor(UIColor.clear.cgColor)
            context.fillPath()
            
            context.setStrokeColor(UIColor.black.cgColor)
            context.setFillColor(UIColor.black.cgColor)
            
            let startPoint = CGPoint(x: rect.midX * 0.30, y: rect.midY * 0.75)
            let path = UIBezierPath()
            path.move(to: startPoint)
            let bottomLineEndPoint = CGPoint(x: rect.maxX * 0.95, y: rect.midY * 0.65)
            
            let curveControlPoint = CGPoint(x: startPoint.x - 120, y: startPoint.y + 220)
            path.addQuadCurve(to: bottomLineEndPoint, controlPoint: curveControlPoint)
            
            path.addQuadCurve(to: startPoint, controlPoint: CGPoint(x: curveControlPoint.x + 75, y: curveControlPoint.y - 90))
            
            path.fill()
            
            
            let string = NSString(string: "NIKE")
            let font = UIFont.systemFont(ofSize: 95, weight: .bold)
            let attribues: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.black, .font: font]
            
            string.draw(at: CGPoint(x: startPoint.x, y: startPoint.y - 75), withAttributes: attribues)
            
        }
        
    }
}
