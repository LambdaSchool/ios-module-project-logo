//
//  LogoView.swift
//  LogoProject
//
//  Created by Enrique Gongora on 2/19/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
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
    
    

    //MARK: - Function
    override func draw(_ rect: CGRect) {
        let color = UIColor.white

        // OuterMost Rectangle
        let outerRectangle = UIBezierPath(roundedRect: CGRect(x: self.frame.origin.x + 30 / 2.0 + 80, y: self.frame.minY / 2.0 - 30, width: 130, height: 130), cornerRadius: 25)
        UIColor.red.setFill()
        outerRectangle.lineWidth = 10
        outerRectangle.lineJoinStyle = .round
        outerRectangle.fill()
        
        // Inner Rectangle
        let innerRectangle = UIBezierPath(roundedRect: CGRect(x: self.frame.origin.x + 80 / 2.0 + 70, y: self.frame.minY / 2.0 - 15, width: 100, height: 100), cornerRadius: 25)
        color.setStroke()
        innerRectangle.lineWidth = 10
        innerRectangle.lineJoinStyle = .round
        innerRectangle.stroke()

        // Circle
        let centerCircle = UIBezierPath(ovalIn: CGRect(x: self.frame.origin.x + 80 / 2.0 + 95, y: self.frame.minY / 2.0 + 10, width: 50, height: 50))
        color.setStroke()
        centerCircle.lineWidth = 10
        centerCircle.stroke()
        
        // Small Dot
        let smallDot = UIBezierPath(ovalIn: CGRect(x: self.frame.origin.x + 80 / 2.0 + 145, y: self.frame.minY / 2.0, width: 13, height: 13))
        color.setFill()
        smallDot.fill()
        color.setStroke()
        smallDot.lineWidth = 2
        smallDot.stroke()
    }
    
}

