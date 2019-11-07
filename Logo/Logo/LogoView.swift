//
//  LogoView.swift
//  Logo
//
//  Created by Rick Wolter on 11/6/19.
//  Copyright © 2019 Richar Wolter. All rights reserved.
//


import UIKit



@IBDesignable
class LogoView: UIView {


    private let blockBgColor = UIColor.red
    private let borderColor = UIColor.white
    private let borderWidth: CGFloat = 2.0
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
   required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
       
    }
    
    
    
    // MARK: - Draw Function
    
    override func draw(_ rect: CGRect) {
           /// Note: elements are drawn on the the screen from back to front
           /// in the order they appear below.

     if let context = UIGraphicsGetCurrentContext() {
        
        //Paths
        
        context.beginPath()
        context.setFillColor(UIColor.black.cgColor)
        context.setLineWidth(3.5)
        context.move(to: CGPoint(x: rect.width * 0.1, y: rect.height * 0.1))
        context.addLine(to: CGPoint(x: rect.width * 0.9, y: rect.height * 0.1))
        context.addLine(to:CGPoint(x: rect.width * 0.9, y: rect.height * 0.55) )
        context.addLine(to:CGPoint(x: rect.width * 0.5, y: rect.height * 0.90) )
        context.addLine(to:CGPoint(x: rect.width * 0.1, y: rect.height * 0.55) )
        context.addLine(to: CGPoint(x: rect.width * 0.1, y: rect.height * 0.1))
        context.fillPath()
        
        
        
        
        context.setStrokeColor(UIColor.lightGray.cgColor)
        context.setLineWidth(10)
        context.move(to: CGPoint(x: rect.width * 0.35, y: rect.height * 0.65))
        context.addLine(to:CGPoint(x: rect.width * 0.5, y: rect.height * 0.20) )
        context.addLine(to:CGPoint(x: rect.width * 0.65, y: rect.height * 0.65) )
        
        
        context.strokePath()
        
    }
}
}
