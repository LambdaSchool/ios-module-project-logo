//
//  LambdaButton.swift
//  Logo
//
//  Created by Jon Bash on 2019-11-06.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

@IBDesignable
class LambdaButton: UIButton {
    
    var animationTimer: CADisplayLink?
    
    static private let normalMainColor = UIColor(red: 0.73, green: 0.08, blue: 0.20, alpha: 1.00).cgColor
    static private let normalAccentColor = UIColor.white.cgColor
    
    static private let highlightMainColor = UIColor(red: 0.93, green: 0.28, blue: 0.40, alpha: 1.00).cgColor
    static private let highlightAccentColor = UIColor.lightGray.cgColor
    
    var mainColor = LambdaButton.normalMainColor
    var accentColor = LambdaButton.normalAccentColor
    
    var growRatio: CGFloat = 1.2
    
    // ratio constants (per pixel of total size)
    var topCornerRadius: CGFloat = 0.008
    var rectPortionHeight: CGFloat = 0.38
    var cutoffHeight: CGFloat = 0.044
    var totalShape = CGSize(width: 0.476, height: 0.543)
    var mainTriangle = CGSize(width: 0.276, height: 0.242)
    var innerTriangle = CGSize(width: 0.14, height: 0.124)
    var topToMainTriBottom: CGFloat = 0.312
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
        initializeSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
        initializeSubViews()
    }
    
    func initializeSubViews() {
        topCornerRadius *= frame.width
        rectPortionHeight *= frame.height
        cutoffHeight *= frame.height
        totalShape.width *= frame.width
        totalShape.height *= frame.height
        mainTriangle.width *= frame.width
        mainTriangle.height *= frame.height
        innerTriangle.width *= frame.width
        innerTriangle.height *= frame.height
        topToMainTriBottom *= frame.height
    }
    
    func initializeTimer() {
        let aTimer = CADisplayLink(target: self, selector: #selector(timerFired(_:)))
        aTimer.add(to: .current, forMode: .default)
        animationTimer = aTimer
    }
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            let center = CGPoint(x: rect.width * 0.5, y: rect.height * 0.5)
            
            // draw main rectangle
            let mainRect = CGRect(
                x: center.x - (totalShape.width * 0.5),
                y: center.y - (totalShape.height * 0.5),
                width: totalShape.width,
                height: rectPortionHeight
            )
            context.setStrokeColor(mainColor)
            context.setLineWidth(1)
            context.addRect(mainRect)
            context.setFillColor(mainColor)
            context.drawPath(using: .fillStroke)
            
            // draw bottom triangle
            context.beginPath()
            context.move(to: CGPoint(x: mainRect.minX, y: mainRect.maxY))
            context.addLine(to: CGPoint(x: center.x, y: mainRect.minY + totalShape.height))
            context.addLine(to: CGPoint(x: mainRect.maxX, y: mainRect.maxY))
            context.drawPath(using: .fillStroke)
            
            // draw main white triangle
            context.setStrokeColor(accentColor)
            context.setFillColor(accentColor)
            
            let mainTriangleTop = CGPoint(x: center.x, y: mainRect.minY + topToMainTriBottom - mainTriangle.height)
            
            context.beginPath()
            context.move(to: CGPoint(x: center.x - (mainTriangle.width * 0.5), y: mainRect.minY + topToMainTriBottom))
            context.addLine(to: CGPoint(x: center.x + (mainTriangle.width * 0.5), y: mainRect.minY + topToMainTriBottom))
            context.addLine(to: mainTriangleTop)
            context.drawPath(using: .fill)
            
            // draw inlet triangle
            context.setStrokeColor(mainColor)
            context.setFillColor(mainColor)
            
            context.beginPath()
            context.move(to: CGPoint(x: center.x - (innerTriangle.width * 0.5), y: mainRect.minY + topToMainTriBottom))
            context.addLine(to: CGPoint(x: center.x + (innerTriangle.width * 0.5), y: mainRect.minY + topToMainTriBottom))
            context.addLine(to: CGPoint(x: center.x, y: mainRect.minY + topToMainTriBottom - innerTriangle.height))
            context.drawPath(using: .fillStroke)
            
            // draw triangle cutoff
            let heightToCutoff = (mainTriangleTop.y - mainRect.minY) + cutoffHeight
            context.beginPath()
            context.addRect(CGRect(x: mainRect.minX, y: mainRect.minY, width: mainRect.width, height: heightToCutoff))
            context.drawPath(using: .fillStroke)
        }
    }
    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        super.pressesBegan(presses, with: event)
        self.becomeHighlighted()
    }
    
    override func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        super.pressesBegan(presses, with: event)
        self.becomeUnhighlighted()
    }
    
    @objc func timerFired(_ sender: CADisplayLink) {
        setNeedsDisplay()
    }
    
    func becomeHighlighted() {
        let animationBlock = {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1) {
                self.mainColor = LambdaButton.highlightMainColor
                self.accentColor = LambdaButton.highlightAccentColor
                self.transform = self.transform.scaledBy(x: self.growRatio, y: self.growRatio)
                self.center = self.center
            }
        }
        UIView.animateKeyframes(withDuration: 1, delay: 0, options: [], animations: animationBlock)
    }
    
    func becomeUnhighlighted() {
        let animationBlock = {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1) {
                self.mainColor = LambdaButton.normalMainColor
                self.accentColor = LambdaButton.normalAccentColor
                self.transform = self.transform.scaledBy(x: 1 / self.growRatio, y: 1 / self.growRatio)
                self.center = self.center
            }
        }
        UIView.animateKeyframes(withDuration: 1, delay: 0, options: [], animations: animationBlock)
    }
}
