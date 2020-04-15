//
//  ViewController.swift
//  logo
//
//  Created by Claudia Contreras on 4/14/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var counterLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        counterLabel.text = String(counterView.counter)
    }
    
    //MARK: - IBActions
    @IBAction func pushButtonPressed(_ button: PushButton) {
        if button.isAddButton {
            counterView.counter += 1
        } else {
            if counterView.counter > 0 {
                counterView.counter -= 1
            }
        }
        counterLabel.text = String(counterView.counter)
    }
 
//    //FOR LOGOVIEW
//    let logoView = LogoView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        setupContainerView()
//    }
//    
//    private func setupContainerView() {
//        logoView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(logoView)
//        
//        logoView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
//        logoView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40).isActive = true
//        logoView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        logoView.heightAnchor.constraint(equalTo: logoView.widthAnchor).isActive = true
//        
//    }

}

