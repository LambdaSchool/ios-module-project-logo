//
//  LogoView.swift
//  LogoView
//
//  Created by Karen Rodriguez on 3/18/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

    override func draw(_ rect: CGRect) {
        // Drawing code
        
        if let context = UIGraphicsGetCurrentContext() {
            
//            let roundedRectanglePath = CGPath(roundedRect: CGRect(x: rect.origin.x + rect.width * 0.15, y: rect.origin.y + rect.height * 0.1, width: rect.width * 0.7, height: rect.width * 0.7 * 0.8), cornerWidth: 10, cornerHeight: 10, transform: nil)
            
            // MARK: - Properties
            let cornerRadius = CGFloat(10)
            
            // MARK: - Top left rounded Corner
            let topLeftControlPoint = CGPoint(x: rect.origin.x + rect.width * 0.15 , y: rect.origin.y + rect.height * 0.1)
            context.move(to: CGPoint(x: topLeftControlPoint.x, y: topLeftControlPoint.y + cornerRadius))
            context.addQuadCurve(to: CGPoint(x: topLeftControlPoint.x + cornerRadius, y: topLeftControlPoint.y), control: topLeftControlPoint)
            
            // MARK: - Top right rounded Corner
            let topRightControlPoint = CGPoint(x: rect.origin.x + rect.width * 0.85, y: rect.origin.y + rect.height * 0.1)
            context.addLine(to: CGPoint(x: topRightControlPoint.x - cornerRadius, y: topRightControlPoint.y))
            context.addQuadCurve(to: CGPoint(x: topRightControlPoint.x, y: topRightControlPoint.y + cornerRadius), control: topRightControlPoint)
            
            context.setFillColor(UIColor.blue.cgColor)
            context.fillPath()
            
            
            
        }
        
        
        
         
    }

}
