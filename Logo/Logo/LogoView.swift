//
//  LogoView.swift
//  Logo
//
//  Created by Jesse Ruiz on 10/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class LogoView: UIView {
    
    private let companyColor = UIColor.black
    private var companyFont: UIFont {
        return UIFont.boldSystemFont(ofSize: 25.0)
    }
    private var companyFont2: UIFont {
        return UIFont.boldSystemFont(ofSize: 15.0)
    }
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            context.addRect(rect)
            context.setLineWidth(10.0)
            context.setStrokeColor(UIColor.black.cgColor)
            context.strokePath()
            
            // Light Tint Circle Image
            let circleImage = CGPoint(x: rect.size.width / 3.5, y: rect.size.width / 3.5)
            let imageRadius: CGFloat = 30
            let imageSpot = CGRect(x: circleImage.x - imageRadius,
                                   y: circleImage.y - imageRadius,
                                   width: imageRadius * 2,
                                   height: imageRadius * 2)
            
            context.addEllipse(in: imageSpot)
            context.setFillColor(UIColor.systemBlue.cgColor)
            context.setAlpha(0.5)
            context.fillPath()
            
            // Pink Border Circle Up
            let circleImage2 = CGPoint(x: rect.size.width / 2.8, y: rect.size.width / 5.0)
            let imageRadius2: CGFloat = 30
            let imageSpot2 = CGRect(x: circleImage2.x - imageRadius2,
                                    y: circleImage2.y - imageRadius2,
                                    width: imageRadius2 * 2,
                                    height: imageRadius2 * 2)
            
            context.addEllipse(in: imageSpot2)
            context.setLineWidth(10)
            context.setStrokeColor(UIColor.systemPink.cgColor)
            context.strokePath()
            
            let companyName: NSString = "ALOHA"
            companyName.draw(in: CGRect(x: 135,
                                        y: 35,
                                        width: 90,
                                        height: 25),
                             withAttributes: [NSAttributedString.Key.foregroundColor: companyColor,
                                              NSAttributedString.Key.font: companyFont])
            
            let companyName2: NSString = "BEER CO"
            companyName2.draw(in: CGRect(x: 145,
                                        y: 65,
                                        width: 80,
                                        height: 15),
                             withAttributes: [NSAttributedString.Key.foregroundColor: companyColor,
                                              NSAttributedString.Key.font: companyFont2])
            
        }
    }
}
