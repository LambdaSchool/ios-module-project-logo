//
//  LogoView.swift
//  Logo App
//
//  Created by Jarren Campos on 4/13/20.
//  Copyright © 2020 Jarren Campos. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {
    
    // MARK: Properties
    private let lambdaBgdColor = UIColor.red.cgColor
    private let lambdaInColor = UIColor.white.cgColor
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext(){
            
            //MARK: Rect Properties
            
            context.beginPath()
            context.move(to: rect.origin)
            context.addLine(to: CGPoint(x: rect.width,y: 0.0))
            context.addLine(to: CGPoint(x: rect.width,y: rect.height / 1.5))
            context.addLine(to: CGPoint(x: rect.width / 2,y: rect.height))
            context.addLine(to: CGPoint(x: 0.0, y: rect.height / 1.5))
            context.addLine(to: CGPoint(x: 0.0, y: 0.0))
            context.setStrokeColor(lambdaBgdColor)
            context.setFillColor(lambdaBgdColor)
            context.fillPath()
            context.strokePath()
            context.fillPath()
            
            context.beginPath()
            context.move(to: CGPoint(x: rect.width / 4, y: rect.height / 1.50))
            context.addLine(to: CGPoint(x: rect.width / 2, y: rect.height / 4))
            context.addLine(to: CGPoint(x: 175, y: 175))
            context.setLineWidth(10)
            context.setStrokeColor(lambdaInColor)
            context.strokePath()
        }
    }
}
