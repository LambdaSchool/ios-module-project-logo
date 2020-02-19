//
//  ViewController.swift
//  Drawing
//
//  Created by Nick Nguyen on 2/19/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let logo = LogoView()
    
    let undoButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Undo", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(handleUndo), for: .touchUpInside)
       return button
    }()
    
    @objc fileprivate func handleUndo() {
        logo.undo()
    }
    
    let clearButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Clear", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(handleClear), for: .touchUpInside)
        return button
    }()
    
    @objc fileprivate func handleClear() {
        logo.clear()
    }
    
    let yellowButton : UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .yellow
        button.layer.borderWidth = 1
        button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
    
    
    let redButton : UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.layer.borderWidth = 1
           button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
    let blueButton : UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.layer.borderWidth = 1
           button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
    
    @objc fileprivate func handleColorChange(button: UIButton) {
        logo.setStrokeColor(color: button.backgroundColor ?? .black )
    }
    
    let slider : UISlider = {
        let slider = UISlider()
        slider.minimumValue = 1
        slider.maximumValue = 10
        slider.addTarget(self, action: #selector(handleSliderChange), for: .valueChanged)
        return slider
    }()
    
    @objc func handleSliderChange() {
        logo.setStrokeWidth(width:slider.value)
    }
    
    
    override func loadView() {
        self.view = logo
    }
    
    fileprivate func setupLayout() {
        
        let colorStackView = UIStackView(arrangedSubviews: [
        yellowButton,redButton,blueButton
        
        ])
        colorStackView.distribution = .fillEqually
        
        let stackView = UIStackView(arrangedSubviews: [
            
            undoButton,
             clearButton,
           colorStackView,
           slider
           
            
        ])
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant:  -32).isActive = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
       
        logo.backgroundColor = .black
        
        setupLayout()
    }


}

