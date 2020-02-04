//
//  LogoViewController.swift
//  Logo
//
//  Created by David Wright on 2/3/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

import UIKit

@IBDesignable
class LogoViewController: UIViewController {

    @IBOutlet var logoView: LogoView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLogoView()
    }

    func configureLogoView() {
        let logoView = LogoView(frame: CGRect(x: 20, y: 20, width: 200, height: 200))
        logoView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoView)
        self.logoView = logoView
        
        NSLayoutConstraint.activate([
            logoView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
}
