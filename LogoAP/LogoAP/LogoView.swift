//
//  LogoView.swift
//  LogoAP
//
//  Created by Jorge Alvarez on 1/22/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

import UIKit

class LogoView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.blue
    }

}
