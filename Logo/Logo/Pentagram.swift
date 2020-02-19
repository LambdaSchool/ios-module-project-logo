//
//  Pentagram.swift
//  Logo
//
//  Created by Lambda_School_Loaner_268 on 2/19/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit
@IBDesignable
class Pentagram: UIView {
    
    var logoColor: UIColor = .black
    var drawColor: UIColor = .red

    override func draw(_ rect: CGRect) {
        // Drawing code
        let viewWidth = frame.size.width
        let viewHeight = frame.size.height
        
        let bottomLeft = CGPoint(x: 250 * 0.2, y: viewHeight * 0.85)
        let bottomRight = CGPoint(x: 250 * 0.8, y: viewHeight * 0.85)
        
        let upperRight = CGPoint(x: 245, y: viewHeight * 0.4)
        let upperLeft = CGPoint(x: 5, y: viewHeight * 0.4)
        let topCenter = CGPoint(x: viewWidth * 0.5, y: 0.0)
        
        if let context = UIGraphicsGetCurrentContext() {
        // Blue circle
            context.addEllipse(in: rect)
        context.setFillColor(logoColor.cgColor)
            context.fillPath()
                   
        // Border
            
            context.addEllipse(in: CGRect(
                           x: (rect.origin.x + 10) / 2.0,
                                   y: (rect.origin.y + 10) / 2.0,
                                   width: rect.size.width - 10,
                                   height: rect.size.height - 10))
                       context.setStrokeColor(drawColor.cgColor)
                       context.setLineWidth(10)
                       context.strokePath()
            
        // MARK: - Lines
    context.setStrokeColor(drawColor.cgColor)
        context.beginPath()
        context.move(to: topCenter)
        context.setLineWidth(20)
        context.addLine(to: bottomLeft)
        context.strokePath()
            
    context.setStrokeColor(drawColor.cgColor)
        context.beginPath()
        context.move(to: bottomLeft)
        context.setLineWidth(20)
        context.addLine(to: upperRight)
        context.strokePath()
        
    context.setStrokeColor(drawColor.cgColor)
        context.beginPath()
        context.move(to: upperRight)
        context.setLineWidth(20)
        context.addLine(to: upperLeft)
        context.strokePath()
            
    context.setStrokeColor(drawColor.cgColor)
        context.beginPath()
        context.move(to: upperLeft)
        context.setLineWidth(20)
        context.addLine(to: bottomRight)
        context.strokePath()
        
            
    context.setStrokeColor(drawColor.cgColor)
        context.beginPath()
        context.move(to: bottomRight)
        context.setLineWidth(20)
        context.addLine(to: topCenter)
        context.strokePath()
}
}
}
