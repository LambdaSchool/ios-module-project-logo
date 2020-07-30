//
//  LogoView.swift
//  Logo
//
//  Created by Cora Jacobson on 7/27/20.
//  Copyright © 2020 Cora Jacobson. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {
    
    var name: String = "Notes"
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
        setNeedsDisplay()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
                        
            let color1 = UIColor(named: "Color1")!.cgColor
            let color2 = UIColor(named: "Color2")!.cgColor
            let color3 = UIColor(named: "Color3")!.cgColor
            
            var path = CGPath(rect: rect, transform: nil)
            
            enum Shape {
                case ellipse
                case roundedRect
                case rect
            }
            
            func createRotatedShape(shape: Shape, xPosition: CGFloat, yPosition: CGFloat, width: CGFloat, height: CGFloat, rotation: CGFloat, corner: CGFloat, color: CGColor) {
                
                context.saveGState()
                
                context.translateBy(x: xPosition + (width / 2), y: yPosition + (height / 2))
                context.rotate(by: rotation)
                
                switch shape {
                case .ellipse:
                    path = CGPath(ellipseIn: CGRect(x: -width / 2, y: -height / 2, width: width, height: height), transform: nil)
                case .roundedRect:
                    path = CGPath(roundedRect: CGRect(x: -width / 2, y: -height / 2, width: width, height: height), cornerWidth: corner, cornerHeight: corner, transform: nil)
                default:
                    path = CGPath(rect: CGRect(x: -width / 2, y: -height / 2, width: width, height: height), transform: nil)
                }
                
                context.setFillColor(color)
                context.addPath(path)
                context.fillPath()
                
                context.restoreGState()
                
            }
            
            let wSize = rect.size.width * 0.004
            let hSize = rect.size.height * 0.004
            
            // Stems and Beams
            // Color1
            
            path = CGPath(roundedRect: CGRect(x: rect.size.width * 0.35, y: rect.size.height * 0.25, width: 15 * wSize, height: rect.size.width * 0.52), cornerWidth: 7 * wSize, cornerHeight: 7 * hSize, transform: nil)
            context.setFillColor(color1)
            context.addPath(path)
            context.fillPath()
            
            path = CGPath(roundedRect: CGRect(x: rect.size.width * 0.75, y: rect.size.height * 0.15, width: 15 * wSize, height: rect.size.width * 0.52), cornerWidth: 7 * wSize, cornerHeight: 7 * hSize, transform: nil)
            context.setFillColor(color1)
            context.addPath(path)
            context.fillPath()
            
            createRotatedShape(shape: .roundedRect, xPosition: rect.size.width * 0.35, yPosition: rect.size.height * 0.2, width: rect.size.width * 0.46, height: 15 * hSize, rotation: -.pi / 12.75, corner: 7 * wSize, color: color1)
            
            createRotatedShape(shape: .roundedRect, xPosition: rect.size.width * 0.35, yPosition: rect.size.height * 0.33, width: rect.size.width * 0.46, height: 15 * hSize, rotation: -.pi / 12.75, corner: 7 * wSize, color: color1)
            
            // Color2
            
            path = CGPath(roundedRect: CGRect(x: rect.size.width * 0.36, y: rect.size.height * 0.27, width: 7 * wSize, height: rect.size.width * 0.48), cornerWidth: 3 * wSize, cornerHeight: 3 * hSize, transform: nil)
            context.setFillColor(color2)
            context.addPath(path)
            context.fillPath()
            
            path = CGPath(roundedRect: CGRect(x: rect.size.width * 0.76, y: rect.size.height * 0.17, width: 7 * wSize, height: rect.size.width * 0.48), cornerWidth: 3 * wSize, cornerHeight: 3 * hSize, transform: nil)
            context.setFillColor(color2)
            context.addPath(path)
            context.fillPath()
            
            createRotatedShape(shape: .roundedRect, xPosition: rect.size.width * 0.36, yPosition: rect.size.height * 0.21, width: rect.size.width * 0.43, height: 7 * hSize, rotation: -.pi / 12.75, corner: 3 * wSize, color: color2)
            
            createRotatedShape(shape: .roundedRect, xPosition: rect.size.width * 0.36, yPosition: rect.size.height * 0.34, width: rect.size.width * 0.43, height: 7 * hSize, rotation: -.pi / 12.75, corner: 3 * wSize, color: color2)
            
            // Color3
            
            path = CGPath(roundedRect: CGRect(x: rect.size.width * 0.365, y: rect.size.height * 0.28, width: 2 * wSize, height: rect.size.width * 0.4), cornerWidth: 1 * wSize, cornerHeight: 1 * hSize, transform: nil)
            context.setFillColor(color3)
            context.addPath(path)
            context.fillPath()
            
            path = CGPath(roundedRect: CGRect(x: rect.size.width * 0.765, y: rect.size.height * 0.18, width: 2 * wSize, height: rect.size.width * 0.4), cornerWidth: 1 * wSize, cornerHeight: 1 * hSize, transform: nil)
            context.setFillColor(color3)
            context.addPath(path)
            context.fillPath()
            
            createRotatedShape(shape: .roundedRect, xPosition: rect.size.width * 0.38, yPosition: rect.size.height * 0.215, width: rect.size.width * 0.38, height: 2 * hSize, rotation: -.pi / 12.75, corner: 1 * wSize, color: color3)
            
            createRotatedShape(shape: .roundedRect, xPosition: rect.size.width * 0.39, yPosition: rect.size.height * 0.345, width: rect.size.width * 0.37, height: 2 * hSize, rotation: -.pi / 12.75, corner: 1 * wSize, color: color3)
            
            
            // Noteheads
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.12, yPosition: rect.size.height * 0.7, width: rect.size.width * 0.3, height: rect.size.height * 0.2, rotation: -.pi / 6, corner: 0, color: color1)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.52, yPosition: rect.size.height * 0.6, width: rect.size.width * 0.3, height: rect.size.height * 0.2, rotation: -.pi / 6, corner: 0, color: color1)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.16, yPosition: rect.size.height * 0.72, width: rect.size.width * 0.23, height: rect.size.height * 0.13, rotation: -.pi / 6, corner: 0, color: color2)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.56, yPosition: rect.size.height * 0.62, width: rect.size.width * 0.23, height: rect.size.height * 0.13, rotation: -.pi / 6, corner: 0, color: color2)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.2, yPosition: rect.size.height * 0.76, width: rect.size.width * 0.05, height: rect.size.height * 0.02, rotation: -.pi / 5, corner: 0, color: color3)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.6, yPosition: rect.size.height * 0.66, width: rect.size.width * 0.05, height: rect.size.height * 0.02, rotation: -.pi / 5, corner: 0, color: color3)
            
        }
    }
    
}
