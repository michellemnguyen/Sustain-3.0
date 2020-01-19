//
//  ViewController.swift
//  SustainSB 3.0
//
//  Created by Michelle Nguyen on 1/19/20.
//  Copyright © 2020 Michelle Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    var menuOut = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func menuTapped(_ sender: Any) {
        
        if !menuOut {
            leading.constant = 300
            trailing.constant = -300
            menuOut = true;
        } else {
            leading.constant = 0
            trailing.constant = 0
            menuOut = false;
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseInOut, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            print("The animation is complete!")
        }
    }
    
}

