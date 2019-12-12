//
//  Logo.swift
//  Logo
//
//  Created by Zack Larsen on 12/11/19.
//  Copyright © 2019 Zack Larsen. All rights reserved.
//

import Foundation
import UIKit

struct Lambda {
    let width: CGFloat
    let length: CGFloat
    let color: UIColor
    var value: Int = 0
    
}

@IBDesignable
class LogoView: UIView {
    
    
    
    private let squareBgColor = UIColor.red
    private let triangleBgColor = UIColor.red
    private let lambdaBgColor = UIColor.white
    private let shieldRect = UIColor.red
    private let boarderWidt: CGFloat = 2.0
    private var digitFont: UIFont {
        return UIFont.systemFont(ofSize: 8.0 + frame.size.width / 50.0)
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.red
    }
    
    override func draw(_ rect: CGRect) {
        
        if let path = UIGraphicsGetCurrentContext() {
            
            path.addLine(to: CGPoint(x: 50, y: 0))
            path.addLine(to: CGPoint(x: 50, y: 200))
            path.addLine(to: CGPoint(x: 200, y: 200))
            path.addLine(to: CGPoint(x: 200, y: 0))
                        path.setFillColor(squareBgColor)
            path.fillPath()
            
            //        add lambdashield
            
            //        add triangle
            
            
            //        add lambda logo
            
           setNeedsDisplay()
        }
    }
    
}

