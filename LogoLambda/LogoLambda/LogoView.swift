//
//  LogoView.swift
//  LogoLambda
//
//  Created by admin on 9/11/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit


class LogoView: UIView {

    let lambdaColor = UIColor.white
    let shieldColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
    let greekLetterColor = UIColor.white
    
    
    
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let logoCenter = CGPoint(x: rect.size.width / 2.0,
                                     y: rect.size.height / 2.0)
            
            
            let topShieldPoint = CGPoint(x: logoCenter.x - 125, y: logoCenter.y - 125)
            let bottomLeftShieldPoint = CGPoint(x: logoCenter.x - 125, y: logoCenter.y + 75)
            let middleShieldPoint = CGPoint(x: logoCenter.x, y: logoCenter.y + 175)
            let bottomRightShieldPoint = CGPoint(x: logoCenter.x + 125, y: logoCenter.y + 75)
            let topRightShieldPoint = CGPoint(x: logoCenter.x + 125, y: logoCenter.y - 125)
            
           
            context.move(to: topShieldPoint)
            context.addLine(to: bottomLeftShieldPoint)
            context.addLine(to: middleShieldPoint)
            context.addLine(to: bottomRightShieldPoint)
            context.addLine(to: topRightShieldPoint)
            context.closePath()
            
            context.setFillColor(shieldColor.cgColor)
            context.fillPath()
            
            let mBLPoint = CGPoint(x: logoCenter.x, y: logoCenter.y + 0)
            let rIBPoint = CGPoint(x: logoCenter.x + 40, y: logoCenter.y + 55)
            let rOBPoint = CGPoint(x: logoCenter.x + 70, y: logoCenter.y + 55)
            let rTPoint = CGPoint(x: logoCenter.x + 12, y: logoCenter.y - 35)
            let lIBPoint = CGPoint(x: logoCenter.x - 40, y: logoCenter.y + 55)
            let lOBPoint = CGPoint(x: logoCenter.x - 70, y: logoCenter.y + 55)
            let lTPoint = CGPoint(x: logoCenter.x - 12, y: logoCenter.y - 35)
            
            context.move(to: mBLPoint)
            context.addLine(to: rIBPoint)
            context.addLine(to: rOBPoint)
            context.addLine(to: rTPoint)
            context.addLine(to: lTPoint)
            context.addLine(to: lOBPoint)
            context.addLine(to: lIBPoint)
            context.closePath()
            
            context.setFillColor(greekLetterColor.cgColor)
            context.fillPath()
            
        }
        
    }
    

}
