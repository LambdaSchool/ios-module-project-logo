//
//  CounterView.swift
//  logo
//
//  Created by Claudia Contreras on 4/14/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

@IBDesignable
class CounterView: UIView {

    private struct Constants {
        static let numberOfGlasses = 8
        static let lineWidth: CGFloat = 5.0
        static let arcWidth: CGFloat = 76
        
        static var halfOfLineWidth: CGFloat {
            return lineWidth / 2
        }
    }
    
    @IBInspectable var counter: Int = 5 {
        didSet {
            if counter <= Constants.numberOfGlasses {
                setNeedsDisplay()
            }
        }
    }
    @IBInspectable var outlineColor: UIColor = UIColor.blue
    @IBInspectable var counterColor: UIColor = UIColor.orange
    
    
    override func draw(_ rect: CGRect) {
        // Define the center point of the view
        let center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        
        // Calculate the radius based on the max dimension of the view
        let radius: CGFloat = max(bounds.width, bounds.height)
        
        // Define the start and end angles for the arc
        let startAngle: CGFloat = 3 * .pi / 4
        let endAngle: CGFloat = .pi / 4
        
        // Create a path based on the center point, radius and angles
        let path = UIBezierPath(arcCenter: center,
                                radius: radius/2 - Constants.arcWidth/2,
                                startAngle: startAngle,
                                endAngle: endAngle,
                                clockwise: true)
        
        // Set the line width and color
        path.lineWidth = Constants.arcWidth
        counterColor.setStroke()
        path.stroke()
        
        
        //Draw the outline
        
        // Calculate the difference between the two angles ensuring it is positive
        let angleDifference: CGFloat = 2 * .pi - startAngle + endAngle
        
        // then calculate the arc for each single glass
        let arcLengthPerGlass = angleDifference / CGFloat(Constants.numberOfGlasses)
        
        // then multiply out by the actual glasses drunk
        let outlineEndAngle = arcLengthPerGlass * CGFloat(counter) + startAngle
        
        // Draw the outer arc
        let outlinePath = UIBezierPath(arcCenter: center,
                                       radius: bounds.width/2 - Constants.halfOfLineWidth,
                                       startAngle: startAngle,
                                       endAngle: outlineEndAngle,
                                       clockwise: true)
        
        // Draw the inner arc
        outlinePath.addArc(withCenter: center,
                           radius: bounds.width/2 - Constants.arcWidth + Constants.halfOfLineWidth,
                           startAngle: outlineEndAngle,
                           endAngle: startAngle,
                           clockwise: false)
        
        // Close the path
        outlinePath.close()
        
        outlineColor.setStroke()
        outlinePath.lineWidth = Constants.lineWidth
        outlinePath.stroke()
        

    }


}
