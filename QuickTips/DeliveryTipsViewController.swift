//
//  DeliveryTipsViewController.swift
//  QuickTips
//
//  Created by Matthew Chupp on 3/25/15.
//  Copyright (c) 2015 MattChupp. All rights reserved.
//

import UIKit

class DeliveryTipsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // load the view from the xib
    override func loadView() {
        NSBundle.mainBundle().loadNibNamed("DeliveryTipsViewController", owner: self, options: nil)
    }
    

}
