//
//  LogoView.swift
//  Logo
//
//  Created by Dennis Rudolph on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {
    
    let lambdaColor = UIColor(red: 235.0/255.0, green: 30.0/255.0, blue: 12.0/255.0, alpha: 1.0)
    
    override func draw(_ rect: CGRect) {
        
        let redX = rect.origin.x + rect.width/4
        let redY = rect.origin.y
        let redW = rect.width/2
        let redH = rect.height/2.6
        
        let whiteX = redX + redW/4
        let whiteY = redY + redH/4
        let whiteW = redW/2
        let whiteH = redH/2
        
        if let context = UIGraphicsGetCurrentContext() {
            
            context.addRect(CGRect(x: redX, y: redY, width: redW, height: redH))
            context.setFillColor(lambdaColor.cgColor)
            context.fillPath()
            
            context.addRect(CGRect(x: redX + redW/4, y: redY + redH/4, width: redW/2, height: redH/2))
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
            
            context.addRect(CGRect(x: redX, y: redY + redH, width: redW, height: redH/2.5))
            context.beginPath()
            context.move(to: CGPoint(x: redX, y: redY + redH))
            context.addLine(to: CGPoint(x: rect.maxX/2, y: redY + redH + redH/2.5))
            context.addLine(to: CGPoint(x: redX + redW, y: redY + redH))
            context.closePath()
            context.setFillColor(lambdaColor.cgColor)
            context.fillPath()
            
            context.beginPath()
            context.move(to: CGPoint(x: whiteX + whiteW/4, y: whiteY + whiteH))
            context.addLine(to: CGPoint(x: whiteX + whiteW/2, y: whiteY + whiteH/2.8))
            context.addLine(to: CGPoint(x: whiteX + whiteW*3/4, y: whiteY + whiteH))
            context.closePath()
            context.setFillColor(lambdaColor.cgColor)
            context.fillPath()
            
            context.beginPath()
            context.move(to: CGPoint(x: whiteX , y: whiteY))
            context.addLine(to: CGPoint(x: (whiteX + whiteW/2) - whiteW/8, y: whiteY))
            context.addLine(to: CGPoint(x: whiteX, y: whiteY + whiteH))
            context.closePath()
            context.setFillColor(lambdaColor.cgColor)
            context.fillPath()
            
            context.beginPath()
            context.move(to: CGPoint(x: whiteX + whiteW, y: whiteY))
            context.addLine(to: CGPoint(x: (whiteX + whiteW/2) + whiteW/8, y: whiteY))
            context.addLine(to: CGPoint(x: whiteX + whiteW, y: whiteY + whiteH))
            context.closePath()
            context.setFillColor(lambdaColor.cgColor)
            context.fillPath()
            
        }
    }
    override init(frame: CGRect) {
           super.init(frame: frame)
           backgroundColor = UIColor.clear
       }
       
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           backgroundColor = UIColor.clear
       }
    
}
