//
//  LogoView.swift
//  Logo
//
//  Created by Shawn Gee on 3/18/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

    
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        
        let pillFrame = CGRect(origin: center, size: CGSize(width: 50, height: 100))
        let pillPath = CGPath(roundedRect: pillFrame, cornerWidth: pillFrame.width / 2 , cornerHeight: pillFrame.width / 2, transform: nil)
        
        context.addPath(pillPath)
        context.setFillColor(.init(srgbRed: 0.5, green: 0.5, blue: 0.5, alpha: 1))
        context.fillPath()
    }
    

}
