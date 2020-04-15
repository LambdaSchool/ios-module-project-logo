//
//  LogoViewController.swift
//  Logo
//
//  Created by Elizabeth Thomas on 4/13/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

import UIKit

class LogoViewController: UIViewController {
    
    @IBOutlet weak var logoView: LogoView!
    private var aLabel = UILabel()
    private var firstPLabel = UILabel()
    private var secondPLabel = UILabel()
    private var lLabel = UILabel()
    private var eLabel = UILabel()
    
    var redButtonToggled: Bool = false
    var orangeButtonToggled: Bool = false
    var yellowButtonToggled: Bool = false
    var greenButtonToggled: Bool = false
    var blueButtonToggled: Bool = false
    var indigoButtonToggled: Bool = false
    var violetButtonToggled: Bool = false
    var blackButtonToggled: Bool = false
    
    
    // MARK: - Live Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLabels()
    }
    
    // MARK: - IBActions
    
    private func configureLabels() {
        aLabel.translatesAutoresizingMaskIntoConstraints = false
        aLabel.text = "A"
        aLabel.font = UIFont(name: "American Typewriter", size: 60)
        
        firstPLabel.translatesAutoresizingMaskIntoConstraints = false
        firstPLabel.text = "p"
        firstPLabel.font = UIFont(name: "American Typewriter", size: 60)
        
        secondPLabel.translatesAutoresizingMaskIntoConstraints = false
        secondPLabel.text = "p"
        secondPLabel.font = UIFont(name: "American Typewriter", size: 60)
        
        lLabel.translatesAutoresizingMaskIntoConstraints = false
        lLabel.text = "l"
        lLabel.font = UIFont(name: "American Typewriter", size: 60)
        
        eLabel.translatesAutoresizingMaskIntoConstraints = false
        eLabel.text = "e"
        eLabel.font = UIFont(name: "American Typewriter", size: 60)
        
        view.addSubview(aLabel)
        view.addSubview(firstPLabel)
        view.addSubview(secondPLabel)
        view.addSubview(lLabel)
        view.addSubview(eLabel)
        
        NSLayoutConstraint.activate([
        
            aLabel.leadingAnchor.constraint(equalTo: logoView.leadingAnchor, constant: 70),
            aLabel.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 20),
            
            firstPLabel.leadingAnchor.constraint(equalTo: aLabel.trailingAnchor, constant: 20),
            firstPLabel.topAnchor.constraint(equalTo: aLabel.topAnchor),
            
            secondPLabel.leadingAnchor.constraint(equalTo: firstPLabel.trailingAnchor, constant: 20),
            secondPLabel.topAnchor.constraint(equalTo: aLabel.topAnchor),
            
            lLabel.leadingAnchor.constraint(equalTo: secondPLabel.trailingAnchor, constant: 20),
            lLabel.topAnchor.constraint(equalTo: aLabel.topAnchor),
            
            eLabel.leadingAnchor.constraint(equalTo: lLabel.trailingAnchor, constant: 20),
            eLabel.topAnchor.constraint(equalTo: aLabel.topAnchor),
            eLabel.trailingAnchor.constraint(equalTo: logoView.trailingAnchor, constant: 20)
        
        ])
        
    }
    
    @IBAction func rainbowButtonTapped(_ sender: Any) {
        aLabel.textColor = .red
        firstPLabel.textColor = .orange
        secondPLabel.textColor = .yellow
        lLabel.textColor = .blue
        eLabel.textColor = .green
    }
    
    @IBAction func redButtonTapped(_ sender: Any) {
        aLabel.textColor = .red
        firstPLabel.textColor = .red
        secondPLabel.textColor = .red
        lLabel.textColor = .red
        eLabel.textColor = .red
        
        redButtonToggled = true
    }
    
    @IBAction func orangeButtonTapped(_ sender: Any) {
        aLabel.textColor = .orange
        firstPLabel.textColor = .orange
        secondPLabel.textColor = .orange
        lLabel.textColor = .orange
        eLabel.textColor = .orange
        
        orangeButtonToggled = true
    }
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
        aLabel.textColor = .yellow
        firstPLabel.textColor = .yellow
        secondPLabel.textColor = .yellow
        lLabel.textColor = .yellow
        eLabel.textColor = .yellow
        
        yellowButtonToggled = true
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        aLabel.textColor = .green
        firstPLabel.textColor = .green
        secondPLabel.textColor = .green
        lLabel.textColor = .green
        eLabel.textColor = .green
        
        greenButtonToggled = true
    }
    
    @IBAction func blueButtonTapped(_ sender: Any) {
        aLabel.textColor = .blue
        firstPLabel.textColor = .blue
        secondPLabel.textColor = .blue
        lLabel.textColor = .blue
        eLabel.textColor = .blue
        
        blueButtonToggled = true
    }
    
    @IBAction func indigoButtonTapped(_ sender: Any) {
        aLabel.textColor = .systemIndigo
        firstPLabel.textColor = .systemIndigo
        secondPLabel.textColor = .systemIndigo
        lLabel.textColor = .systemIndigo
        eLabel.textColor = .systemIndigo
        
        indigoButtonToggled = true
    }
    
    @IBAction func VioletButonTapped(_ sender: Any) {
        aLabel.textColor = .purple
        firstPLabel.textColor = .purple
        secondPLabel.textColor = .purple
        lLabel.textColor = .purple
        eLabel.textColor = .purple
        
        violetButtonToggled = true
    }
    
    @IBAction func blackButtonTapped(_ sender: Any) {
        aLabel.textColor = .black
        firstPLabel.textColor = .black
        secondPLabel.textColor = .black
        lLabel.textColor = .black
        eLabel.textColor = .black
        
        blackButtonToggled = true
    }
    
}

