//
//  LogoView.swift
//  Logo
//
//  Created by conner on 4/14/20.
//  Copyright © 2020 conner. All rights reserved.
//

import UIKit

@IBDesignable class LogoView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .white
    }
    
    override func draw(_ rect: CGRect) {
        
        if let ctx = UIGraphicsGetCurrentContext(){
            // Background (Red Part)
            ctx.setStrokeColor(UIColor.systemRed.cgColor)
            ctx.setFillColor(UIColor.systemRed.cgColor)
            ctx.beginPath()
            ctx.move(to: CGPoint(x: rect.origin.x+20, y: rect.origin.y+20))
            ctx.setLineWidth(4)
            ctx.addLine(to: CGPoint(x: rect.size.width-20, y: rect.origin.y+20))
            ctx.addLine(to: CGPoint(x: rect.size.width-20, y: (rect.size.height/2)+20))
            ctx.addLine(to: CGPoint(x: rect.size.width/2, y: rect.size.width-20))
            ctx.addLine(to: CGPoint(x: rect.origin.x+20, y: (rect.size.width/2)+20))
            ctx.addLine(to: CGPoint(x: rect.origin.x+20, y: rect.origin.y+20))
            ctx.fillPath()
            ctx.strokePath()
            
            // Lambda
            ctx.setStrokeColor(UIColor.white.cgColor)
            ctx.setFillColor(UIColor.white.cgColor)
            ctx.beginPath()
            ctx.move(to: CGPoint(x: rect.origin.x+100, y: (rect.size.height/2)+10))
            ctx.addLine(to: CGPoint(x: (rect.size.height/2)-20, y: rect.origin.y+80))
            ctx.addLine(to: CGPoint(x: (rect.size.height/2)+20, y: rect.origin.y+80))
            ctx.addLine(to: CGPoint(x: rect.size.width-100, y: (rect.size.height/2)+10))
            ctx.addLine(to: CGPoint(x: rect.size.width-140, y: (rect.size.height/2)+10))
            ctx.addLine(to: CGPoint(x: rect.size.width/2 , y: rect.origin.y+120))
            ctx.addLine(to: CGPoint(x: rect.origin.x+140, y: (rect.size.height/2)+10))
            ctx.addLine(to: CGPoint(x: rect.origin.x+100, y: (rect.size.height/2)+10))
            ctx.fillPath()
            ctx.strokePath()
        }
    }
}
