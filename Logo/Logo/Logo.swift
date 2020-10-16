//
//  Logo.swift
//  Logo
//
//  Created by Joseph Rogers on 11/18/19.
//  Copyright © 2019 Joseph Rogers. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class logo: UIView {
    
    override func draw(_ rect: CGRect) {
        
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Color Declarations
        let color = UIColor(red: 0.750, green: 0.072, blue: 0.331, alpha: 1.000)
        
        //// Oval Drawing
        context.saveGState()
        context.translateBy(x: 140, y: 171.5)
        
        let ovalRect = CGRect(x: -111.5, y: -100.5, width: 223, height: 201)
        let ovalPath = UIBezierPath()
        
        ovalPath.addArc(withCenter: CGPoint.zero,
                        radius: ovalRect.width / 2,
                        startAngle: 0 * CGFloat.pi/180,
                        endAngle: 181 * CGFloat.pi/180,
                        clockwise: true)
        
        ovalPath.addLine(to: CGPoint.zero)
        
        ovalPath.close()
        
        var ovalTransform = CGAffineTransform(translationX: ovalRect.midX,
                                              y: ovalRect.midY)
        ovalTransform = ovalTransform.scaledBy(x: 1,
                                               y: ovalRect.height / ovalRect.width)
        
        ovalPath.apply(ovalTransform)
        
        color.setFill()
        
        ovalPath.fill()
        
        context.restoreGState()
        
        //// Text Drawing
        let textRect = CGRect(x: 225,
                              y: 65,
                              width: 535,
                              height: 262)
        let textTextContent = "unfold"
        
        let textStyle = NSMutableParagraphStyle()
        
        textStyle.alignment = .center
        
        let textFontAttributes = [
            .font: UIFont(name: "AvenirNext-Bold",
                          size: 140)!,
            .foregroundColor: UIColor.black,
            .paragraphStyle: textStyle,
        ] as [NSAttributedString.Key: Any]
        
        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width,
                                                                                height: CGFloat.infinity),
                                                                   options: .usesLineFragmentOrigin,
                                                                   attributes: textFontAttributes,
                                                                   context: nil).height
        
        context.saveGState()
        
        context.clip(to: textRect)
        
        textTextContent.draw(in: CGRect(x: textRect.minX,
                                        y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
        
    }
    //loved doing this project! 
    
}

