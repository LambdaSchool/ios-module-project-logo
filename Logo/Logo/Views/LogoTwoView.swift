//
//  LogoTwoView.swift
//  Logo
//
//  Created by Cora Jacobson on 7/27/20.
//  Copyright © 2020 Cora Jacobson. All rights reserved.
//

import UIKit

@IBDesignable
class LogoTwoView: UIView {
    
    var name: String = "Dice"
    
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
                        
            // Back facet
            var path = CGPath(roundedRect: CGRect(x: rect.size.width * 0.35, y: rect.size.height * 0.15, width: rect.size.width * 0.45, height: rect.size.height * 0.45), cornerWidth: 5 * wSize, cornerHeight: 5 * hSize, transform: nil)
            context.setFillColor(color1)
            context.addPath(path)
            context.fillPath()
            
            context.setStrokeColor(color2)
            context.setLineWidth(5 * wSize)
            context.addPath(path)
            context.strokePath()
            
            path = CGPath(ellipseIn: CGRect(x: rect.size.width * 0.4, y: rect.size.height * 0.22, width: 20 * wSize, height: 20 * hSize), transform: nil)
            context.setFillColor(color3)
            context.addPath(path)
            context.fillPath()
            
            path = CGPath(ellipseIn: CGRect(x: rect.size.width * 0.54, y: rect.size.height * 0.22, width: 20 * wSize, height: 20 * hSize), transform: nil)
            context.addPath(path)
            context.fillPath()
            
            path = CGPath(ellipseIn: CGRect(x: rect.size.width * 0.67, y: rect.size.height * 0.22, width: 20 * wSize, height: 20 * hSize), transform: nil)
            context.addPath(path)
            context.fillPath()
            
            path = CGPath(ellipseIn: CGRect(x: rect.size.width * 0.4, y: rect.size.height * 0.45, width: 20 * wSize, height: 20 * hSize), transform: nil)
            context.addPath(path)
            context.fillPath()
            
            path = CGPath(ellipseIn: CGRect(x: rect.size.width * 0.54, y: rect.size.height * 0.45, width: 20 * wSize, height: 20 * hSize), transform: nil)
            context.addPath(path)
            context.fillPath()
            
            path = CGPath(ellipseIn: CGRect(x: rect.size.width * 0.67, y: rect.size.height * 0.45, width: 20 * wSize, height: 20 * hSize), transform: nil)
            context.addPath(path)
            context.fillPath()
            
