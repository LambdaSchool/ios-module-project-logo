//
//  LogoView.swift
//  Logo
//
//  Created by Lambda_School_Loaner_204 on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

    private let lambdaBgColor = UIColor.red
    private let lambdaIconColor = UIColor.white
    
    private let heightOffSet: CGFloat = 60.0
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        if let context = UIGraphicsGetCurrentContext() {
            
            // First rect
            context.addRect(CGRect(x: rect.origin.x,
                                   y: rect.origin.y,
                                   width: rect.size.width,
                                   height: rect.size.height - heightOffSet))
            context.setFillColor(lambdaBgColor.cgColor)
            context.fillPath()
            
            let squareCenter = CGPoint(x: rect.size.width / 2.0,
                                       y: (rect.size.height - heightOffSet) / 2.0)
            
            // Triangle under square
            context.beginPath()
            context.move(to: CGPoint(x: rect.origin.x,
                                     y: rect.size.height - heightOffSet))
            context.setLineWidth(2)
            context.addLine(to: CGPoint(x: squareCenter.x,
                                        y: (rect.size.height - heightOffSet) + 60))
            
            context.addLine(to: CGPoint(x: rect.size.width,
                                        y: rect.size.height - heightOffSet))
            context.closePath()
            context.setFillColor(lambdaBgColor.cgColor)
            context.fillPath()
            
        }
    }
}
