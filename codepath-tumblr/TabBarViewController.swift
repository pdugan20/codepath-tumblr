//
//  TabBarViewController.swift
//  codepath-tumblr
//
//  Created by Patrick Dugan on 5/30/15.
//  Copyright (c) 2015 dailydoog. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    // Tab-bar background color
    let tabBarBgColor = UIColor(red: 50/255, green: 65/255, blue: 85/255, alpha: 1)
    
    // Selected button assets
    let homeSelectedIcon = UIImage(named: "home_selected_icon") as UIImage?
    let searchSelectedIcon = UIImage(named: "search_selected_icon") as UIImage?
    let accountSelectedIcon = UIImage(named: "account_selected_icon") as UIImage?
    let trendingSelectedIcon = UIImage(named: "trending_selected_icon") as UIImage?
    
    // Default button assets
    let homeIcon = UIImage(named: "home_icon") as UIImage?
    let searchIcon = UIImage(named: "search_icon") as UIImage?
    let accountIcon = UIImage(named: "account_icon") as UIImage?
    let trendingIcon = UIImage(named: "trending_icon") as UIImage?
    
    // Tab-bar buttons
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!

    // Main UIViews
    @IBOutlet weak var tabBarView: UIView!
    @IBOutlet weak var contentView: UIView!
    
    // Main ViewControllers
    var homeViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarView.backgroundColor = self.tabBarBgColor
        homeButton.setBackgroundImage(homeSelectedIcon, forState: UIControlState.Normal)
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as! UIViewController
        
        addChildViewController(homeViewController)
        homeViewController.view.frame = contentView.bounds
        contentView.addSubview(homeViewController.view)
    }
    
    @IBAction func didPressHomeButton(sender: UIButton) {
        resetTabBar()
        sender.setBackgroundImage(homeSelectedIcon, forState: UIControlState.Normal)
    }

    
    @IBAction func didPressSearchButton(sender: UIButton) {
        resetTabBar()
        sender.setBackgroundImage(searchSelectedIcon, forState: UIControlState.Normal)
    }
    
    @IBAction func didPressAccountButton(sender: UIButton) {
        resetTabBar()
        sender.setBackgroundImage(accountSelectedIcon, forState: UIControlState.Normal)
    }
    
    @IBAction func didPressTrendingButton(sender: UIButton) {
        resetTabBar()
        sender.setBackgroundImage(trendingSelectedIcon, forState: UIControlState.Normal)
    }
    
    @IBAction func didPressComposeButton(sender: UIButton) {
    }
    
    // Resets selected states for all tab-bar icons
    func resetTabBar() {
        homeButton.setBackgroundImage(homeIcon, forState: UIControlState.Normal)
        searchButton.setBackgroundImage(searchIcon, forState: UIControlState.Normal)
        accountButton.setBackgroundImage(accountIcon, forState: UIControlState.Normal)
        trendingButton.setBackgroundImage(trendingIcon, forState: UIControlState.Normal)
        
    }
    
    // Sets status bar style to either light or dark (default)
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
