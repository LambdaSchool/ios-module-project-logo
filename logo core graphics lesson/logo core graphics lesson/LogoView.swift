//
//  LogoView.swift
//  logo core graphics lesson
//
//  Created by Mark Poggi on 4/15/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable
class LogoView: UIView {
    
    // MARK: - Properties
    
    private let redCircleColor = UIColor.red
    private let whiteCircleColor = UIColor.white
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    // MARK: - draw Function
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            context.addEllipse(in: rect)
            context.setFillColor(redCircleColor.cgColor)
            context.fillPath()
            
            let centerPoint = CGPoint(x: rect.midX, y: rect.midY)
            
            let outerCircleRadius: CGFloat = 82.0
            let outerCircle = CGRect(x: centerPoint.x - outerCircleRadius, y: centerPoint.y - outerCircleRadius, width: 2 * outerCircleRadius, height: 2 * outerCircleRadius)
            context.addEllipse(in: outerCircle)
            context.setFillColor(whiteCircleColor.cgColor)
            context.fillPath()
            
            let innerCircleRadius: CGFloat = 38.0
            let centerCircle = CGRect(x: centerPoint.x - innerCircleRadius, y: centerPoint.y - innerCircleRadius, width: 2 * innerCircleRadius, height: 2 * innerCircleRadius)
            context.addEllipse(in: centerCircle)
            context.setFillColor(redCircleColor.cgColor)
            context.fillPath()
            
        }
    }
}
