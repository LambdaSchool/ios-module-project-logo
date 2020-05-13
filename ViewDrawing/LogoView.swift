//
//  LogoView.swift
//  ViewDrawing
//
//  Created by Brian Rouse on 5/13/20.
//  Copyright © 2020 Brian Rouse. All rights reserved.
//

import UIKit

class LogoView: UIView {
    
    override func draw(_ rect: CGRect) {
        let color = UIColor(red: 0.729, green: 0.063, blue: 0.212, alpha: 1.000)
        var colorHueComponent: CGFloat = 1
        var colorSaturationComponent: CGFloat = 1
        var colorBrightnessComponent: CGFloat = 1
        color.getHue(&colorHueComponent, saturation: &colorSaturationComponent, brightness: &colorBrightnessComponent, alpha: nil)
        
        let color6 = UIColor(hue: colorHueComponent, saturation: colorSaturationComponent, brightness: 0, alpha: color.cgColor.alpha)
        let color2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        
        //Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 20.5, y: 140.5))
        bezierPath.addLine(to: CGPoint(x: 357.5, y: 140.5))
        bezierPath.addLine(to: CGPoint(x: 357.5, y: 360.75))
        bezierPath.addLine(to: CGPoint(x: 201.2, y: 523.5))
        bezierPath.addLine(to: CGPoint(x: 20.5, y: 360.75))
        bezierPath.addLine(to: CGPoint(x: 20.5, y: 140.5))
        bezierPath.addLine(to: CGPoint(x: 20.5, y: 140.5))
        bezierPath.close()
        color.setFill()
        bezierPath.fill()
        UIColor.black.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()
        
        
        //Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 285.5, y: 346.5))
        bezier2Path.addLine(to: CGPoint(x: 241.5, y: 346.5))
        bezier2Path.addLine(to: CGPoint(x: 193.5, y: 264.5))
        bezier2Path.addLine(to: CGPoint(x: 161.5, y: 346.5))
        bezier2Path.addLine(to: CGPoint(x: 112.5, y: 346.5))
        bezier2Path.addLine(to: CGPoint(x: 161.5, y: 212.5))
        bezier2Path.addLine(to: CGPoint(x: 214.5, y: 212.5))
        bezier2Path.addLine(to: CGPoint(x: 285.5, y: 346.5))
        bezier2Path.close()
        color2.setFill()
        bezier2Path.fill()
        color6.setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()
    }
}

class LogoView6: UIView {
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        //Color Declarations
        let color2 = UIColor(red: 0.413, green: 0.211, blue: 0.479, alpha: 1.000)
        let color3 = UIColor(red: 0.559, green: 0.605, blue: 0.379, alpha: 1.000)
        let color4 = UIColor(red: 0.575, green: 0.326, blue: 0.326, alpha: 1.000)
        let color5 = UIColor(red: 0.232, green: 0.131, blue: 0.460, alpha: 1.000)
        let color6 = UIColor(red: 0.183, green: 0.270, blue: 0.405, alpha: 1.000)
        let color7 = UIColor(red: 0.678, green: 0.351, blue: 0.041, alpha: 1.000)
        let color8 = UIColor(red: 0.073, green: 0.559, blue: 0.258, alpha: 1.000)
        let gradientColor = UIColor(red: 0.427, green: 0.214, blue: 0.214, alpha: 1.000)
        let shadowColor = UIColor(red: 0.346, green: 0.552, blue: 0.580, alpha: 1.000)
        
        //Gradient Declarations
        let gradient = CGGradient(colorsSpace: nil, colors: [gradientColor.cgColor, UIColor.white.cgColor] as CFArray, locations: [0, 1])!
        
        //Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = shadowColor
        shadow.shadowOffset = CGSize(width: 3, height: 3)
        shadow.shadowBlurRadius = 5
        
