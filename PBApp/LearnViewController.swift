//
//  LearnViewController.swift
//  PBApp
//
//  Created by Hamish Irving on 26/04/2015.
//  Copyright (c) 2015 Hamish Irving. All rights reserved.
//

import UIKit

class LearnViewController: UIViewController {

    @IBOutlet weak var dialogView: DesignableView!
    @IBOutlet weak var bookImageView: SpringImageView!

    
    // The below effectivly replaces the 'autostart' option available in IB with code
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // ViewDidLoad shows the animation too quickly, it is better to use viewDidAppear
    // ViewDidAppear also animates when using back button
    override func viewDidAppear(animated: Bool) {
        // Must always add super view
        super.viewDidAppear(true)
        
    }
    
    // However - ViewDidAppear can be a little slow, so better to use viewWillAppear
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        dialogView.animate()
    }
    
    @IBAction func learnButtonDidTouch(sender: AnyObject) {
        bookImageView.animation = "pop"
        bookImageView.animate()
    }
    
    @IBAction func closeButtonDidTouch(sender: AnyObject) {
        dialogView.animation = "fall"
        dialogView.animateNext {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    
}
