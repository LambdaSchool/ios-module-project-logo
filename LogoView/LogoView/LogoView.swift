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
            
            // MARK: - Properties
            let cornerRadius = CGFloat(10)
            let bottomCornerRadius = CGFloat(5)
            let squareHeight = CGFloat(rect.origin.y + rect.width * 0.6)
            let triangleHeight = CGFloat(squareHeight + squareHeight * 0.5)
            
            // MARK: - Top left rounded Corner
            let topLeftControlPoint = CGPoint(x: rect.origin.x + rect.width * 0.15 , y: rect.origin.y + rect.height * 0.1)
            context.move(to: CGPoint(x: topLeftControlPoint.x, y: topLeftControlPoint.y + cornerRadius))
            context.addQuadCurve(to: CGPoint(x: topLeftControlPoint.x + cornerRadius, y: topLeftControlPoint.y), control: topLeftControlPoint)
            
            // MARK: - Top right rounded Corner
            let topRightControlPoint = CGPoint(x: rect.origin.x + rect.width * 0.85, y: rect.origin.y + rect.height * 0.1)
            context.addLine(to: CGPoint(x: topRightControlPoint.x - cornerRadius, y: topRightControlPoint.y))
            context.addQuadCurve(to: CGPoint(x: topRightControlPoint.x, y: topRightControlPoint.y + cornerRadius), control: topRightControlPoint)
            
            // MARK: - Bottom right rounded Corner
            let bottomRightControlPoint = CGPoint(x: topRightControlPoint.x, y: squareHeight)
            context.addLine(to: CGPoint(x: bottomRightControlPoint.x, y: bottomRightControlPoint.y - cornerRadius))
            context.addQuadCurve(to: CGPoint(x: bottomRightControlPoint.x - bottomCornerRadius, y: bottomRightControlPoint.y + bottomCornerRadius), control: bottomRightControlPoint)
            
            // MARK: - Triangle Peak
            let triangleBottomControlPoint = CGPoint(x: rect.midX, y: triangleHeight)
            context.addLine(to: CGPoint(x: triangleBottomControlPoint.x + cornerRadius, y: triangleBottomControlPoint.y - cornerRadius))
            context.addQuadCurve(to: CGPoint(x: triangleBottomControlPoint.x - cornerRadius, y: triangleBottomControlPoint.y - cornerRadius), control: triangleBottomControlPoint)
            
            // MARK: - Bottom left rounded Corner
            let bottomLeftControlPoint = CGPoint(x: topLeftControlPoint.x, y: squareHeight)
            context.addLine(to: CGPoint(x: bottomLeftControlPoint.x + bottomCornerRadius, y: bottomLeftControlPoint.y + bottomCornerRadius))
            context.addQuadCurve(to: CGPoint(x: bottomLeftControlPoint.x, y: bottomLeftControlPoint.y - cornerRadius), control: bottomLeftControlPoint)
            
            
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
            
            // MARK: - Lambda path
            let topLambda = CGFloat(rect.origin.y + rect.height * 0.3)
            
            // MARK: - Middle
            context.move(to: CGPoint(x: rect.midX, y: topLambda))
            
            // MARK: - Top Left
            context.addLine(to: CGPoint(x: rect.midX - 25, y: topLambda))
            
            // MARK: - bottom left left
            context.addLine(to: CGPoint(x: bottomLeftControlPoint.x + 50, y: bottomLeftControlPoint.y - 25))
            
            // MARK: - bottom left right
            context.addLine(to: CGPoint(x: bottomLeftControlPoint.x + 50 + 40, y: bottomLeftControlPoint.y - 25))
            
            // MARK: - middle bottom
            context.addLine(to: CGPoint(x: rect.midX, y: topLambda + 25))
            
            // MARK: - bottom right left
            context.addLine(to: CGPoint(x: bottomRightControlPoint.x - 50 - 40, y: bottomRightControlPoint.y - 25))
            
            // MARK: - bottom right right
            context.addLine(to: CGPoint(x: bottomRightControlPoint.x - 50, y: bottomRightControlPoint.y - 25))
            
            // MARK: - Top right
            context.addLine(to: CGPoint(x: rect.midX + 25, y: topLambda))
            
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
            
            
            
            
        }
        
        
        
         
    }

}
