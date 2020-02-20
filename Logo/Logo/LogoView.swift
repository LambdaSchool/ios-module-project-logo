//
//  LogoView.swift
//  Logo
//
//  Created by Chris Gonzales on 2/19/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

import UIKit

class LogoView: UIView {
    
    var logoView =  UIView()
    
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        logoView.contentMode = .scaleAspectFill
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        logoView.contentMode = .scaleAspectFill
    }
    
    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()!
        
        // MARK: - Properties
        
        let xOrigin = rect.origin.x
        let yOrigin = rect.origin.y
        let xMid = rect.midX
        let yMid = rect.midY
        let xMax = rect.maxX
        let yMax = rect.midY
        let width = rect.width
        let height = rect.height
        let lineWidth: CGFloat = 2
        
        
        
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
        let greenBGColor = green.withAlphaComponent(0.3)
        
        // MARK: Background images
        
        let centerRectanglePath = UIBezierPath(rect: CGRect(x: rect.midX * 0.4,
                                                            y: rect.midY * 0.355,
                                                            width: rect.height * 0.6,
                                                            height: rect.height * 0.565))
        
        greenBGColor.setFill()
        centerRectanglePath.fill()
        
        let tallRightRectanglePath = UIBezierPath(rect: CGRect(x: rect.maxX - (rect.width * 0.2),
                                                               y: yOrigin + rect.height * 0.20,
                                                               width: rect.width * 0.1,
                                                               height: rect.height * 0.5))
        greenBGColor.setFill()
        tallRightRectanglePath.fill()
        
        let smallRightRectanglePath = UIBezierPath(rect: CGRect(x: rect.maxX - (rect.width * 0.1),
                                                                y: rect.midY - (rect.width * 0.06),
                                                                width: rect.width * 0.05,
                                                                height: rect.height * 0.05))
        greenBGColor.setFill()
        smallRightRectanglePath.fill()
        
        
        let tallLeftrectanglePath = UIBezierPath(rect: CGRect(x: xOrigin + (rect.width * 0.1),
                                                              y: rect.midY * 0.4,
                                                              width: rect.width * 0.1,
                                                              height: rect.height * 0.51))
        greenBGColor.setFill()
        tallLeftrectanglePath.fill()
        
        
        let smallLeftRectanglePath = UIBezierPath(rect: CGRect(x: rect.width * 0.05,
                                                               y: yOrigin + (rect.width * 0.425),
                                                               width: rect.width * 0.05,
                                                               height: rect.height * 0.05))
        greenBGColor.setFill()
        smallLeftRectanglePath.fill()
        
        // MARK: Lines
        
        // Line Circle 1 to 4
        
        context.setStrokeColor(UIColor.gray.cgColor)
        context.beginPath()
        context.move(to: CGPoint(x: rect.midX ,
                                 y: rect.midY - (rect.height * 0.2)))
        context.setLineWidth(lineWidth)
        context.addLine(to: CGPoint(x: xMid - (width * 0.19),
                                    y: yMid - height * 0.04))
        context.strokePath()
        
        // Line Circle 1 to 3
        
        context.setStrokeColor(UIColor.gray.cgColor)
        context.beginPath()
        context.move(to: CGPoint(x: xMid,
                                 y: rect.midY - rect.height * 0.2))
        context.setLineWidth(lineWidth)
        context.addLine(to: CGPoint(x: xMid - width * 0.115,
                                    y: yMax + height * 0.18))
        context.strokePath()
        
        // Circle 1 to 2
        
        context.setStrokeColor(UIColor.gray.cgColor)
        context.beginPath()
        context.move(to: CGPoint(x: xMid,
                                 y: rect.midY - rect.height * 0.2))
        context.setLineWidth(lineWidth)
        //test
        context.addLine(to: CGPoint(x: xMid + (width * 0.29),
                                    y: yMid + height * 0.015))
        context.strokePath()
        
        // Line Box 3 to 1
        
        
        
        context.setStrokeColor(UIColor.gray.cgColor)
        context.beginPath()
        context.move(to: CGPoint(x: xMid - width * 0.24,
                                 y: yMid + height * 0.12))
        context.setLineWidth(lineWidth)
        context.addLine(to: CGPoint(x: xMid - width * 0.22,
                                    y: yMid - height * 0.25))
        context.strokePath()
        
        // Line Box 3 to 2
        
        context.setStrokeColor(UIColor.gray.cgColor)
        context.beginPath()
        context.move(to: CGPoint(x: xMid - width * 0.24,
                                 y: yMid + height * 0.12))
        context.setLineWidth(lineWidth)
        context.addLine(to: CGPoint(x: xMid + width * 0.27,
                                    y: yMid - height * 0.2))
        context.strokePath()
        
        // Line: Box 3 to 4
        
        //x: xMid + (width * 0.18), y: yMid + (height * 0.1)
        context.setStrokeColor(UIColor.gray.cgColor)
        context.beginPath()
        context.move(to: CGPoint(x: xMid - width * 0.24,
                                 y: yMid + height * 0.12))
        context.setLineWidth(lineWidth)
        context.addLine(to: CGPoint(x: xMid + width * 0.2,
                                    y: yMid + height * 0.135))
        context.strokePath()
        
        
        // MARK: Box and circle objects
        
        let blueBoxPath = UIBezierPath(roundedRect: CGRect(x: rect.midX - (rect.width * 0.25),
                                                           
                                                           y: rect.midY - (rect.height * 0.25), width: rect.width * 0.06,
                                                           height: rect.width * 0.06),
                                       cornerRadius: 2)
        blue.setFill()
        blueBoxPath.fill()
        
        let skyBlueBoxPath = UIBezierPath(roundedRect: CGRect(x: rect.midX - (rect.width * 0.3),
                                                              y: rect.midY + (rect.height * 0.05),
                                                              width: rect.width * 0.1,
                                                              height: rect.width * 0.1),
                                          cornerRadius: 2)
        UIColor.systemTeal.setFill()
        skyBlueBoxPath.fill()
        
        let greenBoxPath = UIBezierPath(roundedRect: CGRect(x: rect.midX + (width * 0.25),
                                                            y: yMid - (height * 0.22),
                                                            width: rect.width * 0.06,
                                                            height: rect.width * 0.06),
                                        cornerRadius: 2)
        green.setFill()
        greenBoxPath.fill()
        
        let redBoxPath = UIBezierPath(roundedRect: CGRect(x: xMid + (width * 0.18),
                                                          y: yMid + (height * 0.1),
                                                          width: rect.width * 0.06,
                                                          height: rect.width * 0.06),
                                      cornerRadius: 2)
        orange.setFill()
        redBoxPath.fill()
        
        let blueSpherePath = UIBezierPath(ovalIn: CGRect(x: xMid + (width * 0.27),
                                                         y: yMid,
                                                         width: rect.width * 0.06,
                                                         height: rect.width * 0.06))
        blue.setFill()
        blueSpherePath.fill()
        
        let yellowSpherePath = UIBezierPath(ovalIn: CGRect(x: xMid - (width * 0.15),
                                                           y: yMid + (height * 0.16),
                                                           width: rect.width * 0.06,
                                                           height: rect.width * 0.06))
        yellow.setFill()
        yellowSpherePath.fill()
        
        let greenSpherePath = UIBezierPath(ovalIn: CGRect(x: xMid - (width * 0.2),
                                                          y: yMid - (height * 0.08),
                                                          width: rect.width * 0.06,
                                                          height: rect.width * 0.06))
        green.setFill()
        greenSpherePath.fill()
        
        let purpleSpherePath = UIBezierPath(ovalIn: CGRect(x: xMid - (width * 0.05),
                                                           y: yMid - (width * 0.25),
                                                           width: rect.width * 0.1,
                                                           height: rect.width * 0.1))
        UIColor.purple.setFill()
        purpleSpherePath.fill()
        
        // MARK: Symbols
        
        let textRect = CGRect(x:  xOrigin,
                              y: yOrigin,
                              width: rect.width / 5,
                              height: rect.height * 0.8)
        let textTextContent = "{"
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .left
        
        let textFontAttributes = [
            .font: UIFont.systemFont(ofSize: 275),
            .foregroundColor: UIColor.black,
            .paragraphStyle: textStyle,
            ] as [NSAttributedString.Key: Any]
        
        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + textRect.height - textTextHeight, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
        
        
        let text2Rect = CGRect(x: rect.maxX - (rect.width / 4.8),
                               y: (yOrigin + (rect.height * 0.005)),
                               width: rect.width / 5,
                               height: rect.height * 0.8)
        let text2TextContent = "}"
        let text2Style = NSMutableParagraphStyle()
        text2Style.alignment = .right
        let text2FontAttributes = [
            .font: UIFont.systemFont(ofSize: 275),
            .foregroundColor: UIColor.black,
            .paragraphStyle: text2Style,
            ] as [NSAttributedString.Key: Any]
        
        let text2TextHeight: CGFloat = text2TextContent.boundingRect(with: CGSize(width: text2Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text2FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text2Rect)
        text2TextContent.draw(in: CGRect(x: text2Rect.minX, y: text2Rect.minY + text2Rect.height - text2TextHeight, width: text2Rect.width, height: text2TextHeight), withAttributes: text2FontAttributes)
        context.restoreGState()
        
        // MARK: Text
        
        let text3Rect = CGRect(x: xOrigin,
                               y: yMid + height * 0.2,
                               width: width,
                               height: height * 0.2)
        let text3TextContent = "Coding Geek"
        let text3Style = NSMutableParagraphStyle()
        text3Style.alignment = .center
        let text3FontAttributes = [
            .font: UIFont(name: "MarkerFelt-Wide", size: 60)!,
            .foregroundColor: UIColor.black,
            .paragraphStyle: text3Style,
            ] as [NSAttributedString.Key: Any]
        
        let text3TextHeight: CGFloat = text3TextContent.boundingRect(with: CGSize(width: text3Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text3FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text3Rect)
        text3TextContent.draw(in: CGRect(x: text3Rect.minX, y: text3Rect.minY + (text3Rect.height - text3TextHeight) / 2, width: text3Rect.width, height: text3TextHeight), withAttributes: text3FontAttributes)
        context.restoreGState()
        
        let text4Rect = CGRect(x: xOrigin,
                               y: yMid + (height * 0.35),
                               width: width,
                               height: height * 0.2)
        let text4TextContent = "a C.G. Development Company"
        let text4Style = NSMutableParagraphStyle()
        text4Style.alignment = .center
        let text4FontAttributes = [
            .font: UIFont(name: "Zapfino", size: 10)!,
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

//
//func characterHeight(rect: CGRect, constrainedBy width: CGFloat, with font: UIFont) -> CGFloat
//    {
//        let boundingRect = rect
//        let boundingWidth = boundingRect.width
//        let constraintSize = CGSize(width: boundingWidth, height: .greatestFiniteMagnitude)
//        let boundingBox = rect(with: constraintSize, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
//
//        return boundingBox.height
//    }
//
//func characterWidth(rect: CGRect, constrainedBy height: CGFloat, with font: UIFont) -> CGFloat
//    {
//        let boundingRect = rect
//        let constrainedSize = CGSize(width: .greatestFiniteMagnitude, height: height)
//        let boundingBox = boundingRect(with: constrainedSize, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
//
//        return boundingBox.width


