//
//  ViewController.swift
//  AnimateDrawing
//
//  Created by Thomas Dye on 4/13/20.
//  Copyright © 2020 Thomas Dye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let stackView = UIStackView()
    let resetButton = UIButton(type: .system)
    let startButton = UIButton(type: .system)
    let logoAnimationTime: CGFloat = CGFloat()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpStartButton()
        setUpResetButton()
        setupStackView()
        disableResetButton()
    }
    
    // Set Up Start Button
    func setUpStartButton() {
        startButton.setTitleColor(.systemBlue,
                                  for: .normal)
        startButton.setTitle("Start Animation",
                             for: .normal)
        startButton.addTarget(self,
                              action: #selector(startAnimation),
                              for: .touchUpInside)
        self.view.addSubview(startButton)
        stackView.addArrangedSubview(startButton)
    }
    
    // Set Up Reset Button
    func setUpResetButton() {
        resetButton.setTitleColor(.systemBlue, for: .normal)
        resetButton.setTitle("Reset Animation", for: .normal)
        resetButton.addTarget(self, action: #selector(resetAnimation), for: .touchUpInside)
        self.view.addSubview(resetButton)
        stackView.addArrangedSubview(resetButton)
    }
    
    // Setup Stack View
    func setupStackView() {
        
        // Stack View Settings
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing   = 16.0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(stackView)

        //Constraints
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
    }
    
    // Start Animation Function
    @objc func startAnimation(sender: UIButton!) {

        DispatchQueue.main.asyncAfter(deadline: .now()) {
            
            // Disable Start Button
            self.disableStartButton()
            self.enableResetButton()
            
            // Create Animation Path
            let path = UIBezierPath()
            // Start Point
            path.move(to: CGPoint(x: 50, y: 100))
            // Start Beginning of Line
            path.addLine(to: CGPoint(x: 50, y: 100))
            // Top Right
            path.addLine(to: CGPoint(x: 350, y: 100))
            // Middle Right
            path.addLine(to: CGPoint(x: 350, y: 350))
            // Bottom Center
            path.addLine(to: CGPoint(x: 200, y: 450))
            // Middle Left
            path.addLine(to: CGPoint(x: 50, y: 350))
            // Top Left
            path.addLine(to: CGPoint(x: 50, y: 100))
            // Top Right (to finish line)
            path.addLine(to: CGPoint(x: 350, y: 100))
            
            // Create Shape Layer to Fill
            let shapeLayer = CAShapeLayer()
            shapeLayer.lineJoin = CAShapeLayerLineJoin.round
            shapeLayer.lineCap = CAShapeLayerLineCap.round
            shapeLayer.strokeColor = UIColor.red.cgColor
            shapeLayer.fillColor = UIColor.clear.cgColor
            shapeLayer.lineWidth = 15
            shapeLayer.path = path.cgPath

            // Fill Path After Drawing
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.1) {
                shapeLayer.fillColor = UIColor.red.cgColor
                
            }
            
            // animate it
            self.view.layer.addSublayer(shapeLayer)
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.fromValue = 0
            animation.duration = 3
            shapeLayer.add(animation, forKey: "MyAnimation")
            
        }
        
        let centerPath = UIBezierPath()
        // start
        centerPath.move(to: CGPoint(x: 125, y: 300))
        // beginning point
        centerPath.addLine(to: CGPoint(x: 125, y: 300))
        centerPath.addLine(to: CGPoint(x: 195, y: 200))
        centerPath.addLine(to: CGPoint(x: 205, y: 200))
        centerPath.addLine(to: CGPoint(x: 275, y: 300))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
            
            // Create Center Shape
            let centerShapeLayer = CAShapeLayer()
            centerShapeLayer.lineJoin = CAShapeLayerLineJoin.round
            centerShapeLayer.strokeColor = UIColor.white.cgColor
            centerShapeLayer.fillColor = UIColor.clear.cgColor
            centerShapeLayer.borderColor = UIColor.white.cgColor
            centerShapeLayer.borderWidth = 5
            centerShapeLayer.lineWidth = 30
            centerShapeLayer.path = centerPath.cgPath

            // Animate Shape
            self.view.layer.addSublayer(centerShapeLayer)
            let centerAnimation = CABasicAnimation(keyPath: "strokeEnd")
            centerAnimation.fromValue = 0
            centerAnimation.duration = 2.0
            centerShapeLayer.add(centerAnimation, forKey: "MyAnimation")
        }
        
    }
    
    @objc func resetAnimation(sender: UIButton!) {
        
        // Disable Reset Button
        self.disableResetButton()
        
        // Enable Start Button
        self.enableStartButton()
        
        // Create Reset Path
        let centerPath = UIBezierPath()
        // start
        centerPath.move(to: CGPoint(x: 125, y: 300))
        // beginning point
        centerPath.addLine(to: CGPoint(x: 125, y: 300))
        // top right
        centerPath.addLine(to: CGPoint(x: 195, y: 200))
        centerPath.addLine(to: CGPoint(x: 205, y: 200))
        centerPath.addLine(to: CGPoint(x: 275, y: 300))

        DispatchQueue.main.asyncAfter(deadline: .now()) {
            
            // create shape layer for that path
            let centerShapeLayer = CAShapeLayer()
            centerShapeLayer.lineJoin = CAShapeLayerLineJoin.round
            centerShapeLayer.strokeColor = UIColor.red.cgColor
            centerShapeLayer.fillColor = UIColor.clear.cgColor
            centerShapeLayer.borderColor = UIColor.white.cgColor
            centerShapeLayer.borderWidth = 5
            centerShapeLayer.lineWidth = 30
            centerShapeLayer.path = centerPath.cgPath

            // animate it
            self.view.layer.addSublayer(centerShapeLayer)
            let centerAnimation = CABasicAnimation(keyPath: "strokeEnd")
            centerAnimation.fromValue = 0
            centerAnimation.duration = 2.0
            centerShapeLayer.add(centerAnimation, forKey: "MyAnimation")
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            
            // create path type
            let path = UIBezierPath()
            // start
            path.move(to: CGPoint(x: 45, y: 100))
            // beginning point
            
            path.addLine(to: CGPoint(x: 45, y: 100))
            // top right
            path.addLine(to: CGPoint(x: 350, y: 100))
            // middle right
            path.addLine(to: CGPoint(x: 350, y: 350))
            // bottom center
            path.addLine(to: CGPoint(x: 200, y: 450))
            // middle left
            path.addLine(to: CGPoint(x: 50, y: 350))
            //top left
            path.addLine(to: CGPoint(x: 50, y: 100))
            // top right (to finish line)
            path.addLine(to: CGPoint(x: 350, y: 100))

            // create shape layer for that path
            let shapeLayer = CAShapeLayer()
            shapeLayer.lineJoin = CAShapeLayerLineJoin.round
            shapeLayer.lineCap = CAShapeLayerLineCap.round
            shapeLayer.strokeColor = UIColor.white.cgColor
            shapeLayer.fillColor = UIColor.red.cgColor
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.9) {
                shapeLayer.fillColor = UIColor.white.cgColor
            }
            shapeLayer.lineWidth = 20
            shapeLayer.path = path.cgPath

            // animate it
            self.view.layer.addSublayer(shapeLayer)
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.fromValue = 0
            animation.duration = 3
            shapeLayer.add(animation, forKey: "MyAnimation")
            
        }

        
    }
    
    // Disable Start Button
    func disableStartButton() {
        startButton.isEnabled = false
        startButton.alpha = 0.5
    }
    
    // Enable Start Button
    func enableStartButton() {
        startButton.isEnabled = true
        startButton.alpha = 1.0
    }
    
    // Disable Reset Button
    func disableResetButton() {
        resetButton.isEnabled = false
        resetButton.alpha = 0.5
    }

    // Enable Reset Button
    func enableResetButton () {
        resetButton.isEnabled = true
        resetButton.alpha = 1.0
    }

}

