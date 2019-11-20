//
//  ViewController.swift
//  LogoDrawingPT3
//
//  Created by Jessie Ann Griffin on 11/19/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoView: LogoView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoView.layer.cornerRadius = 6.0

    }


}

