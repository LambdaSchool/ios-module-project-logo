//
//  LogoView.swift
//  logoDrawingApp
//
//  Created by Clayton Watkins on 5/26/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
//

import Foundation
import UIKit

struct LetterBreakdown{
    let width: CGFloat
    let color: UIColor
}



@IBDesignable
class LogoView: UIView{
    
    //MARK: - Properties
    //First C
    private var c1 = LetterBreakdown(width: 14.0, color: .red)
    private var c2 = LetterBreakdown(width: 14.0, color: .red)
    private var c3 = LetterBreakdown(width: 14.0, color: .red)
    
    //Second C
    private var c4 = LetterBreakdown(width: 14.0, color: .white)
    private var c5 = LetterBreakdown(width: 14.0, color: .white)
    private var c6 = LetterBreakdown(width: 14.0, color: .white)
    
    //MARK: - Lifecycle
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    
    //MARK: - Functions
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext(){
            
            //Find the center of the view
            let viewCenter = CGPoint(x: rect.size.width / 2.0,
                                     y: rect.size.height / 2.0)
            
            //First C for "Captain"
            //C1
            context.setStrokeColor(c1.color.cgColor)
            context.beginPath()
            context.move(to: viewCenter)
            context.setLineWidth(c1.width)
            context.addLine(to: CGPoint(x: rect.size.width / 4.0,
                                        y: rect.size.height / 2.0))
            context.strokePath()
            //C2
            context.setStrokeColor(c2.color.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: rect.size.width / 4.0,
                                     y: rect.size.height / 1.9201))
            context.setLineWidth(c2.width)
            context.addLine(to: CGPoint(x: rect.size.width / 4.0,
                                        y: rect.size.height / 4.0))
            context.strokePath()
            //C3
            context.setStrokeColor(c3.color.cgColor)
            context.beginPath()
            context.move(to: CGPoint(x: rect.size.width / 4.3891,
                                     y: rect.size.height / 4.0))
            context.setLineWidth(c3.width)
            context.addLine(to: CGPoint(x: rect.size.width / 2.0,
                                        y: rect.size.height / 4.0))
            context.strokePath()
            
            
            //Second C for "Clayton"
            //C4
            context.setStrokeColor(c4.color.cgColor)
            context.beginPath()
            
        }
    }
    
    
}
