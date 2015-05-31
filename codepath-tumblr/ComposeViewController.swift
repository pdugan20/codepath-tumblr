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
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var nevermindButton: UIButton!
    
    // Offscreen y position
    var offScreenOffset = CGFloat(650)
    
    // Set UI colors
    let mainBgColor = UIColor(red: 50/255, green: 70/255, blue: 94/255, alpha: 0.9)
    let btnBgColor = UIColor(red: 58/255, green: 78/255, blue: 96/255, alpha: 1)
    let btnTextColor = UIColor(red: 115/255, green: 128/255, blue: 137/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Toggle both views as visible
        self.mainView.alpha = 1
        self.nevermindButton.alpha = 1

        // Manually set background + label color of nevermind button
        self.mainView.backgroundColor = self.mainBgColor
        self.nevermindButton.backgroundColor = self.btnBgColor
        self.nevermindButton.setTitleColor(self.btnTextColor, forState: UIControlState.Normal)
        
        // Position all buttons offscreen
        textButton.center.y = offScreenOffset
        photoButton.center.y = offScreenOffset
        quoteButton.center.y = offScreenOffset
        linkButton.center.y = offScreenOffset
        chatButton.center.y = offScreenOffset
        videoButton.center.y = offScreenOffset
        
    }
    
    override func viewDidAppear (animated: Bool) {
        // Animate textButton
        UIView.animateWithDuration(0.4, delay: 0.05, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6, options: nil, animations: { () -> Void in
            self.textButton.center.y = 212
            }) { (Bool) -> Void in
                // Do something
        }
        // Animate photoButton
        UIView.animateWithDuration(0.4, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6, options: nil, animations: { () -> Void in
            self.photoButton.center.y = 212
            }) { (Bool) -> Void in
                // Do something
        }
        // Animate quoteButton
        UIView.animateWithDuration(0.4, delay: 0.1, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6, options: nil, animations: { () -> Void in
            self.quoteButton.center.y = 212
            }) { (Bool) -> Void in
                // Do something
        }
        // Animate linkButton
        UIView.animateWithDuration(0.4, delay: 0.2, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6, options: nil, animations: { () -> Void in
            self.linkButton.center.y = 332
            }) { (Bool) -> Void in
                // Do something
        }
        // Animate chatButton
        UIView.animateWithDuration(0.4, delay: 0.15, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6, options: nil, animations: { () -> Void in
            self.chatButton.center.y = 332
            }) { (Bool) -> Void in
                // Do something
        }
        // Animate videoButton
        UIView.animateWithDuration(0.4, delay: 0.25, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6, options: nil, animations: { () -> Void in
            self.videoButton.center.y = 332
            }) { (Bool) -> Void in
                // Do something
        }
        
    }
    
    override func viewWillDisappear (animated: Bool) {
        // Do something
    }
    
    override func viewDidDisappear (animated: Bool) {
        // Do something
    }

    @IBAction func didPressNevermindButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        // Animate textButton
        UIView.animateWithDuration(0.4, delay: 0.05, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
            self.textButton.center.y = -75
            }) { (Bool) -> Void in
                // Do something
        }
        // Animate photoButton
        UIView.animateWithDuration(0.4, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
            self.photoButton.center.y = -75
            }) { (Bool) -> Void in
                // Do something
        }
        // Animate quoteButton
        UIView.animateWithDuration(0.4, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
            self.quoteButton.center.y = -75
            }) { (Bool) -> Void in
                // Do something
        }
        // Animate linkButton
        UIView.animateWithDuration(0.4, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
            self.linkButton.center.y = -75
            }) { (Bool) -> Void in
                // Do something
        }
        // Animate chatButton
        UIView.animateWithDuration(0.4, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
            self.chatButton.center.y = -75
            }) { (Bool) -> Void in
                // Do something
        }
        // Animate videoButton
        UIView.animateWithDuration(0.4, delay: 0.25, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
            self.videoButton.center.y = -75
            }) { (Bool) -> Void in
                // Do something
        }
        // Fade both UIViews into transparent alphas
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            self.nevermindButton.alpha = 0
            self.mainView.alpha = 0
            }) { (Bool) -> Void in
                // Do something
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
