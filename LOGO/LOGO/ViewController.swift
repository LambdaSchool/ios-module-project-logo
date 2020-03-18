//
//  ViewController.swift
//  LOGO
//
//  Created by Lydia Zhang on 3/18/20.
//  Copyright © 2020 Lydia Zhang. All rights reserved.
//
import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUp()
    }
    
    let label = UILabel()
    func setUp(){
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.text = "Overpass"
        label.font = UIFont.systemFont(ofSize: 50)
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
    }
}

