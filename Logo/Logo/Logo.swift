//
//  Logo.swift
//  Logo
//
//  Created by Zack Larsen on 12/11/19.
//  Copyright © 2019 Zack Larsen. All rights reserved.
//

import Foundation
import UIKit

struct Lambda {
    let width: CGFloat
    let length: CGFloat
    let color: UIColor
    var value: Int = 0
    
}

@IBDesignable
class LogoView: UIView {
    
    
    
    private let squareBgColor = UIColor.white
    private let triangleBgColor = UIColor.red
    private let lambdaBgColor = UIColor.white
    private let shieldRect = UIColor.red
    private let boarderWidth2: CGFloat = 3.0
    private let boarderWidth: CGFloat = 15.0
    private var digitFont: UIFont {
        return UIFont.systemFont(ofSize: 8.0 + frame.size.width / 50.0)
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
        
            context.addRect(CGRect(x: 35, y: 20, width: 300, height: 400))
            context.setFillColor(squareBgColor.cgColor)
            context.setStrokeColor(squareBgColor.cgColor)
            context.fillPath()
            
           if let lambdaShield =
            UIGraphicsGetCurrentContext() {
          
            lambdaShield.move(to: CGPoint(x: 100, y: 100))
            lambdaShield.addLine(to: CGPoint(x: 300, y: 100))
            lambdaShield.addLine(to: CGPoint(x: 300, y: 250))
            lambdaShield.addLine(to: CGPoint(x: 200, y: 300))
            lambdaShield.addLine(to: CGPoint(x: 100, y: 250))
            lambdaShield.addLine(to: CGPoint(x: 100, y: 100))
            
            lambdaShield.closePath()
            lambdaShield.setFillColor(triangleBgColor.cgColor)
            lambdaShield.setLineWidth(boarderWidth)
            lambdaShield.setStrokeColor(triangleBgColor.cgColor)
            lambdaShield.strokePath()
            
            
            if let v = UIGraphicsGetCurrentContext() {
                lambdaShield.move(to: CGPoint(x: 120, y: 240))
                lambdaShield.addLine(to: CGPoint(x: 150, y: 240))
                lambdaShield.addLine(to: CGPoint(x: 200, y: 170))
                lambdaShield.addLine(to: CGPoint(x: 250, y: 240))
                lambdaShield.addLine(to: CGPoint(x: 280, y: 240))
                lambdaShield.addLine(to: CGPoint(x: 225, y: 150))
                lambdaShield.addLine(to: CGPoint(x: 180, y: 150))
                lambdaShield.addLine(to: CGPoint(x: 120, y: 240))
            
                v.closePath()
                v.setLineWidth(boarderWidth2)
                v.setFillColor(triangleBgColor.cgColor)
                v.fillPath()
                v.setStrokeColor(triangleBgColor.cgColor)
                v.strokePath()
            }
            
            
            }
            

        }
    }
    
}

