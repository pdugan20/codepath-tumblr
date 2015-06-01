//
//  HomeViewController.swift
//  codepath-tumblr
//
//  Created by Patrick Dugan on 5/30/15.
//  Copyright (c) 2015 dailydoog. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do something
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var destinationViewController = segue.destinationViewController as LoginViewController
        fadeTransition = FadeTransition()
        fadeTransition.duration = 0.3
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        destinationViewController.transitioningDelegate = fadeTransition
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
