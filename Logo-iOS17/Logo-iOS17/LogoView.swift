//
//  LogoView.swift
//  Logo-iOS17
//
//  Created by Stephanie Ballard on 5/13/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable
class LogoView: UIView {
    
    private let borderColor = UIColor.white
    private let borderWidth: CGFloat = 2.0
    private let clockBgColor = UIColor.green
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.lightGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.lightGray
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            context.addEllipse(in: rect)
            context.setFillColor(clockBgColor.cgColor)
            context.fillPath()
            
//            context.addEllipse(in: CGRect(x: rect.origin.x + borderWidth / 2.0,
//                                          y: rect.origin.y + borderWidth / 2.0,
//                                          width: rect.size.width - borderWidth,
//                                          height: rect.size.height - borderWidth))
////            context.setStrokeColor(borderColor.cgColor)
//            context.setLineWidth(borderWidth)
//            context.strokePath()
            
            //
            context.addEllipse(in: CGRect(x: rect.origin.x + borderWidth / 2.0 + 20,
            y: rect.origin.y + borderWidth / 2.0 + 20,
            width: rect.size.width - borderWidth - 40,
            height: rect.size.height - borderWidth - 40))
            
            
            context.setStrokeColor(UIColor.red.cgColor)
            context.setLineWidth(5)
            context.strokePath()
//            context.addEllipse(in: rect)
//            context.setFillColor(UIColor.red.cgColor)
//            context.fillPath()
            
            
//            context.strokePath()
        }
    }
    
    
    
    
    
}
