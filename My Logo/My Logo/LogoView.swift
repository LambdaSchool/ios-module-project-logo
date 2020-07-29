//
//  LogoView.swift
//  My Logo
//
//  Created by Gladymir Philippe on 7/28/20.
//  Copyright © 2020 Gladymir Philippe. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let width = CGFloat(frame.width)
            let height = CGFloat(frame.height)
            
            let startingPoint = CGPoint(x: width * 0.55, y: height * 0.25)
            let secondPoint = CGPoint(x: width * 0.8, y: height * 0.3)
            let thirdPoint = CGPoint(x: width * 0.8, y: height * 0.55)
            let fourthPoint = CGPoint(x: width * 0.7 , y: height * 0.75)
            let fifthPoint = CGPoint(x: width * 0.45, y: height * 0.75)
            let sixthPoint = CGPoint(x: width * 0.4, y: height * 0.25)
            //let seventhPoint = CGPoint(x: width * 0.4, y: height * -9.0)
     
            
            context.move(to: startingPoint)
            
            
            context.addQuadCurve(to: startingPoint, control: CGPoint(x: 0.5, y: height * 0.20))
            
            context.addQuadCurve(to: secondPoint, control: CGPoint(x: width * (startingPoint.x / secondPoint.x), y: width * 0.15))
            
           context.addQuadCurve(to: thirdPoint, control: CGPoint(x: width * 0.65, y: height * 0.45))
            
            context.addQuadCurve(to: fourthPoint, control: CGPoint(x: width * 0.75, y: height * 0.75))
            
            context.addQuadCurve(to: fifthPoint, control: CGPoint(x: width * 0.55, y: height * 0.65))
            
            context.addQuadCurve(to: sixthPoint, control: CGPoint(x: width * 0.15, y: height * 0.4))
            
          //  context.addEllipse(in: ())
            
           // context.addQuadCurve(to: startingPoint, control: CGPoint(x: 0.5, y: height * 0.20))
            
           // context.addQuadCurve(to: seventhPoint, control: CGPoint(x: width * 1.0, y: height * 0.85))
            
            
            
          
            
            context.setLineWidth(5.0)
            context.setStrokeColor(UIColor.black.cgColor)
            context.fillPath()
            
            
            let startingPointStem = CGPoint(x: width * 0.65, y: height * 0.02)
            let bottomPointStem = CGPoint(x: width * 0.55, y: height * 0.2)
            context.move(to: startingPointStem)
            context.addQuadCurve(to: bottomPointStem, control: CGPoint(x: width * 0.66, y: height * 0.15))
            context.addQuadCurve(to: startingPointStem, control: CGPoint(x: width * 0.5, y: height * 0.05))
         
            
            context.setLineWidth(5.0)
            context.setStrokeColor(UIColor.black.cgColor)
            context.fillPath()
            
            
            
        }
    }
    

}
