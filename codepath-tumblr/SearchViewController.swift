//
//  SearchViewController.swift
//  codepath-tumblr
//
//  Created by Patrick Dugan on 5/31/15.
//  Copyright (c) 2015 dailydoog. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet weak var loadingView: UIView!
    @IBOutlet weak var feedView: UIView!
    @IBOutlet weak var loadingImage: UIImageView!
    
    // Set UI colors
    let mainBgColor = UIColor(red: 50/255, green: 70/255, blue: 94/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Manually set background + label color of nevermind button
        self.mainView.backgroundColor = self.mainBgColor

        feedView.hidden = true
        var images = UIImage.animatedImageNamed("loading-", duration: 0.7)
        loadingImage.image = images
        
        delay(2, { () -> () in
            self.feedView.hidden = false
            self.loadingView.hidden = true
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
