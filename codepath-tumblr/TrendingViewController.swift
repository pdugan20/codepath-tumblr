//
//  TrendingViewController.swift
//  codepath-tumblr
//
//  Created by Patrick Dugan on 5/31/15.
//  Copyright (c) 2015 dailydoog. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {

    @IBOutlet weak var trendingScrollView: UIScrollView!
    @IBOutlet weak var trendingImageView: UIImageView!
    @IBOutlet var feedView: UIView!
    
    // Set UI colors
    let mainBgColor = UIColor(red: 50/255, green: 70/255, blue: 94/255, alpha: 0.9)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.feedView.backgroundColor = self.mainBgColor
        trendingScrollView.contentSize = CGSize(width: 320, height: 1000)
        trendingScrollView.contentSize = trendingImageView.image!.size
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
