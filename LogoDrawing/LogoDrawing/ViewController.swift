//
//  ViewController.swift
//  LogoDrawing
//
//  Created by scott harris on 2/19/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let logoView = LogoView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupContainerView()
    }
    
    private func setupContainerView() {
        logoView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoView)
        
        logoView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
        logoView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40).isActive = true
        logoView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        logoView.heightAnchor.constraint(equalTo: logoView.widthAnchor).isActive = true
        
    }


}