            // Left facet
            context.setFillColor(color1)
            context.beginPath()
            context.move(to: CGPoint(x: rect.size.width * 0.35, y: rect.size.height * 0.15))
            context.addLine(to: CGPoint(x: rect.size.width * 0.35, y: rect.size.height * 0.6))
            context.addLine(to: CGPoint(x: rect.size.width * 0.2, y: rect.size.height * 0.8))
            context.addLine(to: CGPoint(x: rect.size.width * 0.2, y: rect.size.height * 0.3))
            context.closePath()
            context.fillPath()
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.23, yPosition: rect.size.height * 0.59, width: 9 * wSize, height: 20 * hSize, rotation: .pi * 0.07, corner: 0, color: color3)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.265, yPosition: rect.size.height * 0.41, width: 9 * wSize, height: 20 * hSize, rotation: .pi * 0.07, corner: 0, color: color3)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.3, yPosition: rect.size.height * 0.25, width: 9 * wSize, height: 20 * hSize, rotation: .pi * 0.07, corner: 0, color: color3)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.3, yPosition: rect.size.height * 0.5, width: 9 * wSize, height: 20 * hSize, rotation: .pi * 0.07, corner: 0, color: color3)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.23, yPosition: rect.size.height * 0.32, width: 9 * wSize, height: 20 * hSize, rotation: .pi * 0.07, corner: 0, color: color3)
            
            // Bottom facet
            context.move(to: CGPoint(x: rect.size.width * 0.2, y: rect.size.height * 0.8))
            context.addLine(to: CGPoint(x: rect.size.width * 0.7, y: rect.size.height * 0.8))
            context.addLine(to: CGPoint(x: rect.size.width * 0.8, y: rect.size.height * 0.6))
            context.addLine(to: CGPoint(x: rect.size.width * 0.35, y: rect.size.height * 0.6))
            context.closePath()
            context.fillPath()
            
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.29, yPosition: rect.size.height * 0.72, width: 24 * wSize, height: 12 * hSize, rotation: .pi * -0.05, corner: 0, color: color3)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.56, yPosition: rect.size.height * 0.72, width: 24 * wSize, height: 12 * hSize, rotation: .pi * -0.05, corner: 0, color: color3)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.63, yPosition: rect.size.height * 0.62, width: 24 * wSize, height: 12 * hSize, rotation: .pi * -0.05, corner: 0, color: color3)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.37, yPosition: rect.size.height * 0.62, width: 24 * wSize, height: 12 * hSize, rotation: .pi * -0.05, corner: 0, color: color3)
            
            context.setAlpha(0.7)
            context.setFillColor(color1)
            
            // Right facet
            context.move(to: CGPoint(x: rect.size.width * 0.8, y: rect.size.height * 0.15))
            context.addLine(to: CGPoint(x: rect.size.width * 0.8, y: rect.size.height * 0.6))
            context.addLine(to: CGPoint(x: rect.size.width * 0.7, y: rect.size.height * 0.8))
            context.addLine(to: CGPoint(x: rect.size.width * 0.7, y: rect.size.height * 0.3))
            context.closePath()
            context.fillPath()
            
            context.setAlpha(1)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.72, yPosition: rect.size.height * 0.54, width: 9 * wSize, height: 20 * hSize, rotation: .pi * 0.07, corner: 0, color: color3)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.75, yPosition: rect.size.height * 0.26, width: 9 * wSize, height: 20 * hSize, rotation: .pi * 0.07, corner: 0, color: color3)
            
            // Top facet
            context.setAlpha(0.7)
            
            context.move(to: CGPoint(x: rect.size.width * 0.8, y: rect.size.height * 0.15))
            context.addLine(to: CGPoint(x: rect.size.width * 0.7, y: rect.size.height * 0.3))
            context.addLine(to: CGPoint(x: rect.size.width * 0.2, y: rect.size.height * 0.3))
            context.addLine(to: CGPoint(x: rect.size.width * 0.35, y: rect.size.height * 0.15))
            context.closePath()
            context.fillPath()
            
            context.setAlpha(1)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.47, yPosition: rect.size.height * 0.2, width: 24 * wSize, height: 12 * hSize, rotation: .pi * -0.05, corner: 0, color: color3)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.3, yPosition: rect.size.height * 0.23, width: 24 * wSize, height: 12 * hSize, rotation: .pi * -0.05, corner: 0, color: color3)
            
            createRotatedShape(shape: .ellipse, xPosition: rect.size.width * 0.65, yPosition: rect.size.height * 0.17, width: 24 * wSize, height: 12 * hSize, rotation: .pi * -0.05, corner: 0, color: color3)
            
            // Side edges
            
            createRotatedShape(shape: .roundedRect, xPosition: rect.size.width * 0.16, yPosition: rect.size.height * 0.22, width: rect.size.width * 0.24, height: 5 * hSize, rotation: -.pi / 4, corner: 2 * wSize, color: color2)
            
            createRotatedShape(shape: .roundedRect, xPosition: rect.size.width * 0.16, yPosition: rect.size.height * 0.68, width: rect.size.width * 0.24, height: 5 * hSize, rotation: -.pi / 3.4, corner: 2 * wSize, color: color2)
            
            createRotatedShape(shape: .roundedRect, xPosition: rect.size.width * 0.645, yPosition: rect.size.height * 0.22, width: rect.size.width * 0.2, height: 5 * hSize, rotation: -.pi / 3.2, corner: 2 * wSize, color: color2)
            
            createRotatedShape(shape: .roundedRect, xPosition: rect.size.width * 0.63, yPosition: rect.size.height * 0.68, width: rect.size.width * 0.23, height: 5 * hSize, rotation: -.pi / 2.9, corner: 2 * wSize, color: color2)
            
            context.setAlpha(0.7)
            
            // Front facet
            path = CGPath(roundedRect: CGRect(x: rect.size.width * 0.2, y: rect.size.height * 0.3, width: rect.size.width * 0.5, height: rect.size.height * 0.5), cornerWidth: 5 * wSize, cornerHeight: 5 * hSize, transform: nil)
            context.setFillColor(color1)
            context.addPath(path)
            context.fillPath()
            
            context.setAlpha(1)
            
            context.setStrokeColor(color2)
            context.setLineWidth(5 * wSize)
            context.addPath(path)
            context.strokePath()
                        
            path = CGPath(ellipseIn: CGRect(x: rect.size.width * 0.402, y: rect.size.height * 0.502, width: 24 * wSize, height: 24 * hSize), transform: nil)
            context.setFillColor(color3)
            context.addPath(path)
            context.fillPath()
        }
    }
    
}
