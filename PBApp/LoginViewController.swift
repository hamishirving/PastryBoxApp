//
//  LoginViewController.swift
//  PBApp
//
//  Created by Hamish Irving on 25/04/2015.
//  Copyright (c) 2015 Hamish Irving. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var dialogView: DesignableView!
    
    @IBAction func loginButtonDidTouch(sender: AnyObject) {
        dialogView.animation = "shake"
        dialogView.animate()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do something
    }


}