        //Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 300, height: 271))
        context.saveGState()
        rectanglePath.addClip()
        context.drawLinearGradient(gradient, start: CGPoint(x: 150, y: -0), end: CGPoint(x: 150, y: 271), options: [])
        context.restoreGState()
        
        
        //Star 7 Drawing
        let star7Path = UIBezierPath()
        star7Path.move(to: CGPoint(x: 149, y: 16))
        star7Path.addLine(to: CGPoint(x: 180.04, y: 54.08))
        star7Path.addLine(to: CGPoint(x: 232.69, y: 67.13))
        star7Path.addLine(to: CGPoint(x: 199.22, y: 103.72))
        star7Path.addLine(to: CGPoint(x: 200.73, y: 149.87))
        star7Path.addLine(to: CGPoint(x: 149, y: 134.4))
        star7Path.addLine(to: CGPoint(x: 97.27, y: 149.87))
        star7Path.addLine(to: CGPoint(x: 98.78, y: 103.72))
        star7Path.addLine(to: CGPoint(x: 65.31, y: 67.13))
        star7Path.addLine(to: CGPoint(x: 117.96, y: 54.08))
        star7Path.close()
        color8.setFill()
        star7Path.fill()
        
        
        //Star 6 Drawing
        let star6Path = UIBezierPath()
        star6Path.move(to: CGPoint(x: 149, y: 27))
        star6Path.addLine(to: CGPoint(x: 180.04, y: 65.08))
        star6Path.addLine(to: CGPoint(x: 232.69, y: 78.13))
        star6Path.addLine(to: CGPoint(x: 199.22, y: 114.72))
        star6Path.addLine(to: CGPoint(x: 200.73, y: 160.87))
        star6Path.addLine(to: CGPoint(x: 149, y: 145.4))
        star6Path.addLine(to: CGPoint(x: 97.27, y: 160.87))
        star6Path.addLine(to: CGPoint(x: 98.78, y: 114.72))
        star6Path.addLine(to: CGPoint(x: 65.31, y: 78.13))
        star6Path.addLine(to: CGPoint(x: 117.96, y: 65.08))
        star6Path.close()
        color7.setFill()
        star6Path.fill()
        
        
        //Star 2 Drawing
        let star2Path = UIBezierPath()
        star2Path.move(to: CGPoint(x: 149, y: 44))
        star2Path.addLine(to: CGPoint(x: 180.04, y: 82.08))
        star2Path.addLine(to: CGPoint(x: 232.69, y: 95.13))
        star2Path.addLine(to: CGPoint(x: 199.22, y: 131.72))
        star2Path.addLine(to: CGPoint(x: 200.73, y: 177.87))
        star2Path.addLine(to: CGPoint(x: 149, y: 162.4))
        star2Path.addLine(to: CGPoint(x: 97.27, y: 177.87))
        star2Path.addLine(to: CGPoint(x: 98.78, y: 131.72))
        star2Path.addLine(to: CGPoint(x: 65.31, y: 95.13))
        star2Path.addLine(to: CGPoint(x: 117.96, y: 82.08))
        star2Path.close()
        color6.setFill()
        star2Path.fill()
        
        
        //Star 3 Drawing
        let star3Path = UIBezierPath()
        star3Path.move(to: CGPoint(x: 149, y: 60))
        star3Path.addLine(to: CGPoint(x: 180.04, y: 98.08))
        star3Path.addLine(to: CGPoint(x: 232.69, y: 111.13))
        star3Path.addLine(to: CGPoint(x: 199.22, y: 147.72))
        star3Path.addLine(to: CGPoint(x: 200.73, y: 193.87))
        star3Path.addLine(to: CGPoint(x: 149, y: 178.4))
        star3Path.addLine(to: CGPoint(x: 97.27, y: 193.87))
        star3Path.addLine(to: CGPoint(x: 98.78, y: 147.72))
        star3Path.addLine(to: CGPoint(x: 65.31, y: 111.13))
        star3Path.addLine(to: CGPoint(x: 117.96, y: 98.08))
        star3Path.close()
        color5.setFill()
        star3Path.fill()
        
        
        //Bezier Drawing
        let bezierPath = UIBezierPath()
        UIColor.red.setFill()
        bezierPath.fill()
        
        
        //Star 4 Drawing
        let star4Path = UIBezierPath()
        star4Path.move(to: CGPoint(x: 149, y: 79))
        star4Path.addLine(to: CGPoint(x: 180.04, y: 117.08))
        star4Path.addLine(to: CGPoint(x: 232.69, y: 130.13))
        star4Path.addLine(to: CGPoint(x: 199.22, y: 166.72))
        star4Path.addLine(to: CGPoint(x: 200.73, y: 212.87))
        star4Path.addLine(to: CGPoint(x: 149, y: 197.4))
        star4Path.addLine(to: CGPoint(x: 97.27, y: 212.87))
        star4Path.addLine(to: CGPoint(x: 98.78, y: 166.72))
        star4Path.addLine(to: CGPoint(x: 65.31, y: 130.13))
        star4Path.addLine(to: CGPoint(x: 117.96, y: 117.08))
        star4Path.close()
        color4.setFill()
        star4Path.fill()
        
        
        //Star 5 Drawing
        let star5Path = UIBezierPath()
        star5Path.move(to: CGPoint(x: 149, y: 91))
        star5Path.addLine(to: CGPoint(x: 180.04, y: 129.08))
        star5Path.addLine(to: CGPoint(x: 232.69, y: 142.13))
        star5Path.addLine(to: CGPoint(x: 199.22, y: 178.72))
        star5Path.addLine(to: CGPoint(x: 200.73, y: 224.87))
        star5Path.addLine(to: CGPoint(x: 149, y: 209.4))
        star5Path.addLine(to: CGPoint(x: 97.27, y: 224.87))
        star5Path.addLine(to: CGPoint(x: 98.78, y: 178.72))
        star5Path.addLine(to: CGPoint(x: 65.31, y: 142.13))
        star5Path.addLine(to: CGPoint(x: 117.96, y: 129.08))
        star5Path.close()
        color3.setFill()
        star5Path.fill()
        
        
        //Star 8 Drawing
        let star8Path = UIBezierPath()
        star8Path.move(to: CGPoint(x: 149, y: 110))
        star8Path.addLine(to: CGPoint(x: 180.04, y: 148.08))
        star8Path.addLine(to: CGPoint(x: 232.69, y: 161.13))
        star8Path.addLine(to: CGPoint(x: 199.22, y: 197.72))
        star8Path.addLine(to: CGPoint(x: 200.73, y: 243.87))
        star8Path.addLine(to: CGPoint(x: 149, y: 228.4))
        star8Path.addLine(to: CGPoint(x: 97.27, y: 243.87))
        star8Path.addLine(to: CGPoint(x: 98.78, y: 197.72))
        star8Path.addLine(to: CGPoint(x: 65.31, y: 161.13))
        star8Path.addLine(to: CGPoint(x: 117.96, y: 148.08))
        star8Path.close()
        color2.setFill()
        star8Path.fill()
        
        
        //Text Drawing
        let textRect = CGRect(x: 85, y: 156, width: 128, height: 39)
        let textTextContent = "LAMBDA"
        context.saveGState()
        context.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        let textFontAttributes = [
            .font: UIFont(name: "SnellRoundhand", size: 20)!,
            .foregroundColor: color8,
            .paragraphStyle: textStyle,
            ] as [NSAttributedString.Key: Any]
        
        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
        context.restoreGState()
    }
}

