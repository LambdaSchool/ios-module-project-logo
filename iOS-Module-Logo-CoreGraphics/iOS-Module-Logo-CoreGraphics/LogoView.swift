//
//  UIView.swift
//  iOS-Module-Logo-CoreGraphics
//
//  Created by Jonalynn Masters on 10/9/19.
//  Copyright © 2019 Jonalynn Masters. All rights reserved.
//
import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {
    /// General Declarations
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.white
    }
    
    override func draw(_ rect: CGRect) {
    if let context = UIGraphicsGetCurrentContext() {

    /// right side less than symbol drawing
    let rightLessSymbolPath = UIBezierPath()
    rightLessSymbolPath.move(to: CGPoint(x: 383.5, y: 213.5))
    rightLessSymbolPath.addLine(to: CGPoint(x: 214.75, y: 385.56))
    rightLessSymbolPath.addLine(to: CGPoint(x: 383.5, y: 564.5))
    UIColor.black.setStroke()
    rightLessSymbolPath.lineWidth = 1
    rightLessSymbolPath.stroke()
        context.strokePath()
    

    //// left side less than symbol drawing
    let leftLessSymbolPath = UIBezierPath()
    leftLessSymbolPath.move(to: CGPoint(x: 201.25, y: 213.5))
    leftLessSymbolPath.addLine(to: CGPoint(x: 32.5, y: 385.56))
    leftLessSymbolPath.addLine(to: CGPoint(x: 201.25, y: 564.5))
    UIColor.black.setStroke()
    leftLessSymbolPath.lineWidth = 1
    leftLessSymbolPath.stroke()
        context.strokePath()
    

    //// right greater than symbol drawing
    let rightGreaterSymbolPath = UIBezierPath()
    rightGreaterSymbolPath.move(to: CGPoint(x: 214.75, y: 213.5))
    rightGreaterSymbolPath.addLine(to: CGPoint(x: 383.5, y: 385.56))
    rightGreaterSymbolPath.addLine(to: CGPoint(x: 214.75, y: 564.5))
    UIColor.black.setStroke()
    rightGreaterSymbolPath.lineWidth = 1
    rightGreaterSymbolPath.stroke()
        context.strokePath()
    

    //// left greater than symbol drawing
    let leftGreaterSymbolPath = UIBezierPath()
    leftGreaterSymbolPath.move(to: CGPoint(x: 32.5, y: 213.5))
    leftGreaterSymbolPath.addLine(to: CGPoint(x: 201.25, y: 385.56))
    leftGreaterSymbolPath.addLine(to: CGPoint(x: 32.5, y: 564.5))
    UIColor.black.setStroke()
    leftGreaterSymbolPath.lineWidth = 1
    leftGreaterSymbolPath.stroke()
        context.strokePath()
    }
    
    //// rectangle drawing
     let context = UIGraphicsGetCurrentContext()!
    context.saveGState()
    context.translateBy(x: 187.38, y: 293.83)
    context.rotate(by: -45 * CGFloat.pi/180)

let rectanglePath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 27.53, height: 27.53))
        UIColor.gray.setFill()
        rectanglePath.fill()
        UIColor.black.setStroke()
        rectanglePath.lineWidth = 1
        rectanglePath.stroke()

        context.restoreGState()
        context.strokePath()
        
        //// triangle drawing
        let trianglePath = UIBezierPath()
        trianglePath.move(to: CGPoint(x: 100, y: 385.56))
        trianglePath.addLine(to: CGPoint(x: 113.5, y: 358.03))
        trianglePath.addLine(to: CGPoint(x: 127, y: 385.56))
        trianglePath.addLine(to: CGPoint(x: 100, y: 385.56))
        trianglePath.close()
        UIColor.gray.setFill()
        trianglePath.fill()
        UIColor.black.setStroke()
        trianglePath.lineWidth = 1
        trianglePath.stroke()
        context.strokePath()

    //// oval drawing
    let ovalPath = UIBezierPath(ovalIn: CGRect(x: 287.5, y: 359.5, width: 28, height: 25))
    UIColor.gray.setFill()
    ovalPath.fill()
    UIColor.black.setStroke()
    ovalPath.lineWidth = 1
    ovalPath.stroke()

        context.strokePath()

    //// star drawing
    let starPath = UIBezierPath()
    starPath.move(to: CGPoint(x: 208, y: 459.5))
    starPath.addLine(to: CGPoint(x: 212.76, y: 467.22))
    starPath.addLine(to: CGPoint(x: 220.84, y: 469.86))
    starPath.addLine(to: CGPoint(x: 215.7, y: 477.28))
    starPath.addLine(to: CGPoint(x: 215.94, y: 486.64))
    starPath.addLine(to: CGPoint(x: 208, y: 483.5))
    starPath.addLine(to: CGPoint(x: 200.06, y: 486.64))
    starPath.addLine(to: CGPoint(x: 200.3, y: 477.28))
    starPath.addLine(to: CGPoint(x: 195.16, y: 469.86))
    starPath.addLine(to: CGPoint(x: 203.24, y: 467.22))
    starPath.close()
    UIColor.gray.setFill()
    starPath.fill()
    UIColor.black.setStroke()
    starPath.lineWidth = 1
    starPath.stroke()
        context.strokePath()

}
    
}
