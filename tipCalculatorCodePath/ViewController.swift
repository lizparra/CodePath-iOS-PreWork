//
//  ViewController.swift
//  tipCalculatorCodePath
//
//  Created by Liz Parra on 5/23/20.
//  Copyright © 2020 Liz Parra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var tipEachLabel: UILabel!
    @IBOutlet weak var totalEachLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var peopleControl: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let people = Int(peopleControl.value)
        let total = bill+tip
        let tipEach = tip/Double(people)
        let totalEach = total/Double(people)
        
        tipLabel.text = String(format: "$%.2f", tip)
        peopleLabel.text = String(people)
        tipEachLabel.text = String(format: "$%.2f", tipEach)
        totalEachLabel.text = String(format: "$%.2f", totalEach)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

