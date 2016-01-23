//
//  ViewController.swift
//  tip-app
//
//  Created by Zach Cole on 1/22/16.
//  Copyright © 2016 Zach Cole. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var peopleControl: UISegmentedControl!
    @IBOutlet weak var perPersonLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        perPersonLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onBillChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var peopleNumbers = [1.0, 2.0, 3.0, 4.0, 5.0]
        var peopleNumber = peopleNumbers[peopleControl.selectedSegmentIndex]
        
        
        var billAmount = NSString(string: BillField.text!).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        var perPersonTotal = total / peopleNumber
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        perPersonLabel.text = String(format: "$%.2f", perPersonTotal)
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
        
    }
}

