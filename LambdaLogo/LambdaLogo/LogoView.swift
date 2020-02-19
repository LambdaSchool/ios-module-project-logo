//
//  LogoView.swift
//  LambdaLogo
//
//  Created by Tobi Kuyoro on 19/02/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        let strokeDistance: CGFloat = 80
        let centerPoint = CGPoint(x: rect.midX, y: rect.midY - 30)
        let lowerLeftCorner = CGPoint(x: centerPoint.x - strokeDistance, y: centerPoint.y + strokeDistance)
        let lowerRightCorner = CGPoint(x: centerPoint.x + strokeDistance, y: centerPoint.y + strokeDistance)
        let upperRightCorner = CGPoint(x: centerPoint.x + strokeDistance, y: centerPoint.y - strokeDistance)
        let upperLeftCorner = CGPoint(x: centerPoint.x - strokeDistance, y: centerPoint.y - strokeDistance)
        let lowerMidPoint = CGPoint(x: centerPoint.x, y: rect.midY + 110)
        
        let upperArrowPoint = CGPoint(x: centerPoint.x, y: rect.midY - 40)
        let leftArrowPoint = CGPoint(x: upperArrowPoint.x - 40, y: upperArrowPoint.y + 60)
        let rightArrowPoint = CGPoint(x: upperArrowPoint.x + 40, y: upperArrowPoint.y + 60)

        // Top Square
        context.beginPath()
        context.move(to: lowerLeftCorner)
        context.setLineWidth(8.0)
        context.setFillColor(UIColor.red.cgColor)

        context.addLine(to: lowerLeftCorner)
        context.addLine(to: lowerRightCorner)
        context.addLine(to: upperRightCorner)
        context.addLine(to: upperLeftCorner)
        context.addLine(to: lowerLeftCorner)
        
        context.fillPath()
        
        // Bottom Triangle
        context.beginPath()
        context.move(to: lowerMidPoint)
        context.setLineWidth(8.0)
        context.setFillColor(UIColor.red.cgColor)

        context.addLine(to: lowerLeftCorner)
        context.addLine(to: lowerRightCorner)
        
        context.fillPath()
        
        // Inner Arrow
        context.beginPath()
        context.move(to: upperArrowPoint)
        context.setLineWidth(25.0)
        context.setStrokeColor(UIColor.white.cgColor)
        
        context.addLine(to: leftArrowPoint)
        context.addLine(to: upperArrowPoint)
        context.addLine(to: rightArrowPoint)
        
        context.strokePath()
    }
}
