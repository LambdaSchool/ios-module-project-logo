//
//  LogoView.swift
//  ProjectLogo
//
//  Created by denis cedeno on 11/20/19.
//  Copyright © 2019 DenCedeno Co. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {

    
    let logoBackgroundColor = UIColor.red
    
    let borderColor = UIColor.white
    let borderWidth: CGFloat = 45.0
    
    let letterWidth: CGFloat = 15.0
    
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext(){
            
            context.addRect(CGRect(
                x: 0.0, y: 0.0,
                width: rect.size.width,
                height: rect.size.height
            ))
            context.setFillColor(logoBackgroundColor.cgColor)
            context.fillPath()
            //letter Points
            let letterStartPoint = CGPoint(x: rect.size.width / 3.0,
            y: rect.size.height / 2.0)
            let letterMidPoint = CGPoint(x: rect.size.width / 2.0,
            y: rect.size.height / 4.0)
            let letterEndPoint = CGPoint(x: rect.size.width / 1.5,
            y: rect.size.height / 2.0)
            //bottom points
            let logoCenterBottom = CGPoint(x: rect.size.width / 2.0,
            y: rect.size.height)
            let logoCenterRight = CGPoint(x: rect.size.width ,
                                          y: rect.size.height / 1.3 )
            let bottomRight = CGPoint(x: rect.size.width ,
            y: rect.size.height)
            
            let logoCenterLeft = CGPoint(x: -rect.size.width  ,
                                         y: rect.size.height / 3.5)
            let bottomLeft = CGPoint(x: rect.size.width / -1.0 ,
            y: rect.size.height)
            
            //bottom right
            context.beginPath()
            context.move(to: logoCenterBottom)
            context.setStrokeColor(borderColor.cgColor)
            context.setLineWidth(borderWidth)
            context.addLine(to: logoCenterRight)
            context.addLine(to: bottomRight)
            context.addLine(to: logoCenterBottom)
            context.strokePath()
            
            //bottom left
            context.beginPath()
            context.move(to: logoCenterBottom)
            context.setStrokeColor(borderColor.cgColor)
            context.setLineWidth(borderWidth)
            context.addLine(to: logoCenterLeft)
            context.addLine(to: bottomLeft)
            context.addLine(to: logoCenterBottom)
            context.addLine(to: CGPoint(x: rect.size.width / -1.0 ,
                                        y: rect.size.height / 1.2 ))
            context.strokePath()
            
            //letter a path
            context.beginPath()
            context.move(to: letterStartPoint)
            context.setStrokeColor(borderColor.cgColor)
            context.setLineWidth(letterWidth)
            context.addLine(to: letterMidPoint)
            context.addLine(to: letterEndPoint)
            context.strokePath()
        }
    }
}
