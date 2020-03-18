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
        backgroundColor = UIColor.clear
    }
    
    
    // MARK: - Draw
    
    override func draw(_ rect: CGRect) {
       
        if let context = UIGraphicsGetCurrentContext() {
        
        // logo background
            context.addRect(rect)
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
                     
        // logo border
            context.addRect(CGRect(x: rect.origin.x + borderWidth / 2.0,
                                   y: rect.origin.y + borderWidth / 2.0,
                                   width: rect.size.width - borderWidth,
                                   height: rect.size.height - borderWidth))
            context.setStrokeColor(borderColor.cgColor)
            context.setLineWidth(borderWidth)
            context.strokePath()
        
        
        // lambda letter
        
        
        
        
    }
    }

}
