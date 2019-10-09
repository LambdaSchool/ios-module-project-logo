//
//  LogoView.swift
//  Logo
//
//  Created by macbook on 10/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class LogoView: UIView {
    
    //MARK: Properties
    
    
    
    
    
    //MARK: Drawing function
    
    // Only override draw() if you perform custom drawing.
    // the draw func is the reciever. I'ts recieving
    override func draw(_ rect: CGRect) {
       
        if let context = UIGraphicsGetCurrentContext() {
            
            let smallRect = CGRect(x: rect.origin.x, y: rect.origin.y, width: 50, height: 100)
            
            context.addRect(smallRect)
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}
