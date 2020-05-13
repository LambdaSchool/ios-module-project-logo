//
//  ViewController.swift
//  ViewDrawing
//
//  Created by Brian Rouse on 5/13/20.
//  Copyright © 2020 Brian Rouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var logoView: UIView!
    
    // MARK: - iVars
    
    let logoArr: [UIView] = [LogoView(), LogoView1(), LogoView2(), LogoView3(), LogoView4(), LogoView5(), LogoView6()]
    var index: Int = 0
    
    // MARK: - ViewLifeCycle
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loadRandomViews()
    }
    
    // MARK: - IBActions
    
    @IBAction func toggleViewsBtnDidTapped(_ sender: UIButton) {
        loadRandomViews()
    }
    
    // MARK: - Helper Methods
    
    private func loadRandomViews() {
        if index == logoArr.count {
            index = 0
        }
        
        let randomLogoView = logoArr[index]
        index += 1
        randomLogoView.backgroundColor = .clear
        for view in self.logoView.subviews {
            view.removeFromSuperview()
        }
        self.logoView.addSubview(randomLogoView)
        
        
        randomLogoView.translatesAutoresizingMaskIntoConstraints = false
        randomLogoView.topAnchor.constraint(equalTo: self.logoView.topAnchor, constant: 0.0).isActive = true
        randomLogoView.bottomAnchor.constraint(equalTo: self.logoView.bottomAnchor, constant: 0.0).isActive = true
        randomLogoView.leadingAnchor.constraint(equalTo: self.logoView.leadingAnchor, constant: 0.0).isActive = true
        randomLogoView.trailingAnchor.constraint(equalTo: self.logoView.trailingAnchor, constant: 0.0).isActive = true
        
    }
}



