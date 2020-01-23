//
//  LogoView.swift
//  LogoAnimation
//
//  Created by Aaron Cleveland on 1/23/20.
//  Copyright © 2020 Aaron Cleveland. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    //// Drawing Methods
    override func draw(_ rect: CGRect) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!

        //// Color Declarations
        let gradientColor4 = UIColor(red: 0.000, green: 0.133, blue: 0.243, alpha: 1.000)
        let gradientColor6 = UIColor(red: 1.000, green: 0.631, blue: 0.498, alpha: 1.000)
        let color6 = UIColor(red: 0.050, green: 0.000, blue: 1.000, alpha: 1.000)

        //// Gradient Declarations
        let pREDAWN = CGGradient(colorsSpace: nil, colors: [gradientColor6.cgColor, gradientColor6.blended(withFraction: 0.5, of: gradientColor4).cgColor, gradientColor4.cgColor] as CFArray, locations: [0, 0.33, 1])!

        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.black
        shadow.shadowOffset = CGSize(width: 0, height: 5.5)
        shadow.shadowBlurRadius = 4

        //// Rectangle 6 Drawing
        context.saveGState()
        context.translateBy(x: 35, y: 413.22)
        context.rotate(by: -45 * CGFloat.pi/180)

        let rectangle6Path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 250, height: 250), cornerRadius: 10)
        context.saveGState()
        context.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        rectangle6Path.addClip()
        context.drawLinearGradient(pREDAWN, start: CGPoint(x: 247.08, y: 2.92), end: CGPoint(x: 2.92, y: 247.08), options: [])
        context.endTransparencyLayer()
        context.restoreGState()

        UIColor.green.setStroke()
        rectangle6Path.lineWidth = 1
        rectangle6Path.stroke()

        context.restoreGState()


        //// Rectangle 5 Drawing
        context.saveGState()
        context.translateBy(x: 35, y: 295.22)
        context.rotate(by: -45 * CGFloat.pi/180)

        let rectangle5Path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 250, height: 250), cornerRadius: 10)
        context.saveGState()
        context.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        rectangle5Path.addClip()
        context.drawLinearGradient(pREDAWN, start: CGPoint(x: 247.08, y: 2.92), end: CGPoint(x: 2.92, y: 247.08), options: [])
        context.endTransparencyLayer()
        context.restoreGState()

        UIColor.green.setStroke()
        rectangle5Path.lineWidth = 1
        rectangle5Path.stroke()

        context.restoreGState()


        //// Rectangle Drawing
        context.saveGState()
        context.translateBy(x: 92, y: 413.91)
        context.rotate(by: -45 * CGFloat.pi/180)

        let rectanglePath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 167, height: 167), cornerRadius: 10)
        context.saveGState()
        context.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        rectanglePath.addClip()
        context.drawLinearGradient(pREDAWN, start: CGPoint(x: 164.08, y: 2.92), end: CGPoint(x: 2.92, y: 164.08), options: [])
        context.endTransparencyLayer()
        context.restoreGState()

        color6.setStroke()
        rectanglePath.lineWidth = 1
        rectanglePath.stroke()

        context.restoreGState()


        //// Rectangle 2 Drawing
        context.saveGState()
        context.translateBy(x: 151, y: 413.6)
        context.rotate(by: -45 * CGFloat.pi/180)

        let rectangle2Path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 84, height: 84), cornerRadius: 10)
        context.saveGState()
        context.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        rectangle2Path.addClip()
        context.drawLinearGradient(pREDAWN, start: CGPoint(x: 81.08, y: 2.92), end: CGPoint(x: 2.92, y: 81.08), options: [])
        context.endTransparencyLayer()
        context.restoreGState()

        UIColor.white.setStroke()
        rectangle2Path.lineWidth = 1
        rectangle2Path.stroke()

        context.restoreGState()


        //// Rectangle 3 Drawing
        context.saveGState()
        context.translateBy(x: 93, y: 294.91)
        context.rotate(by: -45 * CGFloat.pi/180)

        let rectangle3Path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 167, height: 167), cornerRadius: 10)
        context.saveGState()
        context.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        rectangle3Path.addClip()
        context.drawLinearGradient(pREDAWN, start: CGPoint(x: 164.08, y: 2.92), end: CGPoint(x: 2.92, y: 164.08), options: [])
        context.endTransparencyLayer()
        context.restoreGState()

        color6.setStroke()
        rectangle3Path.lineWidth = 1
        rectangle3Path.stroke()

        context.restoreGState()


        //// Rectangle 4 Drawing
        context.saveGState()
        context.translateBy(x: 152, y: 295.6)
        context.rotate(by: -45 * CGFloat.pi/180)

        let rectangle4Path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 84, height: 84), cornerRadius: 10)
        context.saveGState()
        context.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        rectangle4Path.addClip()
        context.drawLinearGradient(pREDAWN, start: CGPoint(x: 81.08, y: 2.92), end: CGPoint(x: 2.92, y: 81.08), options: [])
        context.endTransparencyLayer()
        context.restoreGState()

        UIColor.white.setStroke()
        rectangle4Path.lineWidth = 1
        rectangle4Path.stroke()

        context.restoreGState()
    }

}

private extension UIColor {
    func blended(withFraction fraction: CGFloat, of color: UIColor) -> UIColor {
        var r1: CGFloat = 1, g1: CGFloat = 1, b1: CGFloat = 1, a1: CGFloat = 1
        var r2: CGFloat = 1, g2: CGFloat = 1, b2: CGFloat = 1, a2: CGFloat = 1

        self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1)
        color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2)

        return UIColor(red: r1 * (1 - fraction) + r2 * fraction,
            green: g1 * (1 - fraction) + g2 * fraction,
            blue: b1 * (1 - fraction) + b2 * fraction,
            alpha: a1 * (1 - fraction) + a2 * fraction);
    }
}
