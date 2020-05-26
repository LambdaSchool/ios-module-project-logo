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
    
    let colors: [UIColor] = [UIColor.blue, UIColor.systemGreen, UIColor.cyan, UIColor.yellow, UIColor.darkGray]
    
    override func viewDidLoad() {
        
        let randomColor = Int.random(in: 0...colors.count-1)
        let pickedcolor = colors[randomColor]
        super.viewDidLoad()
        view.backgroundColor = pickedcolor
    }
    
}
