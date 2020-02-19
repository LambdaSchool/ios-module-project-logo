//
//  ViewController.swift
//  Drawing
//
//  Created by Nick Nguyen on 2/19/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit

class LogoView: UIView {
    override func draw(_ rect: CGRect) {
        // Custom drawing
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        // Here are my lines
        context.addEllipse(in: rect)
                context.setFillColor(clockBgColor.cgColor)
                context.fillPath()
                // clock's border
                
                context.addEllipse(in: CGRect(x: rect.origin.x + borderWidth / 2.0, y: rect.origin.y + borderWidth / 2.0, width: rect.size.width - borderWidth, height: rect.size.height - borderWidth))
                context.setStrokeColor(borderColor.cgColor)
                context.setLineWidth(borderWidth)
                context.strokePath()
        
    }
}


class ViewController: UIViewController {

    let logo = LogoView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.addSubview(logo)
        logo.backgroundColor = .yellow
        logo.frame = view.frame
    }


}

