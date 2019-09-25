//
//  ViewController.swift
//  DrawLambdaLogo
//
//  Created by Eoin Lavery on 25/09/2019.
//  Copyright © 2019 Eoin Lavery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Properties
    let drawingView = LogoDrawingView()
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDrawingView()
    }

    func configureDrawingView() {
        view.addSubview(drawingView)
        drawingView.translatesAutoresizingMaskIntoConstraints = false
        drawingView.backgroundColor = .white
        NSLayoutConstraint.activate([
            drawingView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            drawingView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            drawingView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.9),
            drawingView.heightAnchor.constraint(equalToConstant: view.frame.width * 0.9)
        ])
    }

}

