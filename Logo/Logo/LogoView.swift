//
//  LogoView.swift
//  Logo
//
//  Created by Chris Gonzales on 2/19/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

import UIKit

class LogoView: UIView {
    
    var logoView: UIView!
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    
    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()!
        
        // MARK: - Properties
        
        let xOrigin = rect.origin.x
        let yOrigin = rect.origin.y
        
        // Colors
        
        let green = UIColor(red: 0.243,
                            green: 0.782,
                            blue: 0.000,
                            alpha: 1)
        let yellow = UIColor(red: 0.845,
                             green: 0.757,
                             blue: 0.095,
                             alpha: 1)
        let blue = UIColor(red: 0.320,
                           green: 0.488,
                           blue: 0.800,
                           alpha: 1)
        let orange = UIColor(red: 0.896,
                             green: 0.368,
                             blue: 0.196,
                             alpha: 1)
        //        let greenYellow = [green, yellow]
        
        
        let greenBGColor = green.withAlphaComponent(0.3)
        
        //        let gradient2 = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors:greenYellow as CFArray, locations: [CGFloat(0.0), CGFloat(1.0)])!
        //
        //        let gradient = CGGradient(colorsSpace: nil, colors: [
        //            ],
        //                                  locations: <#T##UnsafePointer<CGFloat>?#>)
        
        //
        //         var gradientView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 35))
        //         let gradientLayer:CAGradientLayer = CAGradientLayer()
        //         gradientLayer.frame.size = self.gradientView.frame.size
        //         gradientLayer.colors =
        //         [UIColor.white.cgColor,UIColor.red.withAlphaComponent(1).cgColor]
        //        //Use diffrent colors
        //         gradientView.layer.addSublayer(gradientLayer)
        
        // MARK: Background images
        
//        let centerRectanglePath = UIBezierPath(rect: CGRect(x: xOrigin + 40,
//                                                            y: yOrigin + 3,
//                                                            width: 116,
//                                                            height: 143))
        let centerRectanglePath = UIBezierPath(rect: CGRect(x: xOrigin + 40,
                                                            y: yOrigin + 3,
                                                            width: 116,
                                                            height: 143))
        
        greenBGColor.setFill()
        centerRectanglePath.fill()
        
        let tallRightRectanglePath = UIBezierPath(rect: CGRect(x: xOrigin + 156,
                                                               y: yOrigin + 14,
                                                               width: 16,
                                                               height: 123))
        greenBGColor.setFill()
        tallRightRectanglePath.fill()
        
        let smallRightRectanglePath = UIBezierPath(rect: CGRect(x: xOrigin + 172,
                                                                y: yOrigin + 67,
                                                                width: 16,
                                                                height: 17))
        greenBGColor.setFill()
        smallRightRectanglePath.fill()
        
        
        let tallLeftrectanglePath = UIBezierPath(rect: CGRect(x: xOrigin + 27,
                                                              y: yOrigin + 17,
                                                              width: 13,
                                                              height: 119))
        greenBGColor.setFill()
        tallLeftrectanglePath.fill()
        
        
        let smallLeftRectanglePath = UIBezierPath(rect: CGRect(x: xOrigin + 14,
                                                               y: yOrigin + 67,
                                                               width: 13,
                                                               height: 17))
        greenBGColor.setFill()
        smallLeftRectanglePath.fill()
        
        // MARK: Lines
        
        // Line Circle 1 to 3
        
        context.setStrokeColor(UIColor.gray.cgColor)
        context.beginPath()
        context.move(to: CGPoint(x: xOrigin + 106.5,
                                 y: yOrigin + 37.5))
        context.setLineWidth(CGFloat(1))
        context.addLine(to: CGPoint(x: xOrigin + 130.5,
                                    y: yOrigin + 84.5))
        context.strokePath()
        
        // Line Circle 1 to 3
        
        context.setStrokeColor(UIColor.gray.cgColor)
        context.beginPath()
        context.move(to: CGPoint(x: xOrigin + 105.5,
                                 y: yOrigin + 37.5))
        context.setLineWidth(CGFloat(1))
        context.addLine(to: CGPoint(x: xOrigin + 119.5,
                                    y: yOrigin + 127.5))
        context.strokePath()
        
        // Circle 1 to 4
        
        context.setStrokeColor(UIColor.gray.cgColor)
        context.beginPath()
        context.move(to: CGPoint(x: xOrigin + 67.5,
                                 y: yOrigin + 114.5))
        context.setLineWidth(CGFloat(1))
        context.addLine(to: CGPoint(x: xOrigin + 105.5,
                                    y: yOrigin + 37.5))
        context.strokePath()
        
        // Line Box 3 to 1
        
        context.setStrokeColor(UIColor.gray.cgColor)
        context.beginPath()
        context.move(to: CGPoint(x: xOrigin + 53.5,
                                 y: yOrigin + 77.5))
        context.setLineWidth(CGFloat(1))
        context.addLine(to: CGPoint(x: xOrigin + 153.5,
                                    y: yOrigin + 43.5))
        context.strokePath()
        
        // Line Box 3 to 2
        
        context.setStrokeColor(UIColor.gray.cgColor)
        context.beginPath()
        context.move(to: CGPoint(x: xOrigin + 55.5,
                                 y: yOrigin + 75.5))
        context.setLineWidth(CGFloat(1))
        context.addLine(to: CGPoint(x: xOrigin + 154.5,
                                    y: yOrigin + 109.5))
        context.strokePath()
        
        // Line: Box 3 to 4
        
