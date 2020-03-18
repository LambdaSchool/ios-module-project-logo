//
//  LambdaLogoView.swift
//  Logo
//
//  Created by Wyatt Harrell on 3/18/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable
class LambdaLogoView: UIView {

    
    
    /*
     override init(frame: CGRect) {
         super.init(frame: frame)
         backgroundColor = UIColor.clear
     }
     
     required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         backgroundColor = UIColor.clear
     }
     
     */
     
    private let digitColor = UIColor.white

    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            let rect2 = CGRect(x: rect.minX, y: rect.minY, width: rect.width, height: (rect.height / 3) * 2)
            let roundedRectanglePath = CGPath(roundedRect: rect2,
                                        cornerWidth: 6.0,
                                        cornerHeight: 6.0,
                                        transform: nil)
            context.addPath(roundedRectanglePath)
            context.setFillColor(digitColor.cgColor)
            context.fillPath()
            
            
            
            
        }
    }

}
