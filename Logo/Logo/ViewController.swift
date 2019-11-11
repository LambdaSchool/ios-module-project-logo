//
//  ViewController.swift
//  Logo
//
//  Created by Jon Bash on 2019-11-06.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lambdaButton: LambdaButton!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        lambdaButton.initializeTimer()
    }
    
}

