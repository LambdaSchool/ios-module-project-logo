//
//  LogoView.swift
//  Logo
//
//  Created by Nonye on 5/13/20.
//  Copyright © 2020 Nonye Ezekwo. All rights reserved.
//
import Foundation
import UIKit


@IBDesignable
class LogoView: UIView {
    
    //MARK: - CIRCLE CHARACTERISTICS
    private let outerCircle = UIColor.white
    private let borderWidth: CGFloat = 0.5

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
        
    }
    
    //MARK: - STEP ONE
    override func draw(_ rect: CGRect) {
        
         if let context = UIGraphicsGetCurrentContext() {
            
         
    //MARK: - OUTER CIRCLE
            
            context.addEllipse(in: rect)
            context.setFillColor(outerCircle.cgColor)
            context.fillPath()
        
            
            //Circle Border
            context.addEllipse(in: CGRect(x: rect.origin.x + borderWidth/2,
                                          y: rect.origin.y + borderWidth/2,
                                          width: rect.size.width - borderWidth,
                                          height: rect.size.height - borderWidth))
            //Set Stroke Color
            context.setStrokeColor(outerCircle.cgColor)
            context.setLineWidth(borderWidth)
            context.strokePath()
            
            
            //MARK: - INNER CIRCLE
            //maybe triangle if im feeling cool
            
            
            
            
        }
    }
}
