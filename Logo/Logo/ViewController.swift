//
//  ViewController.swift
//  Logo
//
//  Created by Cora Jacobson on 7/27/20.
//  Copyright © 2020 Cora Jacobson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var visibleLogo: Int = 1

    @IBOutlet weak var logoView: LogoView!
    @IBOutlet weak var logoTwoView: LogoTwoView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var switchLogoButton: SwitchLogoButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }

    @IBAction func switchLogoButton(_ sender: UIButton) {
        switch visibleLogo {
        case 2:
            UIView.animate(withDuration: 2) {
                self.logoView.alpha = 1
                self.logoTwoView.alpha = 0
            }
            nameLabel.text = logoView.name
            switchLogoButton.setTitle("Switch to \(logoTwoView.name) Logo", for: .normal)
            visibleLogo = 1
        default:
            UIView.animate(withDuration: 2) {
                self.logoView.alpha = 0
                self.logoTwoView.alpha = 1
            }
            nameLabel.text = logoTwoView.name
            switchLogoButton.setTitle("Switch to \(logoView.name) Logo", for: .normal)
            visibleLogo = 2
        }
    }
    
    func setUpView() {
        logoView.alpha = 1
        logoTwoView.alpha = 0
        nameLabel.text = logoView.name
        switchLogoButton.setTitle("Switch to \(logoTwoView.name) Logo", for: .normal)
        view.backgroundColor = UIColor(named: "BackgroundColor")!
        nameLabel.font = UIFont(name: "Noteworthy-Bold", size: 30)
        nameLabel.textColor = UIColor(named: "FontColor")!
        switchLogoButton.setTitleColor(UIColor(named: "FontColor")!, for: .normal)
        
    }
    
}

