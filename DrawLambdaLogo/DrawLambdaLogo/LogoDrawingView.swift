//
//  LogoDrawingView.swift
//  DrawLambdaLogo
//
//  Created by Eoin Lavery on 25/09/2019.
//  Copyright © 2019 Eoin Lavery. All rights reserved.
//

import UIKit

class LogoDrawingView: UIView {

    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            //Get view sizes to calculate proportional drawing
            let viewWidth = self.frame.width
            let viewHeight = self.frame.height
            
            //Calculate points for each part of badge logo
            let topLeftCorner = CGPoint(x: viewWidth - (viewWidth * 0.8), y: viewHeight - (viewHeight * 0.8))
            let topRightCorner = CGPoint(x: viewWidth * 0.8, y: viewHeight - (viewHeight * 0.8))
            let bottomPoint = CGPoint(x: viewWidth * 0.5, y: viewHeight * 0.9)
            let bottomLeftCorner = CGPoint(x: viewWidth - (viewWidth * 0.8) , y: viewHeight * 0.65)
            let bottomRightCorner = CGPoint(x: viewWidth * 0.8, y: viewWidth * 0.65)
         
            //Draw badge logo
            context.move(to: topLeftCorner)
            context.addLine(to: bottomLeftCorner)
            context.addLine(to: bottomPoint)
            context.addLine(to: bottomRightCorner)
            context.addLine(to: topRightCorner)
            context.addLine(to: topLeftCorner)
            
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
            
            //Calculate points for lambda logo within badge
            let topLeftPoint = CGPoint(x: (viewWidth * 0.47), y: viewHeight * 0.35)
            let bottomLeftPoint = CGPoint(x: viewWidth * 0.325, y: viewHeight * 0.6)
            let bottomLeftCenterPoint = CGPoint(x: viewWidth * 0.425, y: viewHeight * 0.6)
            let middlePoint = CGPoint(x: viewWidth * 0.5, y: viewHeight * 0.45)
            let bottomRightCenterPoint = CGPoint(x: viewWidth * 0.575, y: viewHeight * 0.6)
            let bottomRightPoint = CGPoint(x: viewWidth * 0.675, y: viewHeight * 0.6)
            let topRightPoint = CGPoint(x: viewWidth * 0.53, y: viewHeight * 0.35)

            context.move(to: topLeftPoint)
            context.addLine(to: bottomLeftPoint)
            context.addLine(to: bottomLeftCenterPoint)
            context.addLine(to: middlePoint)
            context.addLine(to: bottomRightCenterPoint)
            context.addLine(to: bottomRightPoint)
            context.addLine(to: topRightPoint)
            context.addLine(to: topLeftPoint)
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
            
        }
        
    }

}
