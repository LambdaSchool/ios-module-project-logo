//
//  LogoController.swift
//  DrawLogo
//
//  Created by Lambda_School_Loaner_259 on 3/18/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {
    
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
            
            // main circle
            context.addEllipse(in: rect)
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
            // white loops

            // left loop
            //create rotated rect
            let leftRect = CGRect(x: rect.origin.x + 200,
                                  y: rect.origin.y + 10,
                                  width: 50,
                                  height: 150).applying(CGAffineTransform(rotationAngle: .pi/4))
            
                
            
            // create oval in left rect
            context.addEllipse(in: leftRect)
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()

        }
    }
}


