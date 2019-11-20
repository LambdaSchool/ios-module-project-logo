//
//  LogoView.swift
//  DrawingALogo
//
//  Created by Jessie Ann Griffin on 9/24/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {
    //
    
    private let leftBgColor = UIColor.systemPink
    private let rightBgColor = UIColor.yellow
    private let bottomBgColor = UIColor.cyan

    private let drop1Color = UIColor.red
    private let drop2Color = UIColor.blue
    private let drop3Color = UIColor.green
    
    private var endPointOne: CGPoint {
        let secondsAsRadians = Float(Double(seconds.value) / 60.0 * 2.0 * Double.pi - Double.pi / 2)
        let handLength = CGFloat(frame.size.width / seconds.length)
        return handEndPoint(with: secondsAsRadians, and: handLength)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder: NSCoder) {
        //super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
        //backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        
    }
}
