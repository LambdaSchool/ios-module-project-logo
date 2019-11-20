//
//  MyView.swift
//  Logo
//
//  Created by Alex Thompson on 11/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
@IBDesignable
class MyView: UIView {
    

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
            
            let mickey1 = UIBezierPath(ovalIn: CGRect(x: 79, y: 46, width: 79, height: 74))
            UIColor.gray.setFill()
            mickey1.fill()
            
            let mickey2 = UIBezierPath(ovalIn: CGRect(x: 132, y: 32, width: 49, height: 45))
            UIColor.gray.setFill()
            mickey2.fill()

            let mickey3 = UIBezierPath(ovalIn: CGRect(x: 56, y: 32, width: 48, height: 45))
            UIColor.gray.setFill()
            mickey3.fill()
            
            
            
           
        }

        
    }
    
}


