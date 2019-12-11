//
//  LogoView.swift
//  LogoView
//
//  Created by Chad Rutherford on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class LogoCustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        setNeedsDisplay()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .clear
        setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        let originX = rect.origin.x
        let originY = rect.origin.y
        
        if let context = UIGraphicsGetCurrentContext() {
            
            context.setFillColor(UIColor.red.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: originX + 20.0, y: originY + 20.0))
            context.addLine(to: CGPoint(x: rect.size.width - 20, y: originY + 20.0))
            context.setLineWidth(4)
            context.addLine(to: CGPoint(x: rect.size.width - 20, y: rect.size.height / 2 + 20.0))
            context.addLine(to: CGPoint(x: rect.size.width / 2, y: rect.size.width - 20))
            context.addLine(to: CGPoint(x: originX + 20.0, y: rect.size.width / 2 + 20.0))
            context.addLine(to: CGPoint(x: originX + 20.0, y: originY + 20.0))
            context.fillPath()
            
            context.setFillColor(UIColor.white.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: originX + 100.0, y: rect.size.height / 2 + 10.0))
            context.addLine(to: CGPoint(x: rect.size.height / 2 - 20, y: originY + 80.0))
            context.addLine(to: CGPoint(x: rect.size.height / 2 + 20, y: originY + 80.0))
            context.addLine(to: CGPoint(x: rect.size.width - 100.0, y: rect.size.height / 2 + 10.0))
            context.addLine(to: CGPoint(x: rect.size.width - 140.0, y: rect.size.height / 2 + 10.0))
            context.addLine(to: CGPoint(x: rect.size.width / 2, y: originY + 120))
            context.addLine(to: CGPoint(x: originX + 140.0, y: rect.size.height / 2 + 10.0))
            context.addLine(to: CGPoint(x: originX + 98.5, y: rect.size.height / 2 + 10.0))
            context.fillPath()
        }
    }
}