class LogoView2: UIView {
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        //Color Declarations
        let color = UIColor(red: 0.423, green: 0.547, blue: 0.542, alpha: 1.000)
        
        //Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 50, y: 136, width: 279, height: 382))
        color.setFill()
        rectanglePath.fill()
        
        
        //Text Drawing
        let textRect = CGRect(x: 120, y: 369, width: 140, height: 90)
        let textTextContent = "Lambda"
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        let textFontAttributes = [
            .font: UIFont(name: "SnellRoundhand", size: 36)!,
            .foregroundColor: UIColor.green,
            .paragraphStyle: textStyle,
            ] as [NSAttributedString.Key: Any]
        
        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
        
        
        //Oval Drawing
        let ovalRect = CGRect(x: 85, y: 208, width: 209, height: 161)
        let ovalPath = UIBezierPath()
        ovalPath.addArc(withCenter: CGPoint.zero, radius: ovalRect.width / 2, startAngle: 118 * CGFloat.pi/180, endAngle: 60 * CGFloat.pi/180, clockwise: true)
        ovalPath.addLine(to: CGPoint.zero)
        ovalPath.close()
        
        var ovalTransform = CGAffineTransform(translationX: ovalRect.midX, y: ovalRect.midY)
        ovalTransform = ovalTransform.scaledBy(x: 1, y: ovalRect.height / ovalRect.width)
        ovalPath.apply(ovalTransform)
        
