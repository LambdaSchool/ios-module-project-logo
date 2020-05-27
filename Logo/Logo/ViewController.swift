//
//  ViewController.swift
//  Logo
//
//  Created by David Williams on 4/13/20.
//  Copyright © 2020 david williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var LogoView: LogoView!
    
//    let colors: [UIColor] = [UIColor.black, UIColor.systemBlue, UIColor.systemGreen, UIColor.cyan, UIColor.yellow, UIColor.darkGray, UIColor.magenta, UIColor.orange, UIColor.systemTeal]
    
    override func viewDidLoad() {
        
//        let randomColor = Int.random(in: 0...colors.count-1)
//        let pickedcolor = colors[randomColor]
//        super.viewDidLoad()
//        view.backgroundColor = pickedcolor
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.black.cgColor, UIColor.cyan.cgColor, UIColor.red.cgColor, UIColor.black.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
