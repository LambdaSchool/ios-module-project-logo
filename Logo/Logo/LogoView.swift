//
//  LogoView.swift
//  Logo
//
//  Created by Michael on 1/23/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

    override init(frame: CGRect) {
            super.init(frame: frame)
            backgroundColor = UIColor.clear
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            backgroundColor = UIColor.clear
        }
        
        
        override func draw(_ rect: CGRect) {
                if let context = UIGraphicsGetCurrentContext() {
                    context.beginPath()
                    context.setStrokeColor(UIColor.darkGray.cgColor)
                    context.setLineWidth(50)
                    context.move(to: CGPoint(x: 300, y: 225))
                    context.addLine(to: CGPoint(x: 125, y: 25))
                    context.move(to: CGPoint(x: 250, y: 275))
                    context.addLine(to: CGPoint(x: 75, y: 75))
                    context.move(to: CGPoint(x: 200, y: 325))
                    context.addLine(to: CGPoint(x: 25, y: 125))
                    context.strokePath()
                    
                    context.beginPath()
                    context.setStrokeColor(UIColor.black.cgColor)
                    context.setLineWidth(150)
                    context.move(to: CGPoint(x: 0, y: 225))
                    context.addLine(to: CGPoint(x: 300, y: 225))
                    context.strokePath()
                    
                    
                    let logoString: NSString = "adidas"
    //                logoString.draw(in: CGRect(x: 25, y: 160, width: font.lineHeight, height: font.lineHeight), withAttributes:  [NSAttributedString.Key.foregroundColor: UIColor.white.cgColor, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20)])
                    
    //                let logoString: NSString = "adidas"
    //                logoString.draw(at: CGPoint(x: 0, y: 175), withAttributes: [NSAttributedString.Key.foregroundColor: UIColor.white.cgColor, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20)])
                    
            
                   

                    
                                
                    
                                
            }
        }

}