        UIColor.red.setFill()
        ovalPath.fill()
    }
}

class LogoView3: UIView {
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        //Color Declarations
        let color2 = UIColor(red: 0.197, green: 0.242, blue: 0.441, alpha: 1.000)
        let color3 = UIColor(red: 0.689, green: 0.225, blue: 0.225, alpha: 1.000)
        let color5 = UIColor(red: 0.869, green: 0.128, blue: 0.128, alpha: 1.000)
        
        //Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 10, y: 29, width: 329, height: 500))
        color3.setFill()
        ovalPath.fill()
        
        
        //Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 284, y: 107))
        bezierPath.addLine(to: CGPoint(x: 114, y: 512))
        bezierPath.addLine(to: CGPoint(x: 28, y: 162))
        bezierPath.addLine(to: CGPoint(x: 332, y: 274))
        bezierPath.addLine(to: CGPoint(x: 220, y: 512))
        bezierPath.addLine(to: CGPoint(x: 17, y: 314))
        bezierPath.addLine(to: CGPoint(x: 177, y: 34))
        bezierPath.addLine(to: CGPoint(x: 2844, y: 107))
        bezierPath.close()
        color2.setFill()
        bezierPath.fill()
        UIColor.green.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()
        
        
        //Text Drawing
        let textRect = CGRect(x: 85, y: 201, width: 60, height: 201)
        //Instantiate-pass Lambda into textTextContent use \n for line breaks.
        let textTextContent = "L\nA\nM\nB\nD\nA"
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        let textFontAttributes = [
            .font: UIFont(name: "Copperplate", size: 30)!,
            .foregroundColor: color5,
            .paragraphStyle: textStyle,
            ] as [NSAttributedString.Key: Any]
        
        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
    }
}

class LogoView4: UIView {
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        //Color Declarations
        let gradientColor = UIColor(red: 0.110, green: 0.353, blue: 0.110, alpha: 1.000)
        
        //Gradient Declarations
        let gradient = CGGradient(colorsSpace: nil, colors: [gradientColor.cgColor, UIColor.white.cgColor] as CFArray, locations: [0, 1])!
        
        //Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 25, y: 37, width: 250, height: 393))
        context.saveGState()
        ovalPath.addClip()
        context.drawLinearGradient(gradient, start: CGPoint(x: 150, y: 37), end: CGPoint(x: 150, y: 430), options: [])
        context.restoreGState()
        
        
        //Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 241, y: 103))
        bezierPath.addLine(to: CGPoint(x: 48, y: 339))
        bezierPath.addLine(to: CGPoint(x: 253, y: 339))
        bezierPath.addLine(to: CGPoint(x: 31, y: 166))
        bezierPath.addLine(to: CGPoint(x: 272, y: 251))
        bezierPath.addLine(to: CGPoint(x: 86, y: 69))
        bezierPath.addLine(to: CGPoint(x: 31, y: 281))
        context.saveGState()
        bezierPath.addClip()
        context.drawLinearGradient(gradient, start: CGPoint(x: 151.5, y: 69), end: CGPoint(x: 151.5, y: 339), options: [])
        context.restoreGState()
    }
}

class LogoView5: UIView {
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        //Color Declarations
        let color = UIColor(red: 0.510, green: 0.088, blue: 0.251, alpha: 1.000)
        let color2 = UIColor(red: 0.251, green: 0.320, blue: 0.369, alpha: 1.000)
        
