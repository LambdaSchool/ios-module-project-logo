//
//  Logo.swift
//  Lambda-Logo
//
//  Created by Bradley Diroff on 3/18/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import Foundation
import UIKit



@IBDesignable
class Logo: UIView {
    
    private let testColor = UIColor.black
    
    private let realColor = UIColor.red
    
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
            
            let viewCenter = CGPoint(x: rect.midX,
                                      y: rect.midY)
         /*
            context.addEllipse(in: rect)
            context.setFillColor(testColor.cgColor)
                context.fillPath()
            
            context.addEllipse(in: CGRect(x: rect.origin.x + 35, y: rect.origin.y + 35, width: rect.size.width - 35, height: rect.size.height - 35))
            context.setStrokeColor(realColor.cgColor)
            context.setLineWidth(35)
            context.strokePath()
         */
            context.setStrokeColor(realColor.cgColor)
            context.beginPath()
            context.move(to: viewCenter)
            context.setLineWidth(85)
            context.addLine(to: CGPoint(x: rect.minX + 20, y: rect.minY))
            context.strokePath()
            
        }
    }
    
}
