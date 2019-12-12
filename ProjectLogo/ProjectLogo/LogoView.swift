//
//  LogoView.swift
//  ProjectLogo
//
//  Created by Lambda_School_Loaner_218 on 12/11/19.
//  Copyright © 2019 Lambda_School_Loaner_218. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

    private var red = UIColor.red.cgColor
    private var white = UIColor.white.cgColor
    private var black = UIColor.black.cgColor
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .black
    }
    
    override func draw(_ rect: CGRect) {
        let originX = rect.origin.x
        let originY = rect.origin.y
        
        
        if let context = UIGraphicsGetCurrentContext(){
            // backGround
            context.setStrokeColor(red)
            context.setFillColor(red)
            context.beginPath()
            context.move(to: CGPoint(x: originX + 20.0, y: originY + 20.0))
            context.setLineWidth(4)
            context.addLine(to: CGPoint(x: rect.size.width - 20.0, y: originY + 20.0))
            context.addLine(to: CGPoint(x: rect.size.width - 20.0, y: rect.size.height / 2 + 20.0))
            context.addLine(to: CGPoint(x: rect.size.width / 2, y: rect.size.width - 20))
            context.addLine(to: CGPoint(x: originX + 20.0, y: rect.size.width / 2 + 20.0))
            context.addLine(to: CGPoint(x: originX + 20.0, y: originY + 20.0))
            context.fillPath()
            context.strokePath()
            
            // foreground lambda symbol
            context.setStrokeColor(white)
            context.setFillColor(white)
            context.beginPath()
            context.move(to: CGPoint(x: originX + 100.0, y: rect.size.height / 2 + 10.0))
            context.addLine(to: CGPoint(x: rect.size.height / 2 - 20.0, y: originY + 80.0))
            context.addLine(to: CGPoint(x: rect.size.height / 2 + 20.0, y: originY + 80.0))
            context.addLine(to: CGPoint(x: rect.size.width - 100.0, y: rect.size.height / 2 + 10.0))
            context.addLine(to: CGPoint(x: rect.size.width - 140.0, y: rect.size.height / 2 + 10.0))
            context.addLine(to: CGPoint(x: rect.size.width / 2 , y: originY + 120.0))
            context.addLine(to: CGPoint(x: originX + 140.0, y: rect.size.height / 2 + 10.0))
            context.addLine(to: CGPoint(x: originX + 98.5, y: rect.size.height / 2 + 10.0))
            context.fillPath()
            context.strokePath()
        }
    }
    

}
