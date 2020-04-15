//
//  LogoView.swift
//  Logo
//
//  Created by Cameron Collins on 4/15/20.
//  Copyright © 2020 Cameron Collins. All rights reserved.
//

import UIKit


@IBDesignable class LogoView: UIView {
    
    //Initializers
    override init(frame: CGRect) {
           super.init(frame: frame)
           backgroundColor = UIColor.clear
       }
       
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    //Drawing Method
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        if let context = UIGraphicsGetCurrentContext() {
            
            
            //Buffers/Spacing from the edge is always .15 percent of the view/frame size
            //Not including the curve portion
            
            //Variables
            let width = CGFloat(frame.width)
            let height = CGFloat(frame.height)
            
            
            //Apple
            //Points
            let startingPoint = CGPoint(x: width * 0.55, y: height * 0.25)
            let secondPoint = CGPoint(x: width * 0.83, y: height * 0.3)
            let thirdPoint = CGPoint(x: width * 0.83, y: height * 0.55)
            let fourthPoint = CGPoint(x: width * 0.7 , y: height * 0.75)
            let fifthPoint = CGPoint(x: width * 0.45, y: height * 0.75)
            let sixthPoint = CGPoint(x: width * 0.4, y: height * 0.25)
            
            context.move(to: startingPoint) // Starting Point
            
            //First Curve
            context.addQuadCurve(to: secondPoint, control: CGPoint(x: width * (startingPoint.x / secondPoint.x), y: width * 0.15))
            
            //Second Curve
            context.addQuadCurve(to: thirdPoint, control: CGPoint(x: width * 0.65, y: height * 0.45))
            
            //Third Curve
            context.addQuadCurve(to: fourthPoint, control: CGPoint(x: width * 0.75, y: height * 0.75))
            
            //Fourth Curve
            context.addQuadCurve(to: fifthPoint, control: CGPoint(x: width * 0.55, y: height * 0.65))
            
            //Fifth Curve
            context.addQuadCurve(to: sixthPoint, control: CGPoint(x: width * 0.2, y: height * 0.4))
            
            //Sixth Curve
            context.addQuadCurve(to: startingPoint, control: CGPoint(x: width * 0.5, y: height * 0.2))

            context.setLineWidth(5.0)
            context.setStrokeColor(UIColor.black.cgColor)
            context.fillPath()
            
            //Stem
            let startingPointStem = CGPoint(x: width * 0.65, y: height * 0.02)
            let bottomPointStem = CGPoint(x: width * 0.5, y: height * 0.2)
            context.move(to: startingPointStem)
            context.addQuadCurve(to: bottomPointStem, control: CGPoint(x: width * 0.65, y: height * 0.15))
            context.addQuadCurve(to: startingPointStem, control: CGPoint(x: width * 0.5, y: height * 0.05))
            //context.addEllipse(in: CGRect(x: width * 0.55, y: height * 0.1 , width: 2, height: 2))
            
            context.setLineWidth(5.0)
            context.setStrokeColor(UIColor.black.cgColor)
            context.fillPath()
        }
    }
}


