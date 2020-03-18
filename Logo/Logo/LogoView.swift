//
//  LogoView.swift
//  Logo
//
//  Created by Nichole Davidson on 3/18/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {

    // MARK: - Properties
    private let logoBgColor = UIColor.red
    private let letterColor = UIColor.white
    private let borderColor = UIColor.red
    private let borderWidth: CGFloat = 2.0
    
    
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.white
    }
 
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - Draw
    
    override func draw(_ rect: CGRect) {
       
        let roundedRectPath = CGPath(roundedRect: rect, cornerWidth: 8.0, cornerHeight: 8.0, transform: nil)
        let path = CGMutablePath()
        let leftCorner = CGPoint(x: rect.minX, y: rect.minY)
        let rightCorner = CGPoint(x: rect.size.width, y: rect.minY)
        let pointCorner = CGPoint(x: rect.midX, y: -rect.size.height / 2.0)
        
        if let context = UIGraphicsGetCurrentContext() {
                               
        // logo background
            context.beginPath()
            context.addPath(roundedRectPath)
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
            
            
        // logo bottom point
            context.setStrokeColor(letterColor.cgColor)
            context.beginPath()
            context.move(to: leftCorner)
            context.addQuadCurve(to: rightCorner, control: pointCorner)
            context.setFillColor(letterColor.cgColor)
            context.strokePath()
                        
            
        // lambda letter
        
        
        
        
    }
    }

}
