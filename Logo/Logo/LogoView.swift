//
//  LogoView.swift
//  Logo
//
//  Created by Lambda_School_Loaner_268 on 2/19/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit
@IBDesignable
class LogoView: UIView {
    
    var logoColor: UIColor = .black
    var drawColor: UIColor = .red
   
    
    
               


    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
       
        
        let viewWidth = frame.size.width
        
        
        
       
        
        if let context = UIGraphicsGetCurrentContext() {
            
                
            // Black circle
            context.addEllipse(in: rect)
            context.setFillColor(logoColor.cgColor)
            context.fillPath()
            
            // Border
            
            context.addEllipse(in: CGRect(
                x: (rect.origin.x + 10) / 2.0,
                        y: (rect.origin.y + 10) / 2.0,
                        width: rect.size.width - 10,
                        height: rect.size.height - 10))
            context.setStrokeColor(drawColor.cgColor)
            context.setLineWidth(10)
            context.strokePath()
            
            
           //vertical line
            
            let verticalCenter = CGPoint(x: rect.size.width / 2, y: 0.0)
            
            let deadCenter = CGPoint(x: rect.size.width / 2.0, y: rect.size.height / 2.0)
            
            let bottomCenter = CGPoint(x: rect.size.width / 2, y: rect.size.height)
            
          
            
            context.setStrokeColor(drawColor.cgColor)
            context.beginPath()
            context.move(to: bottomCenter)
            context.setLineWidth(20)
            context.addLine(to: verticalCenter)
            context.strokePath()
            
            context.setStrokeColor(drawColor.cgColor)
            context.beginPath()
            context.move(to: deadCenter)
            context.setLineWidth(20)
            context.addLine(to: CGPoint(x: 31.0, y: 250.0))
            context.strokePath()
            
            
            context.setStrokeColor(drawColor.cgColor)
            context.beginPath()
            context.move(to: deadCenter)
            context.setLineWidth(20)
            context.addLine(to: CGPoint(x: viewWidth - 31, y: 250.0))
            context.strokePath()
            
            
       

        
           
            

        
   
    
 
        
}
}
        /*
        // clock's border
        context.addEllipse(in: CGRect(
            x: rect.origin.x + borderWidth / 2.0,
                    y: rect.origin.y + borderWidth / 2.0,
                    width: rect.size.width - borderWidth,
                    height: rect.size.height - borderWidth))
        context.setStrokeColor(borderColor.cgColor)
        context.setLineWidth(borderWidth)
        context.strokePath()
        
        // Drawing code
    }


}
*/
}
