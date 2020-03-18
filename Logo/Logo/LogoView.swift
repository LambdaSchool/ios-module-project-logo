//
//  LogoView.swift
//  Logo
//
//  Created by Mark Gerrior on 3/18/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

import UIKit

@IBDesignable // Interface Builder will render the view directly in the canvas
class LogoView: UIView {

    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        /// Note: elements are drawn on the the screen from back to front
        /// in the order they appear below.
        
        // Get a dot on the screen for proof of concept
        let smallDotRadius: CGFloat = 12.0
        let smallCircle = CGRect(x: rect.midX - smallDotRadius,
                                 y: rect.midY - smallDotRadius,
                                 width: smallDotRadius * 2,
                                 height: smallDotRadius * 2)
        context.addEllipse(in: smallCircle)
        context.setFillColor(UIColor.blue.cgColor)
        context.fillPath()
    }
}
