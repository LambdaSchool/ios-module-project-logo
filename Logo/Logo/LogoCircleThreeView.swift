//
//  LogoCircleThreeView.swift
//  Logo
//
//  Created by Nonye on 5/13/20.
//  Copyright © 2020 Nonye Ezekwo. All rights reserved.
//

import UIKit

@IBDesignable
class LogoCircleThreeView: UIView {
    
    let innerCircleTwo: UIColor = .white
    let borderWidthThree:CGFloat = 1.0

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
            context.setFillColor(innerCircleTwo.cgColor)
            context.fillPath()
            
            //Circle Border
            context.addEllipse(in: CGRect(x: rect.origin.x + borderWidthThree/40,
                                          y: rect.origin.y + borderWidthThree/40,
                                          width: rect.size.width - borderWidthThree/40,
                                          height: rect.size.height - borderWidthThree/40))
            //Set Stroke Color
            context.setStrokeColor(innerCircleTwo.cgColor)
            context.setLineWidth(borderWidthThree)
            context.strokePath()
        }
        
    }
    

}

