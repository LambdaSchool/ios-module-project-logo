//
//  LogoView.swift
//  LogoProject
//
//  Created by admin on 10/9/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class LogoView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        // width/height = 414
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let center = CGPoint(x: rect.size.width / 2.0,
                                 y: rect.size.height / 2.0)
            
            
            let topPoint = CGPoint(x: center.x, y: 0)
            
            let tRightPoint = CGPoint(x: center.x + (center.x / 2), y: center.y - (center.y / 2))
            
            let rMiddlePoint = CGPoint(x: center.x + center.x, y: center.y)
            
            let bRightPoint = CGPoint(x: center.x + (center.x / 2), y: center.y + (center.y / 2))
            
            let bottomPoint = CGPoint(x: center.x, y: center.y + center.y)
            
            let bLeftPoint = CGPoint(x: center.x - (center.x / 2), y: center.y + (center.y / 2))
            
            let lMiddlePoint = CGPoint(x: center.x, y: 0)
            
            let tLeftPoint = CGPoint(x: center.x - (center.x / 2), y: center.y - (center.y / 2))
            
            
            context.move(to: topPoint)
            context.addLine(to: tRightPoint)
            context.addLine(to: rMiddlePoint)
            context.addLine(to: bRightPoint)
            context.addLine(to: bottomPoint)
            context.addLine(to: bLeftPoint)
            context.addLine(to: lMiddlePoint)
            context.addLine(to: tLeftPoint)
            context.closePath()
            
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
        }
        
    }
    

}
