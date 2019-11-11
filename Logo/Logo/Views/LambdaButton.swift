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
    
    static private let normalMainColor = UIColor(red: 0.73, green: 0.08, blue: 0.20, alpha: 1.00)
    static private let normalAccentColor = UIColor.white
    
    static private let highlightMainColor = UIColor(red: 0.93, green: 0.28, blue: 0.40, alpha: 1.00)
    //static private let highlightAccentColor = UIColor.lightGray.cgColor
    
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
    
    private func initializeSubViews() {
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
            context.setFillColor(UIColor.red.cgColor)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.becomeHighlighted()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        self.becomeUnhighlighted()
    }
    
    @objc private func timerFired(_ sender: CADisplayLink) {
        setNeedsDisplay()
    }
    
    private func becomeHighlighted() {
        UIView.animate(withDuration: 1) {
            self.mainColor = LambdaButton.highlightMainColor
            self.transform = self.transform.scaledBy(x: self.growRatio, y: self.growRatio)
            self.center = self.center
        }
    }
    
    private func becomeUnhighlighted() {
        UIView.animate(withDuration: 1) {
            self.mainColor = LambdaButton.normalMainColor
            self.transform = self.transform.scaledBy(x: 1 / self.growRatio, y: 1 / self.growRatio)
            self.center = self.center
        }
    }
}
