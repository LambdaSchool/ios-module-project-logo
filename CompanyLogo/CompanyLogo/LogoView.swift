//
//  LogoView.swift
//  CompanyLogo
//
//  Created by Aaron on 9/24/19.
//  Copyright © 2019 AlphaGrade, INC. All rights reserved.
//

import UIKit

@IBDesignable class LogoView: UIView {

    

    let gold = UIColor(red: 255, green: 215, blue: 0, alpha: 1.0)
    let silver = UIColor(red: 192, green: 192, blue: 192, alpha: 1.0)
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        if let oval = UIGraphicsGetCurrentContext() {
            let circlebounds = CGRect(x: rect.midX - 100, y: rect.midY - 50, width: 200, height: 120)
            oval.addEllipse(in: circlebounds)
            oval.setFillColor(gold.cgColor)
            oval.fillPath()
        }
        if let delta = UIGraphicsGetCurrentContext() {
        delta.beginPath()
            delta.move(to: CGPoint(x: rect.midX, y: rect.midY - 150))
        delta.addLine(to: CGPoint(x: rect.midX - 100, y: rect.midY + 100))
        delta.addLine(to: CGPoint(x: (rect.midX + 100), y: rect.midY + 100))
        delta.closePath()

        delta.setFillColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.60)
        delta.fillPath()
            
    }

        }
        
    

    override init(frame: CGRect) {
        super.init(frame:frame)
        backgroundColor = UIColor.black
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       backgroundColor = UIColor.black
    }
    
}


