//
//  logoView.swift
//  logo project
//
//  Created by Morgan Smith on 4/14/20.
//  Copyright © 2020 Morgan Smith. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            //initial rectangle
            let myRect = CGRect(x: 0, y: 0, width: rect.maxX, height: rect.midY)
            context.addRect(myRect)
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
            
            //triangle
            let triangleWidth: CGFloat = rect.maxX
            let heightToCenter: CGFloat = -0.5 * (myRect.height)/2
            let center = CGPoint(x: rect.midX, y: rect.midY - heightToCenter)
            context.setFillColor(UIColor.red.cgColor)
            context.move(to: CGPoint(x:center.x, y:center.y - heightToCenter*2))
            
            context.addLine(to: CGPoint(x:center.x + triangleWidth/2, y:center.y + heightToCenter))
            context.addLine(to: CGPoint(x:center.x - triangleWidth/2, y:center.y + heightToCenter))
            context.closePath()
            context.fillPath()
            
            //upside down V
            context.beginPath()
            context.move(to: CGPoint(x: myRect.midX - 10, y: myRect.midY))
            context.addLine(to: CGPoint(x: (myRect.maxX) * 0.8, y: myRect.maxY))
            context.setStrokeColor(UIColor.white.cgColor)
            context.setLineWidth(38)
            context.strokePath()
            
            context.beginPath()
            context.move(to: CGPoint(x: myRect.midX + 10, y: myRect.midY))
            context.addLine(to: CGPoint(x: (myRect.maxX) * 0.2, y: myRect.maxY))
            context.setStrokeColor(UIColor.white.cgColor)
            context.setLineWidth(38)
            context.strokePath()
            
            
        }
        
    }
    
}
