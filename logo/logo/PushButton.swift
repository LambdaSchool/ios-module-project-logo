//
//  PushButton.swift
//  logo
//
//  Created by Claudia Contreras on 4/14/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

@IBDesignable
class PushButton: UIButton {
    
    @IBInspectable var fillColor: UIColor = UIColor.green
    @IBInspectable var isAddButton: Bool = true
    
    private struct Constants {
        static let plusLineWidth: CGFloat = 3.0
        static let plusButtonScale: CGFloat = 0.6
        static let halfPointShift: CGFloat = 0.5
    }
    
    private var halfWidth: CGFloat {
        return bounds.width / 2
    }
    
    private var halfHeight: CGFloat {
        return bounds.height / 2
    }

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()
        
        // Set up the width and height variables for the horizontal stroke
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * Constants.plusButtonScale
        let halfPlusWidth = plusWidth / 2
        
        // Create the path
        let plusPath = UIBezierPath()
        
        // Set the path's line width to the height of the stroke
        plusPath.lineWidth = Constants.plusLineWidth
        
        // Move the initial point of the path to the start of the horizontal stroke
        plusPath.move(to: CGPoint(
            x: halfWidth - halfPlusWidth + Constants.halfPointShift,
            y: halfHeight + Constants.halfPointShift))
        
        // Add a point to the path at the end of the stroke
        plusPath.addLine(to: CGPoint(
            x: halfWidth + halfPlusWidth + Constants.halfPointShift,
            y: halfHeight + Constants.halfPointShift))
        
        if isAddButton {
            // Vertical stroke
            plusPath.move(to: CGPoint(
                x: halfWidth + Constants.halfPointShift,
                y: halfHeight - halfPlusWidth + Constants.halfPointShift))
            
            plusPath.addLine(to: CGPoint(
                x: halfWidth + Constants.halfPointShift,
                y: halfHeight + halfPlusWidth + Constants.halfPointShift))
        }
        // Set the stroke color
        UIColor.white.setStroke()
        
        // Draw the stroke
        plusPath.stroke()
    }

}
