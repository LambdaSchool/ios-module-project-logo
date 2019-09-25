//
//  LogoView.swift
//  Logo
//
//  Created by Joel Groomer on 9/24/19.
//  Copyright © 2019 Julltron. All rights reserved.
//

import UIKit


@IBDesignable class LogoView: UIView {

    let shieldConstants = [CGPoint(x: 0, y: 0), CGPoint(x: 10, y: 0), CGPoint(x: 10, y: 8), CGPoint(x: 5, y: 12), CGPoint(x: 0, y: 8)]
    let lambdaConstants = [CGPoint(x: 4, y: 2), CGPoint(x: 6, y: 2), CGPoint(x: 8, y: 7),
                  CGPoint(x: 6, y: 7), CGPoint(x: 5, y: 4), CGPoint(x: 4, y: 7),
                  CGPoint(x: 2, y: 7)]
    let shieldColor = UIColor(red: 186/255, green: 26/255, blue: 52/255, alpha: 1.0).cgColor
    let lambdaColor = UIColor.white.cgColor
    
    required init?(coder: NSCoder) {
        super .init(coder: coder)
        backgroundColor = UIColor.clear
    }
    
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
            
        // get proportions
        let widthValue = rect.size.width / 10
        let heightValue = rect.size.height / 12
        
        // calculate coordinates for the points of the shield
        let shieldPoints = shieldConstants.map { (point) -> CGPoint in
            return CGPoint(x: point.x * widthValue, y: point.y * heightValue)
        }
        
        // draw the shield
        context.move(to: shieldPoints[0])
        for i in 1...shieldPoints.count - 1 {
            context.addLine(to: shieldPoints[i])
        }
        context.closePath()
        context.setFillColor(shieldColor)
        context.fillPath()
        
        
        // calculate coordinates for the points of the lambda
        let lambdaPoints = lambdaConstants.map { (point) -> CGPoint in
            return CGPoint(x: point.x * widthValue, y: point.y * heightValue)
        }
        
        // draw the lambda
        context.move(to: lambdaPoints[0])
        for i in 1...lambdaPoints.count - 1 {
            context.addLine(to: lambdaPoints[i])
        }
        context.closePath()
        context.setFillColor(lambdaColor)
        context.fillPath()
    }

}
