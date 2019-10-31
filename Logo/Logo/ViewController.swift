//
//  ViewController.swift
//  Logo
//
//  Created by Jordan Christensen on 9/12/19.
//  Copyright © 2019 Mazjap Co Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var mLabel: UILabel!
    @IBOutlet weak var wLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bLabel.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 4)
        wLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 4)
    }


}

