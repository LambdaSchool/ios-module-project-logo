//
//  LogoViewController.swift
//  LogoView
//
//  Created by Chad Rutherford on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import SwiftUI
import UIKit

class LogoViewController: UIViewController {
    
    let logoView: LogoCustomView = {
        let lv = LogoCustomView()
        lv.translatesAutoresizingMaskIntoConstraints = false
        lv.backgroundColor = .black
        return lv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
    }
    
    private func setupSubViews() {
        view.addSubview(logoView)
        logoView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        logoView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        logoView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        logoView.heightAnchor.constraint(equalTo: logoView.widthAnchor, multiplier: 1).isActive = true
    }
}


struct LogoViewControllerPreview: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        func updateUIViewController(_ uiViewController: LogoViewControllerPreview.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<LogoViewControllerPreview.ContainerView>) {
            
        }
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<LogoViewControllerPreview.ContainerView>) -> UIViewController {
            return LogoViewController()
        }
    }
}
