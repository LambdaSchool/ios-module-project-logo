//
//  SwitchLogoButton.swift
//  Logo
//
//  Created by Cora Jacobson on 7/28/20.
//  Copyright © 2020 Cora Jacobson. All rights reserved.
//

import UIKit

@IBDesignable
class SwitchLogoButton: UIButton {
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentEdgeInsets = UIEdgeInsets(top: 12, left: 20, bottom: 12, right: 20)
        setNeedsDisplay()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        contentEdgeInsets = UIEdgeInsets(top: 12, left: 20, bottom: 12, right: 20)
    }
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let fontColor = UIColor(named: "FontColor")!.cgColor
            let groundColor = UIColor(named: "BackgroundColor")!.cgColor
            
            var path = CGPath(roundedRect: CGRect(x: 4, y: 4, width: rect.size.width - 8, height: rect.size.height - 8), cornerWidth: 8, cornerHeight: 8, transform: nil)
            context.setStrokeColor(fontColor)
            context.setLineWidth(9)
            context.addPath(path)
            context.strokePath()
            
            path = CGPath(roundedRect: CGRect(x: 6, y: 6, width: rect.size.width - 12, height: rect.size.height - 12), cornerWidth: 6, cornerHeight: 6, transform: nil)
            context.setStrokeColor(groundColor)
            context.setLineWidth(5)
            context.addPath(path)
            context.strokePath()
            
            path = CGPath(roundedRect: CGRect(x: 8, y: 8, width: rect.size.width - 16, height: rect.size.height - 16), cornerWidth: 4, cornerHeight: 4, transform: nil)
            context.setStrokeColor(fontColor)
            context.setLineWidth(2)
            context.addPath(path)
            context.strokePath()
            
        }
    }
}
