//
//  LogoView.swift
//  Playstation Logo
//
//  Created by Tobi Kuyoro on 22/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

struct Logo {
    let corneRadius: CGFloat
    let color: UIColor
}

@ IBDesignable class LogoView: UIView {
    
    // MARK: - Properties
    
    var blackCirle = Logo(corneRadius: 100, color: .black)
    var whiteCircle = Logo(corneRadius: 100, color: .white)
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        let firstOPosition = CGPoint(x: rect.size.width / 8,
                                     y: rect.size.height / 130)
        
        let secondOPosition = CGPoint(x: rect.size.width / 8,
                                      y: rect.size.height / 1)
        
        let thirdOPosition = CGPoint(x: rect.size.width / 2.75,
                                     y: rect.size.height / 2.0)
        
        let fourthOPosition = CGPoint(x: rect.size.width / 1.67,
                                      y: rect.size.height / 130)
        
        let fifthOPosition = CGPoint(x: rect.size.width / 1.67,
                                      y: rect.size.height / 1)
        
        let sixthOPosition = CGPoint(x: rect.size.width / 1.20,
                                     y: rect.size.height / 2.0)
        
        if let context = UIGraphicsGetCurrentContext() {
            // Black Circle 1
            let blackCircle1DotRadius: CGFloat = 50.0
            let blackCircle1Rect = CGRect(x: firstOPosition.x - blackCircle1DotRadius,
                                          y: firstOPosition.y - blackCircle1DotRadius,
                                          width: 2 * blackCircle1DotRadius,
                                          height: 2 * blackCircle1DotRadius)
            context.addEllipse(in: blackCircle1Rect)
            context.setFillColor(blackCirle.color.cgColor)
            context.fillPath()
            
            // White Circle 1
            let whiteCircle1DotRadius: CGFloat = 20.0
            let whiteCircle1Rect = CGRect(x: firstOPosition.x - whiteCircle1DotRadius,
                                          y: firstOPosition.y - whiteCircle1DotRadius,
                                          width: 2 * whiteCircle1DotRadius,
                                          height: 2 * whiteCircle1DotRadius)
            
            context.addEllipse(in: whiteCircle1Rect)
            context.setFillColor(whiteCircle.color.cgColor)
            context.fillPath()
            
            // Black Circle 2
            let blackCircle2DotRadius: CGFloat = 50.0
            let blackCircle2Rect = CGRect(x: secondOPosition.x - blackCircle1DotRadius,
                                          y: secondOPosition.y - blackCircle2DotRadius,
                                          width: 2 * blackCircle2DotRadius,
                                          height: 2 * blackCircle2DotRadius)
            context.addEllipse(in: blackCircle2Rect)
            context.setFillColor(blackCirle.color.cgColor)
            context.fillPath()
            
            // White Circle 2
            let whiteCircle2DotRadius: CGFloat = 20.0
            let whiteCircle2Rect = CGRect(x: secondOPosition.x - whiteCircle2DotRadius,
                                          y: secondOPosition.y - whiteCircle2DotRadius,
                                          width: 2 * whiteCircle2DotRadius,
                                          height: 2 * whiteCircle2DotRadius)
            
            context.addEllipse(in: whiteCircle2Rect)
            context.setFillColor(whiteCircle.color.cgColor)
            context.fillPath()
            
            // Black Circle 3
            let blackCircle3DotRadius: CGFloat = 50.0
            let blackCircle3Rect = CGRect(x: thirdOPosition.x - blackCircle3DotRadius,
                                          y: thirdOPosition.y - blackCircle3DotRadius,
                                          width: 2 * blackCircle3DotRadius,
                                          height: 2 * blackCircle3DotRadius)
            context.addEllipse(in: blackCircle3Rect)
            context.setFillColor(blackCirle.color.cgColor)
            context.fillPath()
            
            // White Circle 3
            let whiteCircle3DotRadius: CGFloat = 20.0
            let whiteCircle3Rect = CGRect(x: thirdOPosition.x - whiteCircle3DotRadius,
                                          y: thirdOPosition.y - whiteCircle3DotRadius,
                                          width: 2 * whiteCircle3DotRadius,
                                          height: 2 * whiteCircle3DotRadius)
            
            context.addEllipse(in: whiteCircle3Rect)
            context.setFillColor(whiteCircle.color.cgColor)
            context.fillPath()
            
            // Black Circle 4
            let blackCircle4DotRadius: CGFloat = 50.0
            let blackCircle4Rect = CGRect(x: fourthOPosition.x - blackCircle4DotRadius,
                                          y: fourthOPosition.y - blackCircle4DotRadius,
                                          width: 2 * blackCircle4DotRadius,
                                          height: 2 * blackCircle4DotRadius)
            context.addEllipse(in: blackCircle4Rect)
            context.setFillColor(blackCirle.color.cgColor)
            context.fillPath()
            
            // White Circle 4
            let whiteCircle4DotRadius: CGFloat = 20.0
            let whiteCircle4Rect = CGRect(x: fourthOPosition.x - whiteCircle4DotRadius,
                                          y: fourthOPosition.y - whiteCircle4DotRadius,
                                          width: 2 * whiteCircle4DotRadius,
                                          height: 2 * whiteCircle4DotRadius)
            
            context.addEllipse(in: whiteCircle4Rect)
            context.setFillColor(whiteCircle.color.cgColor)
            context.fillPath()
            
            // Black Circle 5
            let blackCircle5DotRadius: CGFloat = 50.0
            let blackCircle5Rect = CGRect(x: fifthOPosition.x - blackCircle5DotRadius,
                                          y: fifthOPosition.y - blackCircle5DotRadius,
                                          width: 2 * blackCircle5DotRadius,
                                          height: 2 * blackCircle5DotRadius)
            context.addEllipse(in: blackCircle5Rect)
            context.setFillColor(blackCirle.color.cgColor)
            context.fillPath()
            
            // White Circle 5
            let whiteCircle5DotRadius: CGFloat = 20.0
            let whiteCircle5Rect = CGRect(x: fifthOPosition.x - whiteCircle5DotRadius,
                                          y: fifthOPosition.y - whiteCircle5DotRadius,
                                          width: 2 * whiteCircle5DotRadius,
                                          height: 2 * whiteCircle5DotRadius)
            
            context.addEllipse(in: whiteCircle5Rect)
            context.setFillColor(whiteCircle.color.cgColor)
            context.fillPath()
            
            // Black Circle 6
            let blackCircle6DotRadius: CGFloat = 50.0
            let blackCircle6Rect = CGRect(x: sixthOPosition.x - blackCircle3DotRadius,
                                          y: sixthOPosition.y - blackCircle6DotRadius,
                                          width: 2 * blackCircle6DotRadius,
                                          height: 2 * blackCircle6DotRadius)
            context.addEllipse(in: blackCircle6Rect)
            context.setFillColor(blackCirle.color.cgColor)
            context.fillPath()
            
            // White Circle 6
            let whiteCircle6DotRadius: CGFloat = 20.0
            let whiteCircle6Rect = CGRect(x: sixthOPosition.x - whiteCircle6DotRadius,
                                          y: sixthOPosition.y - whiteCircle6DotRadius,
                                          width: 2 * whiteCircle6DotRadius,
                                          height: 2 * whiteCircle6DotRadius)
            
            context.addEllipse(in: whiteCircle6Rect)
            context.setFillColor(whiteCircle.color.cgColor)
            context.fillPath()
            
        }
    }
}
