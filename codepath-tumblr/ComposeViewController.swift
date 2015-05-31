//
//  ComposeViewController.swift
//  codepath-tumblr
//
//  Created by Patrick Dugan on 5/31/15.
//  Copyright (c) 2015 dailydoog. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var nevermindButton: UIButton!
    
    // Set UI colors
    let mainBgColor = UIColor(red: 50/255, green: 70/255, blue: 94/255, alpha: 0.9)
    let btnBgColor = UIColor(red: 58/255, green: 78/255, blue: 96/255, alpha: 1)
    let btnTextColor = UIColor(red: 115/255, green: 128/255, blue: 137/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainView.alpha = 1
        self.nevermindButton.alpha = 1

        self.mainView.backgroundColor = self.mainBgColor
        self.nevermindButton.backgroundColor = self.btnBgColor
        self.nevermindButton.setTitleColor(self.btnTextColor, forState: UIControlState.Normal)
        
    }

    @IBAction func didPressNevermindButton(sender: AnyObject) {
        self.mainView.alpha = 0
        self.nevermindButton.alpha = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
