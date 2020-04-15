//
//  LogoView.swift
//  logo
//
//  Created by Claudia Contreras on 4/14/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit


@IBDesignable
class LogoView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .blue
    }
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            context.addRect(rect)
            context.setFillColor(UIColor.red.cgColor)
            context.fillPath()
            
            // calculate the botton center
            let startmidpoint = CGPoint(x: rect.maxX / 2, y: rect.maxY)
            let rightendline = CGPoint(x: rect.maxX, y: rect.maxY * 0.60)
            let bottomrightcorner = CGPoint(x: rect.maxX, y: rect.maxY)
            let leftendline = CGPoint(x: rect.minX, y: rect.maxY * 0.60)
            let bottomleft = CGPoint(x: rect.minX, y: rect.maxY)
            
            
            context.setStrokeColor(UIColor.white.cgColor)
            context.setFillColor(UIColor.white.cgColor)
            let trianglePath = UIBezierPath()
            trianglePath.move(to: startmidpoint)
            trianglePath.addLine(to: rightendline)
            trianglePath.addLine(to: bottomrightcorner)
            trianglePath.addLine(to: startmidpoint)
            trianglePath.fill()
            
            let tri = UIBezierPath()
            tri.move(to: startmidpoint)
            tri.addLine(to: leftendline)
            tri.addLine(to: bottomleft)
            tri.addLine(to: startmidpoint)
            tri.fill()
            
            // get point around 50%
            let newaStart = CGPoint(x: rect.midX, y: rect.height * 0.20)
             
            let topRightPoint = CGPoint(x: newaStart.x + 20, y: newaStart.y)
            let topLeftPoint = CGPoint(x: newaStart.x - 20, y: newaStart.y)
            let a = UIBezierPath()
            a.move(to: topLeftPoint)
            // top line
            a.addLine(to: topRightPoint)
            // top line to bottom right leg
            a.addLine(to: CGPoint(x: topRightPoint.x + 70, y: topRightPoint.y + rect.height * 0.35))
            // right leg bottom
            a.addLine(to: CGPoint(x: newaStart.x + 70 - 20, y: topRightPoint.y + rect.height * 0.35))
            // right leg inner to mid
            a.addLine(to: CGPoint(x: rect.midX, y: rect.height * 0.35))
            // now move to topleft and work our way back down
            a.move(to: topLeftPoint)
            a.addLine(to: CGPoint(x: topLeftPoint.x - 70, y: topLeftPoint.y + rect.height * 0.35))
            // left leg bottom
            a.addLine(to: CGPoint(x: newaStart.x - 70 + 20, y: topLeftPoint.y + rect.height * 0.35))
            // connect to center from inner of bottom left leg
            a.addLine(to: CGPoint(x: rect.midX, y: rect.height * 0.35))
            
            a.fill()
            
        }
    }
    
    
}

