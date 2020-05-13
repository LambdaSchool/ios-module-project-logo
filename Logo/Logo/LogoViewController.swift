//
//  LogoViewController.swift
//  Logo
//
//  Created by Nonye on 5/13/20.
//  Copyright © 2020 Nonye Ezekwo. All rights reserved.
//

import UIKit

@IBDesignable
class LogoViewController: UIViewController {

    @IBOutlet weak var logoView: LogoView!
    
    @IBOutlet weak var innerLogoView: LogoCircleTwoView!
    @IBOutlet weak var innerLogoTwoView: LogoCircleThreeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
