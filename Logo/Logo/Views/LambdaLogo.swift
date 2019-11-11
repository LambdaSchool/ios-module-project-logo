//
//  LambdaLogo.swift
//  Logo
//
//  Created by Jon Bash on 2019-11-06.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

@IBDesignable
class LambdaLogo: UIView {
    
    let mainColor = UIColor(red: 0.73, green: 0.08, blue: 0.20, alpha: 1.00).cgColor
    let accentColor = UIColor.white.cgColor
    
    // ratio constants (per pixel of total size)
    var largeRadius: CGFloat = 0.008
    var rectPortionHeight: CGFloat = 0.381
    var cutoffHeight: CGFloat = 0.043
    var totalShape = CGSize(width: 0.475, height: 0.543)
    var mainTriangle = CGSize(width: 0.275, height: 0.241)
    var innerTriangle = CGSize(width: 0.141, height: 0.123)
    var topToMainTriBottom: CGFloat = 0.311

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
        layer.cornerRadius = 8
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        let rectCenter = CGPoint(x: rect.width * 0.5, y: rect.height * 0.5)
        
        largeRadius *= rect.width * 1.8
        rectPortionHeight *= rect.height * 1.8
        cutoffHeight *= rect.height * 1.8
        totalShape.width *= rect.width * 1.8
        totalShape.height *= rect.height * 1.8
        mainTriangle.width *= rect.width * 1.8
        mainTriangle.height *= rect.height * 1.8
        innerTriangle.width *= rect.width * 1.8
        innerTriangle.height *= rect.height * 1.8
        topToMainTriBottom *= rect.height * 1.8
        
        let smallRadius = largeRadius * 0.5
        
        let lambdaTopWidth: CGFloat = 0.053 * rect.width * 1.8
        let lambdaSpacing: CGFloat = 0.137 * rect.width * 1.8
        let lambdaHeight: CGFloat = 0.2 * rect.height * 1.8
        let innermostTriHeight: CGFloat = 0.124 * rect.height * 1.8
        let shapeTopToLambdaTop: CGFloat = 0.113 * rect.height * 1.8
        let lambdaBottomTotalWidth: CGFloat = 0.275 * rect.width * 1.8
        let lambdaArmWidth: CGFloat = 0.068 * rect.width * 1.8
        
        let shapeTopY = rectCenter.y - (totalShape.height * 0.5)
        let shapeLeftX = rectCenter.x - (totalShape.width * 0.5)
        let shapeRightX = rectCenter.x + (totalShape.width * 0.5)
        
        let lambdaTopY = shapeTopY + shapeTopToLambdaTop
        
        if let context = UIGraphicsGetCurrentContext() {
            
            // draw main shield shape
            
            let pathPoints = [
                CGPoint(x: shapeLeftX, y: shapeTopY),
                CGPoint(x: shapeLeftX, y: shapeTopY + rectPortionHeight),
                CGPoint(x: rectCenter.x, y: shapeTopY + totalShape.height),
                CGPoint(x: shapeRightX, y: shapeTopY + rectPortionHeight),
                CGPoint(x: shapeRightX, y: shapeTopY)
            ]
            context.addCurvedPolygon(from: pathPoints, withRadius: largeRadius)
            context.setStrokeColor(mainColor)
            context.setFillColor(mainColor)
            context.drawPath(using: .fillStroke)
            
            // draw lambda
            
            context.setStrokeColor(accentColor)
            context.setFillColor(accentColor)
            
            let lambdaPoints: [(point: CGPoint, radius: CGFloat?)] = [
                (point: CGPoint(x: rectCenter.x - (lambdaTopWidth * 0.5), y: lambdaTopY), radius: smallRadius),
                (point: CGPoint(x: rectCenter.x + (lambdaTopWidth * 0.5), y: lambdaTopY), radius: smallRadius),
                (point: CGPoint(x: rectCenter.x + (lambdaBottomTotalWidth * 0.5), y: lambdaTopY + lambdaHeight), radius: largeRadius),
                (point: CGPoint(x: rectCenter.x + (lambdaBottomTotalWidth * 0.5) - lambdaArmWidth, y: lambdaTopY + lambdaHeight), radius: smallRadius),
                (point: CGPoint(x: rectCenter.x, y: lambdaTopY + lambdaHeight - innermostTriHeight), radius: nil), // inner tip
                (point: CGPoint(x: rectCenter.x - (lambdaBottomTotalWidth * 0.5) + lambdaArmWidth, y: lambdaTopY + lambdaHeight), radius: smallRadius),
                (point: CGPoint(x: rectCenter.x - (lambdaBottomTotalWidth * 0.5), y: lambdaTopY + lambdaHeight), radius: largeRadius)
            ]
            context.addCurvedPolygon(from: lambdaPoints)
            context.drawPath(using: .fillStroke)
        }
    }

}
