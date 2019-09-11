//
//  LogoView.swift
//  ViewDrawing-ProjectLogo
//
//  Created by Ciara Beitel on 9/11/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

import UIKit

@IBDesignable class LogoView: UIView {
    
    // MARK: - Properties
    
    private var purple = UIColor(red: 110/255, green: 42/255, blue: 131/255, alpha: 1.0).cgColor
    private var white = UIColor.white.cgColor
    private var red = UIColor.red.cgColor
    private var orange = UIColor.orange.cgColor
    private var green = UIColor.green.cgColor
    private var blue = UIColor.blue.cgColor
    private var lineWidth: CGFloat = 7.0
    private let borderWidth: CGFloat = 4.0
    
    // Gets used when creating the view programmatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    // Gets used when creating this view from the storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }

    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            // white circle
            context.addEllipse(in: rect)
            context.setFillColor(white)
            context.fillPath()
            
            // purple stroke circle
            let insetCircleRect = CGRect(x: rect.origin.x + 10,
                                         y: rect.origin.y + 10 ,
                                         width: rect.size.width - 20 ,
                                         height: rect.size.height - 20 )
            context.addEllipse(in: insetCircleRect)
            context.setStrokeColor(purple)
            context.setLineWidth(borderWidth)
            context.strokePath()
            
            // Triangle and lines
            context.move(to: CGPoint(x: insetCircleRect.midX * 0.30, y: insetCircleRect.midY))
            context.addLine(to: CGPoint(x: insetCircleRect.midX * 1.45, y: insetCircleRect.midY * 0.40))
            context.setStrokeColor(purple)
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.move(to: CGPoint(x: insetCircleRect.midX * 1.45, y: insetCircleRect.midY * 1.57))
            context.addLine(to: CGPoint(x: insetCircleRect.midX * 1.45, y: insetCircleRect.midY * 0.4))
            context.setStrokeColor(purple)
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.move(to: CGPoint(x: insetCircleRect.midX * 1.45, y: insetCircleRect.midY * 1.57))
            context.addLine(to: CGPoint(x: insetCircleRect.midX * 0.30, y: insetCircleRect.midY))
            context.setStrokeColor(purple)
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.move(to: CGPoint(x: insetCircleRect.midX * 0.75, y: insetCircleRect.midY * 1.22))
            context.addLine(to: CGPoint(x: insetCircleRect.midX * 0.75, y: insetCircleRect.midY * 0.75))
            context.setStrokeColor(purple)
            context.setLineWidth(lineWidth)
            context.strokePath()
            
            context.move(to: CGPoint(x: insetCircleRect.midX * 1.46, y: insetCircleRect.midY * 1.38))
            context.addLine(to: CGPoint(x: insetCircleRect.midX * 0.75, y: insetCircleRect.midY * 0.75))
            context.setStrokeColor(purple)
            context.setLineWidth(lineWidth)
            context.strokePath()
        }
    }
}


//// purple stroke circle
//let insetCircleRect = CGRect(x: rect.origin.x + 10,
//                             y: rect.origin.y + 10 ,
//                             width: rect.size.width - 20 ,
//                             height: rect.size.height - 20 )
//context.addEllipse(in: insetCircleRect)
//context.setStrokeColor(purple)
//context.setLineWidth(borderWidth)
//context.strokePath()
//
//context.move(to: CGPoint(x: 40, y: 125))
//context.addLine(to: CGPoint(x: 180, y: 50))
//context.setStrokeColor(orange)
//context.setLineWidth(lineWidth)
//context.strokePath()
//
//context.move(to: CGPoint(x: 180, y: 195))
//context.addLine(to: CGPoint(x: 180, y: 50))
//context.setStrokeColor(green)
//context.setLineWidth(lineWidth)
//context.strokePath()
//
//context.move(to: CGPoint(x: 180, y: 195))
//context.addLine(to: CGPoint(x: 40, y: 125))
//context.setStrokeColor(blue)
//context.setLineWidth(lineWidth)
//context.strokePath()
//
//context.move(to: CGPoint(x: 95, y: 150))
//context.addLine(to: CGPoint(x: 95, y: 95))
//context.setStrokeColor(red)
//context.setLineWidth(lineWidth)
//context.strokePath()
//
//context.move(to: CGPoint(x: 181, y: 168))
//context.addLine(to: CGPoint(x: 95, y: 93))
//context.setStrokeColor(purple)
//context.setLineWidth(lineWidth)
//context.strokePath()
