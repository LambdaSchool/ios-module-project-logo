//
//  TestView.swift
//  Logo
//
//  Created by Jon Bash on 2019-11-08.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

@IBDesignable
class TestView: UIView {
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            context.addCurvedPolygon(from: [
                CGPoint(x: 0.1 * rect.width,
                        y: 0.1 * rect.height),
                CGPoint(x: 0.9 * rect.width,
                        y: 0.05 * rect.height),
                CGPoint(x: 0.95 * rect.width,
                        y: 0.9 * rect.height),
                CGPoint(x: 0.05 * rect.width,
                        y: 0.95 * rect.height)
            ], withRadius: 0.1 * rect.height)
            context.setFillColor(UIColor.red.cgColor)
            context.setStrokeColor(UIColor.cyan.cgColor)
            context.setLineWidth(6)
            context.drawPath(using: .fillStroke)
            
            context.addCurvedPolygon(from: [
                (point: CGPoint(x: 0.3 * rect.width,
                                y: 0.3 * rect.height),
                 radius: nil),
                (point: CGPoint(x: 0.65 * rect.width,
                                y: 0.35 * rect.height),
                 radius: 0.05 * rect.height),
                (point: CGPoint(x: 0.55 * rect.width,
                                y: 0.8 * rect.height),
                 radius: 0.3 * rect.height)
            ])
            context.setFillColor(UIColor.green.cgColor)
            context.setStrokeColor(UIColor.black.cgColor)
            context.setLineWidth(2)
            context.drawPath(using: .fillStroke)
        }
    }
}
