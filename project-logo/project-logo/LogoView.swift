//
//  LogoView.swift
//  project-logo
//
//  Created by patelpra on 4/15/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

import UIKit
@IBDesignable

class LogoView: UIView {
    
    private let logoColor = UIColor.purple
    private let backGroud = UIColor.gray
    private let borderWidth: CGFloat = 5.0
    
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
            
            context.beginPath()
            context.move(to: CGPoint(x: 20, y: 100))
            context.addLine(to: CGPoint(x: 20, y: 100))
            context.addLine(to: CGPoint(x: 20, y: 20))
            context.addLine(to: CGPoint(x: 60, y: 60))
            context.addLine(to: CGPoint(x: 100, y: 20))
            context.addLine(to: CGPoint(x: 100, y: 100))
            context.addLine(to: CGPoint(x: 80, y: 80))
            context.addLine(to: CGPoint(x: 60, y: 100))
            context.addLine(to: CGPoint(x: 40, y: 80))
            context.addLine(to: CGPoint(x: 20, y: 100))
            context.setStrokeColor(logoColor.cgColor)
            context.setFillColor(backGroud.cgColor)
            context.setLineWidth(borderWidth)
            context.fillPath()
            context.strokePath()
        }
    }
}
