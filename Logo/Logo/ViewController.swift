//
//  ViewController.swift
//  Logo
//
//  Created by David Williams on 4/13/20.
//  Copyright © 2020 david williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var logoView: LogoView!
   
    
    override func viewDidLoad() {
//        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: updateViews(_:))
//        timer.fire()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.black.cgColor, UIColor.cyan.cgColor, UIColor.red.cgColor, UIColor.black.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        logoView.updateViews()
    }
}
