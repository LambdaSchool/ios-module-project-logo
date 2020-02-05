//
//  Target.swift
//  TargetLogo
//
//  Created by Sal Amer on 5/2/20.
//  Copyright © 2020  . All rights reserved.
//



import UIKit

public class Target : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawTargetLogo(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 80, height: 93), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 80, height: 93), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 80, y: resizedFrame.height / 93)


        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 12, y: 6, width: 60, height: 60))
        UIColor.red.setFill()
        ovalPath.fill()


        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: 22, y: 16, width: 40, height: 40))
        UIColor.white.setFill()
        oval2Path.fill()


        //// Oval 3 Drawing
        let oval3Path = UIBezierPath(ovalIn: CGRect(x: 32, y: 26, width: 20, height: 20))
        UIColor.red.setFill()
        oval3Path.fill()


        //// Text Drawing
        let textRect = CGRect(x: 0, y: 69, width: 84, height: 20)
        let textTextContent = "TARGET"
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        let textFontAttributes = [
            .font: UIFont(name: "AvenirNext-DemiBold", size: UIFont.labelFontSize)!,
            .foregroundColor: UIColor.black,
            .paragraphStyle: textStyle,
        ] as [NSAttributedString.Key: Any]

        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
        
        context.restoreGState()

    }




    @objc(TargetResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
