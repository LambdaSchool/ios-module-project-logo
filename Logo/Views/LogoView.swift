//
//  LogoView.swift
//  Logo
//
//  Created by macbook on 10/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import Foundation

class LogoView: UIView {
    
    //MARK: Properties
     let redSquareWidth: CGFloat = 200
    let redSquareHeight: CGFloat = 150
    
//
//    let redSquare = UIBezierPath(rect: CGRect(x: (rect.maxX / 2) - (redSquareWidth / 2), y: (rect.maxY / 2) - (redSquareWidth / 2), width: redSquareWidth, height: redSquareHeight))
//
    
    //MARK: Drawing function
    override func draw(_ rect: CGRect) {
    
    // General Declarations
    let context = UIGraphicsGetCurrentContext()!

    // Color Declarations
    let darkRed = UIColor(red: 0.805, green: 0.099, blue: 0.099, alpha: 1.000)

    // Rectangle Drawing
    let redSquare = UIBezierPath(rect: CGRect(x: 47, y: 0, width: 104, height: 80))
    darkRed.setFill()
    redSquare.fill()


    // Bezier Drawing
    let redTriangle = UIBezierPath()
        
    redTriangle.move(to: CGPoint(x: 47.5, y: 80.5))
    redTriangle.addCurve(to: CGPoint(x: 98.44, y: 119.5), controlPoint1: CGPoint(x: 94.19, y: 117.55), controlPoint2: CGPoint(x: 98.44, y: 119.5))
    redTriangle.addLine(to: CGPoint(x: 151.5, y: 80.5))
    redTriangle.addLine(to: CGPoint(x: 47.5, y: 80.5))
    redTriangle.addLine(to: CGPoint(x: 47.5, y: 80.5))
    redTriangle.addLine(to: CGPoint(x: 47.5, y: 80.5))
    redTriangle.addLine(to: CGPoint(x: 47.5, y: 80.5))
    darkRed.setFill()
    redTriangle.fill()
    darkRed.setStroke()
    redTriangle.lineWidth = 1
    redTriangle.lineCapStyle = .round
    redTriangle.lineJoinStyle = .bevel
    redTriangle.stroke()


// Text Drawing
    let textRect = CGRect(x: 67, y: 26, width: 65, height: 94)
    let textTextContent = "^"
    let textStyle = NSMutableParagraphStyle()
    textStyle.alignment = .left
    let textFontAttributes = [
        .font: UIFont.systemFont(ofSize: 150),
        .foregroundColor: UIColor.white,
        .paragraphStyle: textStyle,
    ] as [NSAttributedString.Key: Any]

    let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
    context.saveGState()
    context.clip(to: textRect)
    textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
    context.restoreGState()

    
//    //MARK: Properties
//    let redSquareWidth: CGFloat = 200
//    let redSquareHeight: CGFloat = 150
//
//
//
//
//
//
//    // Only override draw() if you perform custom drawing.
//    // the draw func is the reciever. I'ts recieving
//    override func draw(_ rect: CGRect) {
//
//        if let context = UIGraphicsGetCurrentContext() {
//
//            let redSquare = CGRect(x: (rect.maxX / 2) - (redSquareWidth / 2), y: (rect.maxY / 2) - (redSquareWidth / 2), width: redSquareWidth, height: redSquareHeight)
//
//            context.addRect(redSquare)
//            context.setFillColor(UIColor.red.cgColor)
//            context.fillPath()
//
//            let redTriangle = UIBezierPath()
//
//            // top point
//            redTriangle.move(to: CGPoint(x: self.bounds.width / 2, y: 0.0))
//
//            //add line to bottom right
//            redTriangle.addLine(to: CGPoint(x: self.bounds.width, y: self.bounds.height))
//
//            //add line to bottom left
//            redTriangle.addLine(to: CGPoint(x: 0.0, y: self.bounds.height))
//
//            // complete path by drawing path to the top
//            redTriangle.addLine(to: CGPoint(x: self.bounds.width / 2, y: 0.0))
//
//            //redTriangle.setFillColor(UIColor.red.cgColor)
//            redTriangle.fill()
//
//        }
//
        
    }
}
