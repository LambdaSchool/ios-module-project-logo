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
    
    private let lambdaLabel = UILabel()
    
    // MARK: - Draw
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(shieldColor.cgColor)
            
            // Draw Upper Section of Shield
            let roundedRectPath = CGPath(roundedRect: CGRect(origin: logoOrigin,
                                                         size: CGSize(width: logoWidth, height: upperRectHeight)),
                                     cornerWidth: cornerRadius,
                                     cornerHeight: cornerRadius,
                                     transform: nil)
            context.addPath(roundedRectPath)
            context.fillPath()
            
            // Draw Lower Section of Shield
            let trianglePath = CGMutablePath()
            trianglePath.move(to: lowerLeftPointWithRoundedCorner)
            trianglePath.addArc(tangent1End: lowerRightPointWithRoundedCorner,
                        tangent2End: lowerMiddlePoint,
                        radius: cornerRadius)
            trianglePath.addArc(tangent1End: lowerMiddlePoint,
                        tangent2End: lowerLeftPointWithRoundedCorner,
                        radius: cornerRadius)
            trianglePath.addArc(tangent1End: lowerLeftPointWithRoundedCorner,
                        tangent2End: lowerRightPointWithRoundedCorner,
                        radius: cornerRadius)
            trianglePath.closeSubpath()
            context.addPath(trianglePath)
            context.fillPath()
            
            // Draw Lambda
            configureLambdaLabel()
            
        }
    }
    
    private func configureLambdaLabel() {
        lambdaLabel.font = font
        lambdaLabel.text = "Λ"
        lambdaLabel.textAlignment = .center
        lambdaLabel.textColor = lambdaTextColor
        lambdaLabel.transform = CGAffineTransform(scaleX: fontScaleX, y: 1.0)
        lambdaLabel.sizeToFit()
        lambdaLabel.center = labelCenter
        addSubview(lambdaLabel)
    }
    
    // MARK: - CONSTANTS
    
    let shieldColor: UIColor = #colorLiteral(red: 0.7294117647, green: 0.07843137255, blue: 0.2039215686, alpha: 1)
    let lambdaTextColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    let lambdaFontName: String = "Helvetica Bold"
    let fontScaleX: CGFloat = 1.55
}

// MARK: - Logo Layout Properties

extension LogoView {
    private struct SizeRatio {
        static let logoHeightToLogoWidth: CGFloat = 1.15
        static let upperRectHeightToLogoHeight: CGFloat = 0.685
        static let cornerRadiusToLogoWidth: CGFloat = 0.023
        static let textHeighttoLogoHeight: CGFloat = 0.52
        static let textCenterYtoLogoHeight: CGFloat = 0.4
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
    
    // Lower Triangle (bottom section of shield): Adjust drawing points for rounded corners
    private var lowerLeftPointWithRoundedCorner: CGPoint {
        return lowerLeftPoint.offsetBy(dx: -cornerRadius * 2, dy: -cornerRadius * 2)
    }
    private var lowerRightPointWithRoundedCorner: CGPoint {
        return lowerRightPoint.offsetBy(dx: cornerRadius * 2, dy: -cornerRadius * 2)
    }
    private var lowerMiddlePointWithRoundedCorner: CGPoint {
        return lowerMiddlePoint
    }
    
    // Label (for the Lambda character)
    private var labelCenter: CGPoint {
        return CGPoint(x: logoOrigin.x + (logoWidth / 2.0), y: logoOrigin.y + (logoHeight * SizeRatio.textCenterYtoLogoHeight))
    }
    private var fontSize: CGFloat {
        return logoHeight * SizeRatio.textHeighttoLogoHeight
    }
    private var font: UIFont {
        return UIFont(name: lambdaFontName, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize, weight: .heavy)
    }
}

extension CGPoint {
    func offsetBy(dx: CGFloat = 0.0, dy: CGFloat = 0.0) -> CGPoint {
        return CGPoint(x: x + dx, y: y + dy)
    }
}
