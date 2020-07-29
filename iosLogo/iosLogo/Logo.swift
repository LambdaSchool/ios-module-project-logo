//
//  Logo.swift
//  iosLogo
//
//  Created by BrysonSaclausa on 7/28/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable

class LogoView: UIView {
    
    
    private let logoBgColor = UIColor.red
    private let logoSecondColer = UIColor.white
    
    
    
    override func draw(_ rect: CGRect) {
        
        let clockCenter = CGPoint(x: rect.size.width / 2.0,
        y: rect.size.height / 2.0)
        
        //outside ring
        if let context = UIGraphicsGetCurrentContext() {
            context.addEllipse(in: rect)
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
         // white ring
            let medDotRadius: CGFloat = 80.0
            let midCircle = CGRect(x: clockCenter.x - medDotRadius, y: clockCenter.y - medDotRadius, width: 2 * medDotRadius, height: 2 * medDotRadius)
            context.addEllipse(in: midCircle)
            context.setFillColor(logoSecondColer.cgColor)
            context.fillPath()
            
        // bullseye
            let bullseyeDotRadius: CGFloat = 35.0
            let bullseyeCircle = CGRect(x: clockCenter.x - bullseyeDotRadius, y: clockCenter.y - bullseyeDotRadius, width: 2 * bullseyeDotRadius, height: 2 * bullseyeDotRadius)
            context.addEllipse(in: bullseyeCircle)
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
           
        }
    }
}
