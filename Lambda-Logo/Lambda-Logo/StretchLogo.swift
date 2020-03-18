//
//  StretchLogo.swift
//  Lambda-Logo
//
//  Created by Bradley Diroff on 3/18/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable
class StretchLogo: UIView {
    
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
        
        var scaling: CGFloat
        
        if rect.maxX > rect.maxY {
            scaling = rect.maxY
        } else {
            scaling = rect.maxX
        }
        
        
            
            let viewCenter = CGPoint(x: rect.midX,
                                      y: rect.midY)
         
            
            let path = UIBezierPath()
        path.move(to: CGPoint(x: viewCenter.x, y: viewCenter.y + (scaling * 0.4)))
        path.addLine(to: CGPoint(x: viewCenter.x - (scaling * 0.3133), y: viewCenter.y + (scaling * 0.16666)))
        path.addLine(to: CGPoint(x: viewCenter.x - (scaling * 0.3133), y: viewCenter.y - (scaling * 0.3333)))
            path.addLine(to: CGPoint(x: viewCenter.x + (scaling * 0.3133), y: viewCenter.y - (scaling * 0.3333)))
            path.addLine(to: CGPoint(x: viewCenter.x + (scaling * 0.3133), y: viewCenter.y + (scaling * 0.16666)))
            path.close()
            UIColor.black.setFill()
            path.fill()
            
            let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: viewCenter.x - (scaling * 0.1866), y: viewCenter.y + (scaling * 0.09333)))
        path1.addLine(to: CGPoint(x: viewCenter.x - (scaling * 0.03333), y: viewCenter.y - (scaling * 0.17333)))
        path1.addLine(to: CGPoint(x: viewCenter.x + (scaling * 0.03333), y: viewCenter.y - (scaling * 0.17333)))
        path1.addLine(to: CGPoint(x: viewCenter.x + (scaling * 0.186666), y: viewCenter.y + (scaling * 0.09333)))
            path1.addLine(to: CGPoint(x: viewCenter.x + (scaling * 0.09333), y: viewCenter.y + (scaling * 0.09333)))
        path1.addLine(to: CGPoint(x: viewCenter.x, y: viewCenter.y - (scaling * 0.07333)))
            path1.addLine(to: CGPoint(x: viewCenter.x - (scaling * 0.09333), y: viewCenter.y + (scaling * 0.09333)))
            path1.close()
            UIColor.white.setFill()
            path1.fill()

        }
    
}
