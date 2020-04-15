//
//  LogoView.swift
//  Logo
//
//  Created by Elizabeth Thomas on 4/14/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {
    
    // MARK: - IBOutlet
    
    // MARK: - Properites
    private var logoView = UIView()
    private var logoViewController: LogoViewController?
    
    private let logoColor = UIColor.black.cgColor
    private let logoLineWidth: CGFloat = 5.0
    
    // Leaf
    private let leafTopPoint = CGPoint(x: 250, y: 50)
    private let leafBottomPoint = CGPoint(x: 200, y: 100)
    
    private let leafLeftControlPoint = CGPoint(x: 200, y: 60)
    private let leafRightControlPoint = CGPoint(x: 250, y: 100)
    
    // Apple top line
    private let appleTopLeftPoint = CGPoint(x: 50, y: 135)
    private let appleTopMiddlePoint = CGPoint(x: 200, y: 140)
    private let appleTopRightPoint = CGPoint(x: 350, y: 140)
    
    private let appleTopRightControlPoint = CGPoint(x: 280, y: 80)
    private let appleTopLeftControlPoint = CGPoint(x: 110, y: 80)
    
    // Apple left line
    private let appleLeftMiddlePoint = CGPoint(x: 40, y: 355)
    private let appleFirstLeftControlPoint = CGPoint(x: 0, y: 180)
    private let appleSecondLeftControlPoint = CGPoint(x: 0, y: 300)
    
    // Apple bottom line
    private let appleBottomLeftPoint = CGPoint(x: 75, y: 385)
    private let appleBottomMiddlePoint = CGPoint(x: 200, y: 380)
    private let appleBottomRightPoint = CGPoint(x: 300, y: 390)
    
    private let appleBottomLeftControlPoint = CGPoint(x: 60, y: 380)
    private let appleFirstBottomLeftControlPoint = CGPoint(x: 140, y: 410)
    private let appleSecondBottomLeftControlPoint = CGPoint(x: 150, y: 380)
    
    private let appleFirstBottomRightCP = CGPoint(x: 235, y: 380)
    private let appleSecondBottomRightCP = CGPoint(x: 255, y: 410)
    
    // Apple right line
    private let appleMiddleRightPoint = CGPoint(x: 350, y: 320)
    private let appleFirstRightCP = CGPoint(x: 335, y: 365)
    private let appleSecondRightCP = CGPoint(x: 345, y: 335)
    
    // Apple bite line
    private let appleBiteMiddlePoint = CGPoint(x: 295, y: 230)
    private let appleBiteTopCP = CGPoint(x: 295, y: 180)
    private let appleBiteBottomCP = CGPoint(x: 295, y: 310)
    
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.white
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = UIColor.white
    }
    
    

    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            // Leaf top line
            context.beginPath()
            context.move(to: leafTopPoint)
            context.addQuadCurve(to: leafBottomPoint, control: leafLeftControlPoint)
            
            // Leaf bottom line
            context.move(to: leafTopPoint)
            context.addQuadCurve(to: leafBottomPoint, control: leafRightControlPoint)
            
            // Apple top lines
            context.move(to: appleTopRightPoint)
            context.addQuadCurve(to: appleTopMiddlePoint, control: appleTopRightControlPoint)

            context.move(to: appleTopMiddlePoint)
            context.addQuadCurve(to: appleTopLeftPoint, control: appleTopLeftControlPoint)
            
            // Apple left line

            context.move(to: appleTopLeftPoint)
            context.addCurve(to: appleLeftMiddlePoint, control1: appleFirstLeftControlPoint, control2: appleSecondLeftControlPoint)
            
            // Apple bottom lines

            context.move(to: appleLeftMiddlePoint)
            context.addQuadCurve(to: appleBottomLeftPoint, control: appleBottomLeftControlPoint)
            
            context.move(to: appleBottomLeftPoint)
            context.addCurve(to: appleBottomMiddlePoint, control1: appleFirstBottomLeftControlPoint, control2: appleSecondBottomLeftControlPoint)

            context.move(to: appleBottomMiddlePoint)
            context.addCurve(to: appleBottomRightPoint, control1: appleFirstBottomRightCP, control2: appleSecondBottomRightCP)
            
            // Apple right line

            context.move(to: appleBottomRightPoint)
            context.addCurve(to: appleMiddleRightPoint, control1: appleFirstRightCP, control2: appleSecondRightCP)
            
            context.move(to: appleTopRightPoint)
            context.addQuadCurve(to: appleBiteMiddlePoint, control: appleBiteTopCP)
            
            context.move(to: appleMiddleRightPoint)
            context.addQuadCurve(to: appleBiteMiddlePoint, control: appleBiteBottomCP)
            
            context.setStrokeColor(logoColor)
            context.setLineWidth(logoLineWidth)
            context.strokePath()

        }
    }
}
