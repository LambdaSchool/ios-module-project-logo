//
//  LogoView.swift
//  Logo Drawing
//
//  Created by Dillon P on 9/24/19.
//  Copyright © 2019 Lambda iOSPT2. All rights reserved.
//

import UIKit
import Foundation


@IBDesignable
class LogoView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    // getting used when creating view from storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    let logoRectWidth = CGFloat(300)
    let logoRectHeight = CGFloat(225)
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
        
            context.addRect(CGRect(x: rect.size.width / 2 - (logoRectWidth/2), y: rect.size.height / 2 - (logoRectHeight/2), width: logoRectWidth, height: logoRectHeight))
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
            
            
            context.move(to: CGPoint(x: self.center.x - (logoRectWidth/2), y: self.center.y + (logoRectHeight/2)))
            context.addLine(to: CGPoint(x: self.center.x, y: self.center.y + 250))
            context.addLine(to: CGPoint(x: self.center.x + (logoRectWidth/2), y: self.center.y + (logoRectHeight/2)))
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
            
            
        
        
        
        
        }
    
    
    }

}