        //Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 22, y: 36, width: 245, height: 359))
        color.setFill()
        ovalPath.fill()
        
        
        //Bezier Drawing
        let bezierPath = UIBezierPath()
        color.setFill()
        bezierPath.fill()
        
        
        //Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 115, y: 36))
        bezier2Path.addLine(to: CGPoint(x: 24, y: 228))
        bezier2Path.addLine(to: CGPoint(x: 115, y: 388))
        bezier2Path.addLine(to: CGPoint(x: 259, y: 266))
        bezier2Path.addLine(to: CGPoint(x: 238, y: 103))
        bezier2Path.addLine(to: CGPoint(x: 115, y: 36))
        bezier2Path.addLine(to: CGPoint(x: 184, y: 324))
        bezier2Path.addLine(to: CGPoint(x: 24, y: 216))
        bezier2Path.addLine(to: CGPoint(x: 238, y: 127))
        color2.setFill()
        bezier2Path.fill()
        
        
        //Text Drawing
        let textRect = CGRect(x: 182, y: 103, width: 44, height: 184)
        let textTextContent = "L\nA\nM\nB\nD\nA"
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        let textFontAttributes = [
            .font: UIFont(name: "BradleyHandITCTT-Bold", size: 22)!,
            .foregroundColor: UIColor.white,
            .paragraphStyle: textStyle,
            ] as [NSAttributedString.Key: Any]
        
        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
        
    }
}

class LogoView1: UIView {
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        //Color Declarations
        let gradientColor = UIColor(red: 0.741, green: 0.741, blue: 0.463, alpha: 1.000)
        let gradientColor2 = UIColor(red: 0.741, green: 0.000, blue: 0.000, alpha: 1.000)
        let color = UIColor(red: 0.000, green: 0.678, blue: 0.663, alpha: 1.000)
        let shadowColor = UIColor(red: 0.612, green: 0.490, blue: 0.490, alpha: 1.000)
        
        //Gradient Declarations
        let gradient = CGGradient(colorsSpace: nil, colors: [gradientColor.cgColor, UIColor.white.cgColor] as CFArray, locations: [0, 1])!
        
        //Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = shadowColor
        shadow.shadowOffset = CGSize(width: 3, height: 13)
        shadow.shadowBlurRadius = 5
        
        //Bezier Drawing
        let bezierPath = UIBezierPath()
        UIColor.red.setFill()
        bezierPath.fill()
        
        
        //Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 300, height: 420))
        context.saveGState()
        rectanglePath.addClip()
        context.drawLinearGradient(gradient, start: CGPoint(x: 150, y: -0), end: CGPoint(x: 150, y: 420), options: [])
        context.restoreGState()
        
        
        //Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 48, y: 89, width: 205, height: 188))
        context.saveGState()
        context.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        color.setStroke()
        ovalPath.lineWidth = 10
        ovalPath.stroke()
        context.restoreGState()
        
        
        //Text Drawing
        let textRect = CGRect(x: 75, y: 296, width: 163, height: 42)
        let textTextContent = "LAMBDA"
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        let textFontAttributes = [
            .font: UIFont(name: "BradleyHandITCTT-Bold", size: 30)!,
            .foregroundColor: gradientColor2,
            .paragraphStyle: textStyle,
            ] as [NSAttributedString.Key: Any]
        
        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
        
        
        //Text 2 Drawing
        let text2Rect = CGRect(x: 87, y: 125, width: 126, height: 116)
        let text2TextContent = "L"
        context.saveGState()
        context.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        let text2Style = NSMutableParagraphStyle()
        text2Style.alignment = .center
        let text2FontAttributes = [
            .font: UIFont(name: "SnellRoundhand", size: 40)!,
            .foregroundColor: color,
            .paragraphStyle: text2Style,
            ] as [NSAttributedString.Key: Any]
        
        let text2TextHeight: CGFloat = text2TextContent.boundingRect(with: CGSize(width: text2Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text2FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text2Rect)
        text2TextContent.draw(in: CGRect(x: text2Rect.minX, y: text2Rect.minY + (text2Rect.height - text2TextHeight) / 2, width: text2Rect.width, height: text2TextHeight), withAttributes: text2FontAttributes)
        context.restoreGState()
        context.restoreGState()
    }
}

