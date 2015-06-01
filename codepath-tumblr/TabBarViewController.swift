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
    @IBOutlet weak var explorePopup: UIImageView!
    
    // Main Storyboard
    var tumblrStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    // Popup toggle
    var popUpGlobalToggle: Bool!

    // Main UIViews
    @IBOutlet weak var tabBarView: UIView!
    @IBOutlet weak var contentView: UIView!
    
    // Main ViewControllers
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var composeViewController: UIViewController!
    var currentViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarView.backgroundColor = self.tabBarBgColor
        homeButton.setBackgroundImage(homeSelectedIcon, forState: UIControlState.Normal)
        
        homeViewController = tumblrStoryboard.instantiateViewControllerWithIdentifier("HomeViewController") as UIViewController
        
        addChildViewController(homeViewController)
        homeViewController.view.frame = contentView.bounds
        contentView.addSubview(homeViewController.view)
        currentViewController = homeViewController
        
        self.popUpGlobalToggle = true
        UIView.animateWithDuration(2, delay: 0, options: UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat | UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.explorePopup.center.y = 492
            }) { (Bool) -> Void in
                // Do something
        }
        
    }
    
    @IBAction func didPressHomeButton(sender: UIButton) {
        resetTabBar()
        sender.setBackgroundImage(homeSelectedIcon, forState: UIControlState.Normal)
        
        homeViewController = tumblrStoryboard.instantiateViewControllerWithIdentifier("HomeViewController") as UIViewController
        
        removeChildView(currentViewController)
        addChildViewController(homeViewController)
        homeViewController.view.frame = contentView.bounds
        contentView.addSubview(homeViewController.view)
        homeViewController.didMoveToParentViewController(self)
        currentViewController = homeViewController
    }

    
    @IBAction func didPressSearchButton(sender: UIButton) {
        resetTabBar()
        sender.setBackgroundImage(searchSelectedIcon, forState: UIControlState.Normal)
        
        searchViewController = tumblrStoryboard.instantiateViewControllerWithIdentifier("SearchViewController") as UIViewController
        
        removeChildView(currentViewController)
        addChildViewController(searchViewController)
        searchViewController.view.frame = contentView.bounds
        contentView.addSubview(searchViewController.view)
        searchViewController.didMoveToParentViewController(self)
        currentViewController = searchViewController
        
        delay(2, { () -> () in
            self.explorePopup.hidden = true
            self.popUpGlobalToggle = false
        })
        
    }
    
    @IBAction func didPressAccountButton(sender: UIButton) {
        resetTabBar()
        sender.setBackgroundImage(accountSelectedIcon, forState: UIControlState.Normal)
        
        accountViewController = tumblrStoryboard.instantiateViewControllerWithIdentifier("AccountViewController") as UIViewController
        
        removeChildView(currentViewController)
        addChildViewController(accountViewController)
        accountViewController.view.frame = contentView.bounds
        contentView.addSubview(accountViewController.view)
        accountViewController.didMoveToParentViewController(self)
        currentViewController = accountViewController
    }
    
    @IBAction func didPressTrendingButton(sender: UIButton) {
        resetTabBar()
        sender.setBackgroundImage(trendingSelectedIcon, forState: UIControlState.Normal)
        
        trendingViewController = tumblrStoryboard.instantiateViewControllerWithIdentifier("TrendingViewController") as UIViewController
        
        removeChildView(currentViewController)
        addChildViewController(trendingViewController)
        trendingViewController.view.frame = contentView.bounds
        contentView.addSubview(trendingViewController.view)
        trendingViewController.didMoveToParentViewController(self)
        currentViewController = trendingViewController
    }
    
    @IBAction func didPressComposeButton(sender: UIButton) {
        composeViewController = tumblrStoryboard.instantiateViewControllerWithIdentifier("ComposeViewController") as UIViewController
        
        // removeChildView(currentViewController)
        addChildViewController(composeViewController)
        composeViewController.view.frame = contentView.bounds
        contentView.addSubview(composeViewController.view)
        composeViewController.didMoveToParentViewController(self)
        // currentViewController = composeViewController
        
        if popUpGlobalToggle == true {
            self.explorePopup.hidden = true
        }
    }
    
    // Resets selected states for all tab-bar icons
    func resetTabBar() {
        homeButton.setBackgroundImage(homeIcon, forState: UIControlState.Normal)
        searchButton.setBackgroundImage(searchIcon, forState: UIControlState.Normal)
        accountButton.setBackgroundImage(accountIcon, forState: UIControlState.Normal)
        trendingButton.setBackgroundImage(trendingIcon, forState: UIControlState.Normal)
        
    }
    
    // Remove child UIView
    func removeChildView (content: UIViewController) {
        content.willMoveToParentViewController(nil)
        content.view.removeFromSuperview()
        content.removeFromParentViewController()
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
