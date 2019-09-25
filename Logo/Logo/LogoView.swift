//
//  LogoView.swift
//  Logo
//
//  Created by Fabiola S on 9/24/19.
//  Copyright © 2019 Fabiola Saga. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class LogoView: UIView {
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let topLeftPoint = CGPoint(x: rect.width * 0.2, y: rect.height * 0.2)
            let bottomLeftPoint = CGPoint(x: rect.width * 0.2, y: rect.height * 0.8 )
            let bottomMiddlePoint = CGPoint(x: rect.width / 2, y: rect.height)
            let rightBottomPoint = CGPoint(x: rect.width * 0.8, y: rect.height * 0.8)
            let leftTopPoint = CGPoint(x: rect.width * 0.8, y: rect.height * 0.2)
            
            
            
            context.move(to: topLeftPoint)
            context.addLine(to: bottomLeftPoint)
            context.addLine(to: bottomMiddlePoint)
            context.addLine(to: rightBottomPoint)
            context.addLine(to: leftTopPoint)
            context.addLine(to: topLeftPoint)
            
            
            context.setLineWidth(1)
            context.setStrokeColor(UIColor.red.cgColor)
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
            
            
        }
        
        
    }
    
}

    

