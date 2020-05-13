//
//  LogoCircleTwoView.swift
//  Logo
//
//  Created by Nonye on 5/13/20.
//  Copyright © 2020 Nonye Ezekwo. All rights reserved.
//

import UIKit

@IBDesignable
class LogoCircleTwoView: UIView {
    
    let innerCircleOne: UIColor = .red
    let borderWidthTwo:CGFloat = 1.0

    override init(frame: CGRect) {
        super.init(frame: frame)

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
      
    }
    
    //MARK: - STEP ONE
    override func draw(_ rect: CGRect) {
        
         if let context = UIGraphicsGetCurrentContext() {
            
         
    //MARK: - OUTER CIRCLE
            
            context.addEllipse(in: rect)
            context.setFillColor(innerCircleOne.cgColor)
            context.fillPath()
            
            //Circle Border
            context.addEllipse(in: CGRect(x: rect.origin.x + borderWidthTwo/12,
                                          y: rect.origin.y + borderWidthTwo/12,
                                          width: rect.size.width - borderWidthTwo/12,
                                          height: rect.size.height - borderWidthTwo/12))
            //Set Stroke Color
            context.setStrokeColor(innerCircleOne.cgColor)
            context.setLineWidth(borderWidthTwo)
            context.strokePath()
        }
        
    }
    

}
