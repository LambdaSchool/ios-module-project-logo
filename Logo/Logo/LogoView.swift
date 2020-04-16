//
//  LogoView.swift
//  Logo
//
//  Created by Harmony Radley on 4/16/20.
//  Copyright © 2020 Harmony Radley. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class MyLogo: UIView {
    
    private let alienBgColor = UIColor.green
    
    
    override func draw(_ rect: CGRect) {
         
        if let context = UIGraphicsGetCurrentContext() {
            
            context.addEllipse(in: rect)
            context.setFillColor(alienBgColor.cgColor)
            context.fillPath()
            
            
            
            context.move(to: )
        }
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
}
