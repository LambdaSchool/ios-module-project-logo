//
//  Logo.swift
//  Lambda-Logo
//
//  Created by Bradley Diroff on 3/18/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import Foundation
import UIKit



@IBDesignable
class Logo: UIView {
    
    private let testColor = UIColor.black
    
    private let realColor = UIColor.red
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
            
            let viewCenter = CGPoint(x: rect.midX,
                                      y: rect.midY)
         
            
            let path = UIBezierPath()
            path.move(to: CGPoint(x: viewCenter.x, y: viewCenter.y + 60))
            path.addLine(to: CGPoint(x: viewCenter.x - 47, y: viewCenter.y + 25))
            path.addLine(to: CGPoint(x: viewCenter.x - 47, y: viewCenter.y - 50))
            path.addLine(to: CGPoint(x: viewCenter.x + 47, y: viewCenter.y - 50))
            path.addLine(to: CGPoint(x: viewCenter.x + 47, y: viewCenter.y + 25))
            path.close()
            UIColor.black.setFill()
            path.fill()
            
            let path1 = UIBezierPath()
            path1.move(to: CGPoint(x: viewCenter.x - 28, y: viewCenter.y + 14))
            path1.addLine(to: CGPoint(x: viewCenter.x - 5, y: viewCenter.y - 26))
            path1.addLine(to: CGPoint(x: viewCenter.x + 5, y: viewCenter.y - 26))
            path1.addLine(to: CGPoint(x: viewCenter.x + 28, y: viewCenter.y + 14))
            path1.addLine(to: CGPoint(x: viewCenter.x + 14, y: viewCenter.y + 14))
            path1.addLine(to: CGPoint(x: viewCenter.x, y: viewCenter.y - 11))
            path1.addLine(to: CGPoint(x: viewCenter.x - 14, y: viewCenter.y + 14))
            path1.close()
            UIColor.white.setFill()
            path1.fill()

        }
    
}
