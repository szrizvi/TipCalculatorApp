//
//  ViewController.swift
//  Prework
//
//  Created by Zainab Rizvi on 15/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", total)
        totalLabel.text = String(format: "$%.2f", tip)
    }
    
}

