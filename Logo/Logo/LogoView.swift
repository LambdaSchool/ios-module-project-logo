//
//  LogoView.swift
//  Logo
//
//  Created by David Wright on 2/3/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {
    
    // MARK: - Properties
    
    let lambdaLabel = LambdaLabel()
    
//    lazy var lambdaLabel: UILabel = {
//        var label = UILabel()
//        label.font = font
//        label.text = "Λ"
//        label.textAlignment = .center
//        label.center = labelCenter
//        label.textColor = .yellow
//        label.transform = CGAffineTransform(scaleX: 2.0, y: 1.0)
//        return label
//    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpLambdaLabel()
//        addSubview(lambdaLabel)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpLambdaLabel()
//        addSubview(lambdaLabel)
    }
    
    private func setUpLambdaLabel() {
        lambdaLabel.font = font
        lambdaLabel.text = "Λ"
        lambdaLabel.textAlignment = .center
        lambdaLabel.center = labelCenter
        lambdaLabel.textColor = .yellow
        lambdaLabel.transform = CGAffineTransform(scaleX: 2.0, y: 1.0)
    }
    
    // MARK: - Draw
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(shieldColor.cgColor)
            
            // Draw Shield: Upper Rectangle
            let roundedRect = CGPath(roundedRect: CGRect(origin: logoOrigin,
                                                         size: CGSize(width: logoWidth, height: upperRectHeight)),
                                     cornerWidth: cornerRadius,
                                     cornerHeight: cornerRadius,
                                     transform: nil)
            context.addPath(roundedRect)
            context.fillPath()
            
            // Draw Shield: Lower Triangle
            let path = CGMutablePath()
            path.move(to: lowerLeftPoint.offsetBy(dx: -2*cornerRadius, dy: -2*cornerRadius))
            path.addArc(tangent1End: lowerRightPoint.offsetBy(dx: 2*cornerRadius, dy: -2*cornerRadius), tangent2End: lowerMiddlePoint, radius: cornerRadius)
            path.addArc(tangent1End: lowerMiddlePoint, tangent2End: lowerLeftPoint.offsetBy(dx: -2*cornerRadius, dy: -2*cornerRadius), radius: cornerRadius)
            path.addArc(tangent1End: lowerLeftPoint.offsetBy(dx: -2*cornerRadius, dy: -2*cornerRadius), tangent2End: lowerRightPoint.offsetBy(dx: 2*cornerRadius, dy: -2*cornerRadius), radius: cornerRadius)
            path.closeSubpath()
            context.addPath(path)
            context.fillPath()
            
            // Draw Lambda
            setUpLambdaLabel()
            
        }
    }
    
    // MARK: - CONSTANTS
    
    let shieldColor: UIColor = #colorLiteral(red: 0.7294117647, green: 0.07843137255, blue: 0.2039215686, alpha: 1)
    let lambdaColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    let fontName: String = "Arial"
    
}

// MARK: - Size Properties

extension LogoView {
    private struct SizeRatio {
        static let logoHeightToLogoWidth: CGFloat = 1.15
        static let upperRectHeightToLogoHeight: CGFloat = 0.685
        static let cornerRadiusToLogoWidth: CGFloat = 0.02
        static let textHeighttoLogoHeight: CGFloat = 0.36
        static let textCenterYtoLogoHeight: CGFloat = 0.39
    }
    
    // Corner Radius
    private var cornerRadius: CGFloat {
        return logoWidth * SizeRatio.cornerRadiusToLogoWidth
    }
    
    // Logo Width, Height and Origin
    private var logoWidth: CGFloat {
        if bounds.size.height >= bounds.size.width * SizeRatio.logoHeightToLogoWidth {
            return bounds.size.width
        } else {
            return bounds.size.height / SizeRatio.logoHeightToLogoWidth
        }
    }
    private var logoHeight: CGFloat {
        return logoWidth * SizeRatio.logoHeightToLogoWidth
    }
    private var logoOrigin: CGPoint {
        return CGPoint(x: (bounds.size.width - logoWidth) / 2.0, y: (bounds.size.height - logoHeight) / 2.0)
    }
    
    // Upper Rectangle (top section of shield)
    private var upperRectHeight: CGFloat {
        return logoHeight * SizeRatio.upperRectHeightToLogoHeight
    }
    
    // Lower Triangle (bottom section of shield)
    private var lowerTriangleHeight: CGFloat {
        return logoHeight - upperRectHeight
    }
    private var lowerLeftPoint: CGPoint {
        return CGPoint(x: logoOrigin.x, y: logoOrigin.y + upperRectHeight)
    }
    private var lowerRightPoint: CGPoint {
        return CGPoint(x: logoOrigin.x + logoWidth, y: logoOrigin.y + upperRectHeight)
    }
    private var lowerMiddlePoint: CGPoint {
        return CGPoint(x: logoOrigin.x + (logoWidth / 2.0), y: logoOrigin.y + logoHeight)
    }
    
    // Label (for the Lambda character)
    private var labelCenter: CGPoint {
        return CGPoint(x: logoOrigin.x + (logoWidth / 2.0), y: logoOrigin.y + (logoHeight * SizeRatio.textCenterYtoLogoHeight))
    }
    private var fontSize: CGFloat {
        return logoHeight * SizeRatio.textHeighttoLogoHeight
    }
    private var font: UIFont {
        return UIFont(name: fontName, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize, weight: .heavy)
    }
}

extension CGPoint {
    func offsetBy(dx: CGFloat = 0.0, dy: CGFloat = 0.0) -> CGPoint {
        return CGPoint(x: x + dx, y: y + dy)
    }
}
