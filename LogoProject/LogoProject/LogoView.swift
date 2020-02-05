//
//  LogoView.swift
//  LogoProject
//
//  Created by SenorLappy on 5/2/20.
//  Copyright © 2020 Sal Amer. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {

 
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        Target.drawTargetLogo(frame: self.bounds, resizing: .aspectFit)
    }


}
