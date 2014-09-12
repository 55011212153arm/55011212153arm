//
//  ViewController.swift
//  TipCalculator
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tipClc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    
    func refreshUI(){
        totalTextField.text = String(format: "%0.2f", tipClc.total)
        taxPctSlider.value = Float(tipClc.taxPct) * 100.0
        taxPctLabel.text = "Tax Percentage(\(Int(taxPctSlider.value))%)"
        resultsTextVieaw.text = " "
    }
                            
    @IBOutlet weak var totalTextField: UITextField!
    @IBOutlet weak var taxPctSlider: UISlider!
    @IBOutlet weak var taxPctLabel: UILabel!
    @IBOutlet weak var resultsTextVieaw: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculateTapped(sender: AnyObject) {
        tipClc.total = Double((totalTextField.text as NSString).doubleValue)
        let possivleTips = tipClc.returnPossibleTips()
        var results = ""
        for (tipPct , tipValue) in possivleTips {
            results += "\(tipPct)%: \(tipValue)\n"
        }
        resultsTextVieaw.text = results
    }
    @IBAction func taxPercentageChange(sender: AnyObject) {
        tipClc.taxPct = Double(taxPctSlider.value) / 100.0
        refreshUI()
    }
    @IBAction func viewTapped(sender : AnyObject){
        totalTextField.resignFirstResponder()
    
    }

}

