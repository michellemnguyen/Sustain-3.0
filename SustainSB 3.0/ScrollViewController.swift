//
//  ScrollViewController.swift
//  SustainSB 3.0
//
//  Created by Michelle Nguyen on 1/19/20.
//  Copyright © 2020 Michelle Nguyen. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    
    @IBOutlet weak var ScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(ScrollView)
    }

    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
        ScrollView.contentSize = CGSize(width: 375, height: 1300)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
