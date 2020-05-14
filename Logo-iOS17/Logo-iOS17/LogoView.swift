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
    private let borderWidth: CGFloat = 16
    private let clockBgColor = UIColor.black
    private let noFillCircleBorderWidth: CGFloat = 16.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            
            context.addEllipse(in: CGRect(x: rect.origin.x + noFillCircleBorderWidth,
            //                                          + borderWidth / 2.0 + 20
                y: rect.origin.y + rect.size.height / 2 - noFillCircleBorderWidth - 46,
                            width: rect.size.width - noFillCircleBorderWidth - rect.size.width / 2,
                            height: rect.size.height - noFillCircleBorderWidth - rect.size.height / 2))
                        
                        
                        context.setStrokeColor(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1).cgColor)
                        context.setLineWidth(noFillCircleBorderWidth)
            //            context.strokePath()
            //            context.addEllipse(in: rect)
                        context.setFillColor(UIColor.systemPink.cgColor)
                        context.fillPath()
            
            
            
            
            
            context.addEllipse(in: CGRect(x: rect.origin.x + rect.size.width / 12,
            y: rect.origin.y,
            width: rect.size.width - borderWidth - rect.size.width / 3.5,
            height: rect.size.height - borderWidth - rect.size.height / 3.5))
//            context.setFillColor(clockBgColor.cgColor)
            context.setAlpha(0.7)
            context.setStrokeColor(UIColor.purple.cgColor)
            context.strokePath()
            
            
            
//            context.addEllipse(in: CGRect(x: rect.origin.x + borderWidth / 2.0,
//                                          y: rect.origin.y + borderWidth / 2.0,
//                                          width: rect.size.width - borderWidth,
//                                          height: rect.size.height - borderWidth))
////            context.setStrokeColor(borderColor.cgColor)
//            context.setLineWidth(borderWidth)
//            context.strokePath()
            
            //
            
            
            
//            context.strokePath()
        }
    }
    
    
    
    
    
}
