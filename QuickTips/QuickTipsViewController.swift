//
//  QuickTipsViewController.swift
//  QuickTips
//
//  Created by Matthew Chupp on 3/25/15.
//  Copyright (c) 2015 MattChupp. All rights reserved.
//

import UIKit

class QuickTipsViewController: UIViewController {
    
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    
    // load the view from the xib
    override func loadView() {
        NSBundle.mainBundle().loadNibNamed("QuickTipsViewController", owner: self, options: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        billAmount.borderStyle = UITextBorderStyle.None
        
        billAmount.becomeFirstResponder()
        tipAmount.text = "$0.00"
        totalAmount.text = "$0.00"
        
    }
        
    @IBAction func tipAmountSelected(sender: UISegmentedControl) {
   
        var tipValues = [0.18, 0.20, 0.22]
        var billString = billAmount.text
        var billDouble = Double((billString as NSString).doubleValue)
        var tip = billDouble * tipValues[tipPercentage.selectedSegmentIndex]
        var total = billDouble + tip
        
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
        
    }
    

}
