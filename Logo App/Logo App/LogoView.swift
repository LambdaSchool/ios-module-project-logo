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
            //Add in positions to use dynamically
            let width = rect.width
            let height = rect.height
            let origin: CGFloat = 0.0
            let twoThirds: CGFloat = height / 1.5
            let xCenter = width / 2
            let fourthWidth = width / 4
            let fourthHeight = height / 4
            
            //Red background logo
            context.beginPath()
            context.move(to: rect.origin)
            context.addLine(to: CGPoint(x: width, y: origin))
            context.addLine(to: CGPoint(x: width, y: twoThirds))
            context.addLine(to: CGPoint(x: xCenter, y: height))
            context.addLine(to: CGPoint(x: origin, y: twoThirds))
            context.addLine(to: CGPoint(x: origin, y: origin))
            context.setStrokeColor(lambdaBgdColor)
            context.setFillColor(lambdaBgdColor)
            context.fillPath()
            context.strokePath()
            context.fillPath()
            
            //White logo part
            context.beginPath()
            context.move(to: CGPoint(x: fourthWidth, y: twoThirds))
            context.addLine(to: CGPoint(x: xCenter, y: fourthHeight))
            context.addLine(to: CGPoint(x: fourthWidth * 3, y: twoThirds))
            context.setLineWidth(20)
            context.setStrokeColor(lambdaInColor)
            context.strokePath()
        }
    }
}