        context.setStrokeColor(UIColor.gray.cgColor)
        context.beginPath()
        context.move(to: CGPoint(x: xOrigin + 61.5,
                                 y: yOrigin + 31.5))
        context.setLineWidth(CGFloat(1))
        context.addLine(to: CGPoint(x: xOrigin + 53.5,
                                    y: yOrigin + 77.5))
        context.strokePath()
        
        
        // MARK: Box and circle objects
        
        let rectanglePath = UIBezierPath(roundedRect: CGRect(x: xOrigin + 55,
                                                             
                                                             y: yOrigin + 26, width: 12, height: 12), cornerRadius: 2)
        blue.setFill()
        rectanglePath.fill()
        
        let rectangle3Path = UIBezierPath(roundedRect: CGRect(x: xOrigin + 41,
                                                              y: yOrigin + 64,
                                                              width: 26,
                                                              height: 26),
                                          cornerRadius: 2)
        context.saveGState()
        rectangle3Path.addClip()
        UIColor.systemTeal.setFill()
        rectangle3Path.fill()
        context.restoreGState()
        
        let rectangle1Path = UIBezierPath(roundedRect: CGRect(x: xOrigin + 148,
                                                              y: yOrigin + 38,
                                                              width: 11,
                                                              height: 11),
                                          cornerRadius: 2)
        green.setFill()
        rectangle1Path.fill()
        
        let rectangle2Path = UIBezierPath(roundedRect: CGRect(x: xOrigin + 148,
                                                              y: yOrigin + 103,
                                                              width: 12,
                                                              height: 12),
                                          cornerRadius: 2)
        orange.setFill()
        rectangle2Path.fill()
        
        let oval1Path = UIBezierPath(ovalIn: CGRect(x: xOrigin + 125,
                                                    y: yOrigin + 78,
                                                    width: 12,
                                                    height: 12))
        blue.setFill()
        oval1Path.fill()
        
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: xOrigin + 113,
                                                    y: yOrigin + 121,
                                                    width: 12,
                                                    height: 12))
        yellow.setFill()
        oval2Path.fill()
        
        let oval3Path = UIBezierPath(ovalIn: CGRect(x: xOrigin + 61,
                                                    y: yOrigin + 109,
                                                    width: 12,
                                                    height: 12))
        green.setFill()
        oval3Path.fill()
        
        let oval4Path = UIBezierPath(ovalIn: CGRect(x: xOrigin + 93,
                                                    y: yOrigin + 23,
                                                    width: 26,
                                                    height: 26))
        context.saveGState()
        oval4Path.addClip()
        UIColor.purple.setFill()
        oval4Path.fill()
        context.restoreGState()
        
        // MARK: Symbols
        
        let textRect = CGRect(x: xOrigin + 0,
                              y: yOrigin + 5,
                              width: 83,
                              height: 158)
        let textTextContent = "{"
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .left
        let textFontAttributes = [
            .font: UIFont.systemFont(ofSize: 170),
            .foregroundColor: UIColor.black,
            .paragraphStyle: textStyle,
            ] as [NSAttributedString.Key: Any]
        
        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + textRect.height - textTextHeight, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
        
        
        let text2Rect = CGRect(x: xOrigin + 148,
                               y: yOrigin + 5,
                               width: 55,
                               height: 158)
        let text2TextContent = "}"
        let text2Style = NSMutableParagraphStyle()
        text2Style.alignment = .right
        let text2FontAttributes = [
            .font: UIFont.systemFont(ofSize: 170),
            .foregroundColor: UIColor.black,
            .paragraphStyle: text2Style,
            ] as [NSAttributedString.Key: Any]
        
        let text2TextHeight: CGFloat = text2TextContent.boundingRect(with: CGSize(width: text2Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text2FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text2Rect)
        text2TextContent.draw(in: CGRect(x: text2Rect.minX, y: text2Rect.minY + text2Rect.height - text2TextHeight, width: text2Rect.width, height: text2TextHeight), withAttributes: text2FontAttributes)
        context.restoreGState()
        
        // MARK: Text
        
        let text3Rect = CGRect(x: xOrigin + 0,
                               y: yOrigin + 146,
                               width: 202,
                               height: 33)
        let text3TextContent = "Coding Geek"
        let text3Style = NSMutableParagraphStyle()
        text3Style.alignment = .center
        let text3FontAttributes = [
            .font: UIFont(name: "MarkerFelt-Wide", size: 28.5)!,
            .foregroundColor: UIColor.black,
            .paragraphStyle: text3Style,
            ] as [NSAttributedString.Key: Any]
        
        let text3TextHeight: CGFloat = text3TextContent.boundingRect(with: CGSize(width: text3Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text3FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text3Rect)
        text3TextContent.draw(in: CGRect(x: text3Rect.minX, y: text3Rect.minY + (text3Rect.height - text3TextHeight) / 2, width: text3Rect.width, height: text3TextHeight), withAttributes: text3FontAttributes)
        context.restoreGState()
        
        let text4Rect = CGRect(x: xOrigin + 56,
                               y: yOrigin + 178,
                               width: 101,
                               height: 23)
        let text4TextContent = "a C.G. Development Company"
        let text4Style = NSMutableParagraphStyle()
        text4Style.alignment = .center
        let text4FontAttributes = [
            .font: UIFont(name: "Zapfino", size: 5)!,
            .foregroundColor: UIColor.black,
            .paragraphStyle: text4Style,
            ] as [NSAttributedString.Key: Any]
        
        let text4TextHeight: CGFloat = text4TextContent.boundingRect(with: CGSize(width: text4Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text4FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text4Rect)
        text4TextContent.draw(in: CGRect(x: text4Rect.minX, y: text4Rect.minY + (text4Rect.height - text4TextHeight) / 2, width: text4Rect.width, height: text4TextHeight), withAttributes: text4FontAttributes)
        context.restoreGState()
    }
}
