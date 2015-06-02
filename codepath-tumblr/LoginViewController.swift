//
//  LoginViewController.swift
//  codepath-tumblr
//
//  Created by Patrick Dugan on 5/31/15.
//  Copyright (c) 2015 dailydoog. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    
    let mainBgColor = UIColor(red: 50/255, green: 70/255, blue: 94/255, alpha: 0.9)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainView.backgroundColor = self.mainBgColor
        mainView.alpha = 0.9
        emailTextField.becomeFirstResponder()
    }
    
    @IBAction func onPressCancelButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Sets status bar style to either light or dark (default)
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

}
